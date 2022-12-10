
{ config, pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;
  };

  imports = 
    [
      ../../packages/i3.nix
      ../../packages/tty_utils.nix
      ../../apps/steam.nix
    ];

    environment.systemPackages = with pkgs; [
      steam-run #Steam runtime (not steam)

      discord
      firefox-esr #Lts firefox

      radeontop #Gpu info
      clinfo #OpenCL info
      vdpauinfo #Video info
      libva-utils #Video info etc. (vainfo)
      usbutils

      haruna #Media player
      yt-dlp-light #Youtube download (ffmpeg dependency)
      ffmpeg-full

      lutris
      retroarchFull

      unityhub
      blender

      xorg.xmodmap #Maps compose key
      xorg.xev #X11 events viewer

      libreoffice

      krita

      filezilla
    ];

}
