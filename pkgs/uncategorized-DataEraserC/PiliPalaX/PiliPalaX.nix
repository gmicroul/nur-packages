{
  lib,
  sources,
  pkg-config,
  flutter,
  makeDesktopItem,
  copyDesktopItems,
}:
flutter.buildFlutterApplication rec {
  inherit (sources.PiliPalaX) pname version src;

  sourceRoot = "${src.name}";

  # need more step for pubspec.lock
  autoPubspecLock = src + "/pubspec.lock";

  nativeBuildInputs = [
    pkg-config
    copyDesktopItems
  ];

  postInstall = ''
    _postinstall() {
      for n in 16 32 48 64 128 256 1024; do
        size=$n"x"$n
        install -Dm644 ${src}/assets/images/logo/logo_android_2.png $out/share/icons/hicolor/$size/apps/${pname}.png
      done
    }
    _postinstall
  '';

  desktopItems = lib.toList (makeDesktopItem {
    name = pname;
    genericName = pname;
    exec = pname;
    icon = pname;
    comment = pname;
    desktopName = pname;
    categories = [ "Network" ];
    extraConfig = {
      "Name[en_US]" = pname;
      "Name[zh_CN]" = "PiliPalaX";
      "Name[zh_TW]" = "PiliPalaX";
      "Comment[zh_CN]" = "PiliPalaX";
      "Comment[zh_TW]" = "PiliPalaX";
    };
  });
  meta = with lib; {
    description = "PiliPalaX";
    homepage = "https://github.com/bggRGjQaUbCoE/PiliPalaX";
    license = licenses.gpl3Only;
    platforms = platforms.linux;
    broken = true;
  };
}
