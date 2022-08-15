
# Terminal utils.

{ config, pkgs, ... }:

{
  imports = 
    [

    ];

  environment.systemPackages = with pkgs; [
    wget
    git
    neofetch
    btop
    nnn #File manager
    tree
    ponysay
    p7zip
  ];
}
