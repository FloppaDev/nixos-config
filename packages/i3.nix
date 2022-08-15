
#X11 tiled window manager

{ config, pkgs, ... }:

{
  imports = 
    [
      ../apps/i3.nix #Window manager
      ../apps/picom.nix #X11 compositor
      ../apps/thunar.nix #Gui file manager
    ];

    environment.systemPackages = with pkgs; [
      scrot #Screenshots
      xclip #Image clipboard
      xdotool #X11 tools
      xorg.xkill #Close window with mouse
      pavucontrol #Sound control
      kitty #OpenGl terminal
      vimHugeX #Vim with clipboard support
      nitrogen #Wallpaper
    ];
}
