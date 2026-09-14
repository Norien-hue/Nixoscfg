path="/etc/nixos"
eval=${path}/configuration.nix

confirmation() {
    echo "Are you sure you want to continue? [y/n]"
    read -r ans

    if [[ $ans == "n" || $ans == "N" ]]; then
        echo "Aborting system update"
        exit
    fi
    echo "Proceeding..."
}

copy() {
    cp -f ./* ${path}
}

rebuild() {
    nixos-rebuild --switch -f eval
}

cprb() {
    copy
    rebuild
}

if [[ $# == 0 ]]; then
    echo "Moving and rebuilding system from ${eval}"
    confirmation
    cprb
elif [[ $1 == "-p" ]]; then
    if [[ $# -lt 2 ]]; then
        echo "Provide path after -p option."
    else
        path=$2;
        echo "Moving and rebuilding system from ${eval}"
        confirmation
        cprb
    fi
fi
