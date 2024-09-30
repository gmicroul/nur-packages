# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage
# mode:
# - null: Default mode
# - "ci": from Garnix CI
# - "nur": from NUR bot
# - "legacy": from legacyPackages
mode:
{
  pkgs ? import <nixpkgs> { },
  ...
}:
let
  groups = {
    # Binary cache information
    _meta = ./_meta;

    # Package groups
    asteriskDigiumCodecs = ./asterisk-digium-codecs;
    lantianCustomized = ./lantian-customized;
    lantianLinuxXanmod = ./lantian-linux-xanmod;
    lantianLinuxXanmodPackages = ifNotCI ./lantian-linux-xanmod/packages.nix;
    lantianPersonal = ifNotCI ./lantian-personal;
    nvidia-grid = ifNotCI ./nvidia-grid;
    openj9-ibm-semeru = ifNotCI ./openj9-ibm-semeru;
    openjdk-adoptium = ifNotCI ./openjdk-adoptium;
    plangothic-fonts = ./plangothic-fonts;
    th-fonts = ./th-fonts;
    kernel-modules = ./kernel-modules;
    uncategorized = ./uncategorized;
  };

  ################################################################################

  inherit (pkgs.callPackage ../helpers/group.nix { inherit mode; })
    ifNotCI
    doGroupPackages
    doMergePkgs
    ;

  groupPackages = doGroupPackages packages groups;

  packages =
    (builtins.removeAttrs groupPackages [
      "kernel-modules"
      "uncategorized"
    ])
    // groupPackages.kernel-modules
    // groupPackages.uncategorized;
in
doMergePkgs packages
