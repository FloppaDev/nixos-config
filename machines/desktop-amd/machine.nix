
{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware.nix
      ./boot.nix
      ./system.nix
      ./packages.nix
      ./home.nix
    ];
}

