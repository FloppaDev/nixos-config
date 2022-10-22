
{ config, pkgs, ... }:

{
  users.users.floppa = {
    isNormalUser = true;
    extraGroups = [ "wheel" "audio" ];
  };

  time.hardwareClockInLocalTime = true;

  networking.hostName = "floppa";
  networking.useDHCP = false;
  networking.interfaces.enp37s0.useDHCP = true;

  time.timeZone = "Europe/Paris";
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };

  hardware.opengl.driSupport = true;
  hardware.opengl.driSupport32Bit = true;

  hardware.opengl.extraPackages = with pkgs; [
     rocm-opencl-icd
     rocm-opencl-runtime
     amdvlk
  ];

  sound.enable = true;
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.support32Bit = true;

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  services.printing.enable = true;
  services.printing.drivers = [];

  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "amdgpu" ];
  services.xserver.layout = "us";

  services.xserver.resolutions = [
    { x = 1920; y = 1080; }
  ];

  services.xserver.xrandrHeads = [
    "HDMI-A-1"
    {
      output = "HDMI-A-0";
      primary = true;
    }
  ];

  # /!\ Before changing this value read the documentation!
  system.stateVersion = "22.05";
}
