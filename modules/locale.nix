{ config, pkgs, ... }:

let 
  local = "es_ES.UTF-8";
in 
{
  i18n.defaultLocale = local;
  
  i18n.extraLocaleSettings = {
  LC_ADDRESS = local;
  LC_IDENTIFICATION = local;
  LC_MEASUREMENT = local;
  LC_MONETARY = local;
  LC_NAME = local;
  LC_NUMERIC = local;
  LC_PAPER = local;
  LC_TELEPHONE = local;
  LC_TIME = local;
  };
}