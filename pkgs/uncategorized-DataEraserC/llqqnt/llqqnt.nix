#https://github.com/Prismwork/llqqnt-nix/blob/trunk/pkgs/llqqnt.nix
{
  appimageTools,
  buildFHSUserEnv,
  pkg-config,
  qq,
  sources,
  ...
}:
let
  LiteLoaderQQNT_SRC = sources.LiteLoaderQQNT.src;
  fhs =
    # create a fhs environment by command `fhs`, so we can run non-nixos packages in nixos!
    let
      base = appimageTools.defaultFhsEnvArgs;
    in
    buildFHSUserEnv (
      base
      // {
        name = "fhs";
        targetPkgs = pkgs: (base.targetPkgs pkgs) ++ [ pkg-config ];
        profile = "export FHS=1";
        runScript = "bash";
        extraOutputsToInstall = [ "dev" ];
      }
    );
in
(qq.override {
  # can not work and i have no idea
  # inherit commandLineArgs;
}).overrideAttrs
  (
    {
      # nativeBuildInputs ? [ ],
      runtimeDependencies ? [ ],
      # buildInputs ? [ ],
      installPhase,
      version,
      ...
    }:
    {
      pname = "llqqnt";
      version = "${version}_${sources.LiteLoaderQQNT.version}";
      runtimeDependencies = runtimeDependencies ++ [ fhs ];
      installPhase =
        installPhase
        + ''
          makeShellWrapper $out/bin/qq  $out/bin/llqqnt \
            --prefix LITELOADERQQNT_PROFILE : ''${XDG_DATA_HOME:-~/.local/share}/LLQQNT \
        '';
      postInstall = ''
        # Patch QQ
        sed -i "1s@^@require(String.raw\`${LiteLoaderQQNT_SRC}\`);\n@" $out/opt/QQ/resources/app/app_launcher/index.js
        mkdir -vp $out/opt/QQ/resources/app/application/
        cp -f ${LiteLoaderQQNT_SRC}/src/preload.js $out/opt/QQ/resources/app/application/
        # Use FHS environment run Patched QQ
        sed -i "s@^Exec=.*@Exec=${fhs}/bin/fhs -c 'LITELOADERQQNT_PROFILE=~/.local/share/LLQQNT $out/bin/llqqnt %U'@g" $out/share/applications/qq.desktop
      '';
    }
  )
