
# Gui file manager.

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    xfce.thunar
    xfce.tumbler
  ];
}
