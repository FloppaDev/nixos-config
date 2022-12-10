
{ pkgs ? import <nixpkgs> {} }:

with pkgs;

pkgs.mkShell {
  buildInputs = [
    clinfo #OpenCL info
    vdpauinfo #Video info
    libva-utils #Video info etc. (vainfo)
    usbutils
    xorg.xev #X11 events viewer
  ];

}
