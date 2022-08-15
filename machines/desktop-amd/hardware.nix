# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usbhid" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/562ea604-57da-4e48-b22c-b9c9eb21cc08";
      fsType = "ext4";
      options = [ "noatime" "nodiratime" "discard" ]; #SSD optimizations
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/1860-5146";
      fsType = "vfat";
      options = [ "noatime" "nodiratime" "discard" ]; #SSD optimizations
    };

  fileSystems."/a" =
    { label = "a";
      options = [ "noatime" "nodiratime" "discard" ]; #SSD optimizations
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/3273b96a-6924-4741-86cd-99e63b418740"; }
    ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp37s0.useDHCP = lib.mkDefault true;

  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
