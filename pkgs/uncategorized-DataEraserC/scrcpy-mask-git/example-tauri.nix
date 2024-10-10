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
  cargo-tauri,
  cargo,
  rustPlatform,
  rustc,
  bun,
  darwin,
  llvmPackages,
  rustup,
  libiconv,
}:

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
  pname = "Example Name";
  version = "0.0.1-dev";
  dontNpmBuild = true; # Don't want to npm build since it will produce the application from tauri

  src = ./..;

  npmDepsHash = "sha256-eNAOAjBZQ/L9MMHRFOZi6+wIsj0axF6y7bbdswOuPww=";

  cargoDeps = rustPlatform.importCargoLock {
    lockFile = "${src}/src-tauri/Cargo.lock";
    outputHashes = {
      "tauri-plugin-clipboard-manager-2.1.0-beta.1" = "sha256-2F+OkX92B2/aJva86orotHc7mYUZuaYAmKx50dDp2Sc=";
    };
  };

  configurePhase = ''
    export HOME=$(mktemp -d)
  '';

  preBuild = if stdenv.isLinux then "cargo tauri build -b deb" else "cargo tauri build -b app";
  cargoRoot = "src-tauri/";

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
      cargo-tauri
      nodejs-slim
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
    description = "Example description";
    homepage = "https://example.com";
    license = with licenses; [ epl20 ];
    mainProgram = "program";
    maintainers = with maintainers; [ ];
  };
}
