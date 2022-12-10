
{ config, pkgs, ... }:

let home-manager = 
  builtins.fetchTarball 
  "https://github.com/nix-community/home-manager/archive/release-22.05.tar.gz";
in {
  imports = [
    (import "${home-manager}/nixos")
  ];

  home-manager.users.floppa = {
    home.file.".bashrc".source = ../../dotfiles/bash/.bashrc;

    home.file.".config/discord/settings.json".source = ../../dotfiles/discord/settings.json; 

    home.file.".gitconfig".source = ../../dotfiles/git/.gitconfig;

    home.file.".config/i3/config".source = ../../dotfiles/i3/config;
    home.file.".config/i3/tools/move.sh".source = ../../dotfiles/i3/tools/move.sh;
    home.file.".config/i3/tools/switch.sh".source = ../../dotfiles/i3/tools/switch.sh;
    home.file.".config/i3/tools/workspace.sh".source = ../../dotfiles/i3/tools/workspace.sh;

    home.file.".config/kitty/kitty.conf".source = ../../dotfiles/kitty/kitty.conf;
    home.file.".config/kitty/snazzy.conf".source = ../../dotfiles/kitty/snazzy.conf;

    home.file.".config/neofetch/config.conf".source = ../../dotfiles/neofetch/config.conf;

    home.file.".config/nitrogen/bg-saved.cfg".source = ../../dotfiles/nitrogen/bg-saved.cfg;

    home.file.".config/pavucontrol.ini".source = ../../dotfiles/pavucontrol/pavucontrol.ini;

    home.file.".Xmodmap".source = ../../dotfiles/xmodmap/.Xmodmap;

    home.file.".vimrc".source = ../../dotfiles/vim/.vimrc;
  };
}
