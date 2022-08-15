
# X11 Window manager.

{ config, pkgs, ... }:

{
  services.xserver.displayManager.defaultSession = "none+i3";

  services.xserver.windowManager.i3.enable = true;
  #services.xserver.windowManager.i3.configFile = "/home/floppa/.config/i3/i3.conf";
}
