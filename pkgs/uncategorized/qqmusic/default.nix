{
  sources,
  stdenv,
  autoPatchelfHook,
  makeWrapper,
  lib,
  makeDesktopItem,
  copyDesktopItems,
  # QQ Music dependencies
  alsa-lib,
  at-spi2-atk,
  at-spi2-core,
  cairo,
  cups,
  dbus,
  expat,
  gdk-pixbuf,
  glib,
  gtk3,
  libdbusmenu,
  libglvnd,
  libpulseaudio,
  mesa_drivers,
  nspr,
  nss,
  pango,
  pciutils,
  udev,
  xorg,
  ...
}:
################################################################################
# Mostly based on qqmusic-bin package from AUR:
# https://aur.archlinux.org/packages/qqmusic-bin
################################################################################
let
  libraries = [
    alsa-lib
    at-spi2-atk
    at-spi2-core
    cairo
    cups
    dbus
    expat
    gdk-pixbuf
    glib
    gtk3
    libdbusmenu
    libglvnd
    libpulseaudio
    mesa_drivers
    nspr
    nss
    pango
    pciutils
    udev
    xorg.libX11
    xorg.libxcb
    xorg.libXcomposite
    xorg.libXcursor
    xorg.libXdamage
    xorg.libXext
    xorg.libXfixes
    xorg.libXi
    xorg.libXrandr
    xorg.libXrender
    xorg.libXScrnSaver
    xorg.libXtst
  ];
in
stdenv.mkDerivation rec {
  inherit (sources.qqmusic) pname version src;

  nativeBuildInputs = [
    autoPatchelfHook
    makeWrapper
    copyDesktopItems
  ];
  buildInputs = libraries;

  unpackPhase = ''
    ar x $src
    tar xf data.tar.xz
  '';

  postInstall = ''
    mkdir -p $out
    cp -r opt/qqmusic $out/opt
    cp -r usr/* $out/

    rm -rf $out/opt/swiftshader
    ln -sf ${libglvnd}/lib $out/opt/swiftshader

    mkdir -p $out/bin
    makeWrapper $out/opt/qqmusic $out/bin/qqmusic \
      --argv0 "qqmusic" \
      --prefix LD_LIBRARY_PATH : "${lib.makeLibraryPath libraries}"

    # Hex patch
    # 1. Fix orphaned processes
    # 2. Fix search
    local _subst="
        s|\xA4\x8B\x7A\xB9\x8D\xCF\x54\xAE|\xA4\x8B\x7A\xB9\x85\xEF\x54\xAE|
        s|\xB3\x1D\xF5\xCB\x24\xBC|\xA3\x63\xBB\xC9\x3F\xBC|
    "
    sed "$_subst" -i "$out/opt/resources/app.asar"
  '';

  desktopItems = [
    (makeDesktopItem {
      name = "qqmusic";
      desktopName = "QQMusic";
      exec = "qqmusic %U";
      terminal = false;
      icon = "qqmusic";
      startupWMClass = "qqmusic";
      comment = "Tencent QQMusic";
      categories = [ "AudioVideo" ];
      extraConfig = {
        "Name[zh_CN]" = "QQ音乐";
        "Name[zh_TW]" = "QQ音乐";
        "Comment[zh_CN]" = "腾讯QQ音乐";
        "Comment[zh_TW]" = "腾讯QQ音乐";
      };
    })
  ];

  meta = with lib; {
    description = "Tencent QQ Music (Packaging script adapted from https://aur.archlinux.org/packages/qqmusic-bin)";
    homepage = "https://y.qq.com/";
    platforms = [ "x86_64-linux" ];
    license = licenses.unfreeRedistributable;
  };
}
