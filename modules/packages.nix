{ config, pkgs, ... }:

{
  # List packages installed in system profile.
  # You can use https://search.nixos.org/ to find more packages (and options).
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    brave
    fastfetch
    prelink
    patchelf
    tldr
    vscodium
    nixd
    lutris
    p7zip-rar
    rarcrack
    jdk21
    gcc
    xclip
    direnv
    clang-tools
    
    # Had a stroke trying get c libraries manpages working.
    # This is what made them work.
    man-pages-posix
    
    #(
    #  vscode-with-extension.override {
    #    vscode = vscodium;
    #    
    #  }
    #)
  ];
}