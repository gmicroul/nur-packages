{
  lib,
  sources,
  pkg-config,
  flutter,
}:
flutter.buildFlutterApplication rec {

  inherit (sources.c001apk-flutter) pname version src;

  sourceRoot = "${src.name}";
  autoPubspecLock = src + "/pubspec.lock";

  nativeBuildInputs = [
    pkg-config
  ];

  meta = with lib; {
    description = "c001apk";
    homepage = "https://github.com/bggRGjQaUbCoE/c001apk-flutter";
    license = licenses.agpl3Only;
    platforms = platforms.linux;
  };
}
