path="/etc/nixos"

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
    cp -fr ./* ${path}
}

rebuild() {
    # nixos-rebuild switch -f ${path}/configuration.nix
    nixos-rebuild switch --upgrade
}

cprb() {
    copy
    rebuild
}

if [[ $# == 0 ]]; then
    echo "Moving and rebuilding system from ${path}"
    confirmation
    cprb
elif [[ $1 == "-p" ]]; then
    echo "This option is currently disabled because of errors right now not understood"
    # if [[ $# -lt 2 ]]; then
    #     echo "Provide path after -p option."
    # else
    #     path=$2;
    #     echo "Moving and rebuilding system from ${path}"
    #     confirmation
    #     cprb
    # fi
fi
