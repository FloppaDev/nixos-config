
{ config, pkgs, ... }:

{
  imports =
    [ 
      ./machines/desktop-amd/machine.nix
    ];
}

