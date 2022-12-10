
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
      radeontop #Gpu info

      discord
      firefox-esr #Lts firefox

      haruna #Media player
      yt-dlp-light #Youtube download (ffmpeg dependency)
      ffmpeg-full

      lutris
      retroarchFull

      unityhub
      blender
      krita
      libreoffice

      xorg.xmodmap #Maps compose key

      filezilla
    ];

}
