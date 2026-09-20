{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    lutris
    p7zip
  ];
}