
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

      firefox
      discord

      haruna #Media player

      rustup
      nodejs
      python38
      gcc
      cmake
      ninja
      jre8

      lutris
      retroarchFull

      unityhub

      xorg.xmodmap #Maps compose key
      xorg.xev #X11 events viewer

      libreoffice

      yt-dlp-light #Youtube download
      ffmpeg #Encoder, optional dependency of yt-dlp-light

      krita

      usbutils

      filezilla
    ];
}
