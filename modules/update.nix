{ config, pkgs, ... }:

{
  # Disable automatic upgrades.
  system.autoUpgrade.enable = false;

  # Disabled automatic reboot needed because of change in kernel/initrd modules.
  system.autoUpgrade.allowReboot = false;
}