# Nixos config

My configuration for [Nixos](https://nixos.org/) along with the dotfiles.

## Usage

Clone wherever and create symlinks into /etc/nixos:

```
git clone https://github.com/FloppaDev/nixos-config.git
ln -s $(pwd)/nixos-config /etc/nixos/
ln -s $(pwd)/nixos-config/configuration.nix /etc/nixos/
```

Build config:

```
sudo nixos-rebuild switch
```

## Sources

- NixOs:
  - https://nixos.org/

- Config examples:
  - https://nixos.wiki/wiki/Configuration_Collection
  
- Option list:
  - https://search.nixos.org/options

- Package list:
  - https://search.nixos.org/packages

