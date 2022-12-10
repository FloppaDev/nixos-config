
{ pkgs ? import <nixpkgs> {} }:

let
  moz_overlay = import (builtins.fetchTarball 
    https://github.com/mozilla/nixpkgs-mozilla/archive/master.tar.gz);

  nixpkgs = import <nixpkgs> { overlays = [ moz_overlay ]; };
in
  with nixpkgs;

  pkgs.mkShell {
    buildInputs = [
      nixpkgs.latest.rustChannels.stable.rust

      llvmPackages_latest.llvm
      llvmPackages_latest.libclang
      llvmPackages_latest.bintools
      llvmPackages_latest.lld
      cmake 
      pkg-config

      python3 
    ];

    LIBCLANG_PATH = pkgs.lib.makeLibraryPath [ pkgs.llvmPackages_latest.libclang.lib ];
  }
