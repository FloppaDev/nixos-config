# Nixos config

My configuration for [Nixos](https://nixos.org/) along with the dotfiles.

## Usage

Clone wherever and create symlinks into /etc/nixos:

```
git clone https://github.com/FloppaDev/nixos-config.git

# Generate a new hardware config if necessary:
nixos-generate-config
rm /etc/nixos/configuration.nix
mv /etc/nixos/hardware-configuration.nix nixos-config/machines/desktop-amd/hardware.nix

# Symlink the repo and the relevant config file:
cd nixos-config
ln -s $(pwd) /etc/nixos/
ln -s $(pwd)/hosts/amd-desktop/configuration.nix /etc/nixos/
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

