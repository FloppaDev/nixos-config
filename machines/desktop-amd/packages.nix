
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
      steam-run #Steam runtime (this is not steam)

      firefox
      discord

      haruna #Video player

      rustup
      nodejs
      python38
      gcc
      cmake
      ninja

      lutris

      unityhub

      xorg.xmodmap
      xorg.xev

      libreoffice

      yt-dlp-light
      ffmpeg

      krita
    ];
}
