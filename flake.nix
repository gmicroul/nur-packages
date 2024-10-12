{
  description = "My personal NUR repository";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-22_11.url = "github:NixOS/nixpkgs/nixos-22.11";
    flake-parts.url = "github:gmicroul/nur-packages/;

    nix-index-database = {
      url = "github:nix-community/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvfetcher = {
      url = "github:berberman/nvfetcher";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    pre-commit-hooks-nix = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # ptrs
    LaphaeL-aicmd = {
      url = "github:DataEraserC/LaphaeL-aicmd";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs =
    { self, flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } (
      { flake-parts-lib, config, ... }:
      let
        inherit (flake-parts-lib) importApply;
        flakeModules = {
          auto-apps-shell = ./flake-modules/auto-apps-shell.nix;
          auto-colmena-hive = ./flake-modules/auto-colmena-hive.nix;
          commands = ./flake-modules/commands.nix;
          lantian-pre-commit-hooks = importApply ./flake-modules/lantian-pre-commit-hooks.nix {
            inherit (inputs) pre-commit-hooks-nix;
          };
          lantian-treefmt = importApply ./flake-modules/lantian-treefmt.nix { inherit (inputs) treefmt-nix; };
          nixpkgs-options = ./flake-modules/nixpkgs-options.nix;
        };

        pkgsForSystem-22_11 =
          system:
          import inputs.nixpkgs-22_11 {
            inherit system;
            config = {
              inherit (config.nixpkgs-options) allowUnfree;
              inherit (config.nixpkgs-options) permittedInsecurePackages;
            };
          };
      in
      rec {
        imports = [
          ./flake-modules/_internal/ci-outputs.nix
          ./flake-modules/_internal/commands.nix
          ./flake-modules/_internal/meta.nix
          ./flake-modules/_internal/modules-test-nixos-config.nix
          flakeModules.commands
          flakeModules.lantian-pre-commit-hooks
          flakeModules.lantian-treefmt
          flakeModules.nixpkgs-options
        ];

        systems = [
          "x86_64-linux"
          "aarch64-linux"
        ];

        flake = {
          overlay = self.overlays.default;
          overlays =
            {
              default =
                final: prev:
                import ./pkgs null {
                  pkgs = prev;
                  pkgs-22_11 = pkgsForSystem-22_11 final.system;
                  inherit inputs;
                };
              inSubTree = final: prev: {
                nur-xddxdd = import ./pkgs null {
                  pkgs = prev;
                  pkgs-22_11 = pkgsForSystem-22_11 final.system;
                  inherit inputs;
                };
              };
              inSubTree-pinnedNixpkgs = final: _prev: {
                nur-xddxdd = self.legacyPackages.${final.system};
              };
            }
            // (builtins.listToAttrs (
            //  builtins.map (s: {
            //    name = "pinnedNixpkgs.${s}";
            //    value = _final: _prev: self.legacyPackages.${s};
            //  }) systems
            //));

          inherit flakeModules;

          nixosModules = {
            setupOverlay = _: { nixpkgs.overlays = [ self.overlays.default ]; };
            kata-containers = import ./modules/kata-containers.nix;
            lyrica = import ./modules/lyrica.nix;
            nix-cache-attic = import ./modules/nix-cache-attic.nix;
            nix-cache-cachix = import ./modules/nix-cache-cachix.nix;
            nix-cache-garnix = import ./modules/nix-cache-garnix.nix;
            openssl-oqs-provider = import ./modules/openssl-oqs-provider.nix;
            qemu-user-static-binfmt = import ./modules/qemu-user-static-binfmt.nix;
            wireguard-remove-lingering-links = import ./modules/wireguard-remove-lingering-links.nix;
          };
        };

        nixpkgs-options.pkgs = {
          sourceInput = inputs.nixpkgs;
          permittedInsecurePackages = [
            "electron-11.5.0"
            "electron-19.1.9"
            "openssl-1.1.1w"
            "python-2.7.18.7"
          ];
        };

        perSystem =
          { pkgs, system, ... }:
          let
            ptr = {
             # // LaphaeL-aicmd = inputs.LaphaeL-aicmd.packages.${pkgs.system}.laphael_aicmd;
            };
          in
          {
            packages =
              import ./pkgs null {
                inherit inputs pkgs;
                pkgs-22_11 = pkgsForSystem-22_11 system;
              }
              // ptr;
            legacyPackages =
              import ./pkgs uncategorized-DataErase {
                inherit inputs pkgs;
                pkgs-22_11 = pkgsForSystem-22_11 system;
              }
              // ptr;
          };
      }
    );
}
