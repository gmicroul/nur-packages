{
  lib,
  buildNpmPackage,
  openssl,
  stdenv,
  pkg-config,
  glibc,
  libsoup_3,
  gtk3,
  cairo,
  webkitgtk_4_1,
  nodejs-slim,
  pnpm,
  cargo-tauri,
  cargo,
  rustPlatform,
  rustc,
  bun,
  darwin,
  llvmPackages,
  rustup,
  libiconv,
  sources,
}@self:
let
  inherit (darwin.apple_sdk.frameworks)
    Security
    SystemConfiguration
    AppKit
    WebKit
    CoreFoundation
    ;
in
buildNpmPackage rec {
  dontNpmBuild = true; # Don't want to npm build since it will produce the application from tauri

  inherit (sources.scrcpy-mask) pname version src;

  npmDepsHash = "sha256-7ZLNVCx8e6qhdeXM9ccB5uR4d+II8n1OfRTUZqP9Uc4=";

  cargoDeps = rustPlatform.importCargoLock {
    lockFile = ./Cargo.lock;
    outputHashes =
      {
      };
  };

  configurePhase = ''
    export HOME=$(mktemp -d)
  '';

  # importNpmLock = ./package-lock.json;
  preBuild = if stdenv.isLinux then "cargo tauri build -b deb" else "cargo tauri build -b app";
  cargoRoot = "src-tauri/";

  postPatch = ''
    # cp ${./package.json} package.json
    cp ${./package-lock.json} package-lock.json
    cp ${./Cargo.lock} src-tauri/Cargo.lock
    # cp ${./old-tauri.conf.json} src-tauri/tauri.conf.json
  '';
  preInstall =
    if stdenv.isLinux then
      "mv src-tauri/target/release/bundle/deb/*/data/usr/ \"$out\""
    else
      "mv src-tauri/target/release/bundle/macos/* \"$out/\"";

  nativeBuildInputs =
    [
      pkg-config
      rustPlatform.cargoSetupHook
      cargo
      rustc
      self.cargo-tauri
      nodejs-slim
      pnpm
      openssl
      bun
    ]
    ++ lib.optionals stdenv.isDarwin [
      llvmPackages.libcxxStdenv
      llvmPackages.libcxxClang
      llvmPackages.libcxx
      darwin.libobjc
      darwin.libiconv
      libiconv
      Security
      SystemConfiguration
      AppKit
      WebKit
      CoreFoundation
    ];

  buildInputs =
    [ openssl ]
    ++ lib.optionals stdenv.isLinux [
      glibc
      libsoup_3
      cairo
      gtk3
      webkitgtk_4_1
    ]
    ++ lib.optionals stdenv.isDarwin [
      Security
      darwin.libiconv
      SystemConfiguration
      AppKit
      WebKit
      rustup
    ];

  meta = with lib; {
    description = "scrcpy-mask";
    homepage = "https://github.com/AkiChase/scrcpy-mask";
    mainProgram = "program";
    maintainers = with maintainers; [ ];
  };
}
