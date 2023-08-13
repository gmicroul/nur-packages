{
  description = "My personal NUR repository";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-utils-plus = {
      url = "github:gytis-ivaskevicius/flake-utils-plus";
      inputs.flake-utils.follows = "flake-utils";
    };
  };
  outputs = {
    self,
    nixpkgs,
    flake-utils,
    flake-utils-plus,
    ...
  } @ inputs: let
    lib = nixpkgs.lib;
  in
    flake-utils-plus.lib.mkFlake {
      inherit self inputs;
      channels.nixpkgs = {
        config = {
          allowUnfree = true;
          # contentAddressedByDefault = true;
        };
        input = inputs.nixpkgs;
      };

      outputsBuilder = channels: let
        pkgs = channels.nixpkgs;
        inherit (pkgs) system;

        isDerivation = p: lib.isAttrs p && p ? type && p.type == "derivation";
        isTargetPlatform = p: lib.elem system (p.meta.platforms or [system]);
        isBuildable = p: !(p.meta.broken or false) && p.meta.license.free or true;
        shouldRecurseForDerivations = p: lib.isAttrs p && p.recurseForDerivations or false;

        flattenPkgs = prefix: s:
          builtins.filter ({
            name ? null,
            value ? null,
          }:
            name != null && value != null) (lib.flatten
            (lib.mapAttrsToList
              (n: p: let
                path =
                  if prefix != ""
                  then "${prefix}-${n}"
                  else n;
              in
                if lib.hasPrefix "_" n
                then []
                else if shouldRecurseForDerivations p
                then flattenPkgs path p
                else if isDerivation p && isTargetPlatform p && isBuildable p
                then [
                  {
                    name = path;
                    value = p;
                  }
                ]
                else [])
              s));

        outputsOf = p: map (o: p.${o}) p.outputs;

        NurCiPackages = import ./pkgs {
          inherit inputs pkgs;
          ci = true;
        };
      in rec {
        packages = import ./pkgs {
          inherit inputs pkgs;
          ci = false;
        };

        ciPackages = builtins.listToAttrs (flattenPkgs "" NurCiPackages);

        ciExports = lib.mapAttrsToList (_: outputsOf) ciPackages;

        formatter = pkgs.alejandra;

        apps =
          lib.mapAttrs
          (n: v:
            flake-utils.lib.mkApp {
              drv = pkgs.writeShellScriptBin "script" v;
            })
          rec {
            ci = ''
              set -euo pipefail
              if [ "$1" == "" ]; then
                echo "Usage: ci <system>";
                exit 1;
              fi

              # Workaround https://github.com/NixOS/nix/issues/6572
              for i in {1..3}; do
                ${pkgs.nix-build-uncached}/bin/nix-build-uncached ci.nix -A $1 --show-trace && exit 0
              done

              exit 1
            '';

            nvfetcher = ''
              set -euo pipefail
              [ -f "$HOME/Secrets/nvfetcher.toml" ] && KEY_FLAG="-k $HOME/Secrets/nvfetcher.toml" || KEY_FLAG=""
              export PATH=${pkgs.nix-prefetch-scripts}/bin:$PATH
              ${pkgs.nvfetcher}/bin/nvfetcher $KEY_FLAG -c nvfetcher.toml -o _sources "$@"
              ${readme}
            '';

            readme = ''
              set -euo pipefail
              nix build .#_meta.readme
              cat result > README.md
            '';

            update = let
              py = pkgs.python3.withPackages (p: with p; [requests]);
            in ''
              set -euo pipefail
              nix flake update
              ${nvfetcher}
              ${py}/bin/python3 pkgs/asterisk-digium-codecs/update.py
              ${py}/bin/python3 pkgs/openj9-ibm-semeru/update.py
              ${py}/bin/python3 pkgs/openjdk-adoptium/update.py
              ${readme}
            '';
          };
      };

      overlay = self.overlays.default;
      overlays = {
        default = final: prev:
          import ./pkgs {
            pkgs = prev;
            inherit inputs;
          };
      };

      nixosModules = {
        setupOverlay = {config, ...}: {
          nixpkgs.overlays = [
            self.overlays.default
          ];
        };
        kata-containers = import ./modules/kata-containers.nix;
        openssl-oqs-provider = import ./modules/openssl-oqs-provider.nix;
        qemu-user-static-binfmt = import ./modules/qemu-user-static-binfmt.nix;
      };
    };
}
