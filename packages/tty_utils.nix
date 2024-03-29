
# Terminal utils.

{ config, pkgs, ... }:

{
  imports = 
    [

    ];

  environment.systemPackages = with pkgs; [
    wget
    git
    neofetch #Pc specs
    btop #Task manager
    nnn #File manager
    tree #Print directory trees
    ponysay #Pony
    p7zip #7zip
    ugrep
    bintools
    scc #Count lines of code.
  ];
}
