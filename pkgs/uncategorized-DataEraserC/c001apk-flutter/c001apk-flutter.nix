{
  lib,
  fetchFromGitHub,
  pkg-config,
  flutter,
}:
flutter.buildFlutterApplication rec {
  pname = "c001apk-flutter";
  version = "HEAD";

  src = fetchFromGitHub {
    owner = "bggRGjQaUbCoE";
    repo = pname;
    rev = version;
    sha256 = "sha256-XGZP0pnvEmaYei3G99fP+ZzRqHY6D9nu7xHhL92eTm0=";
    fetchSubmodules = true;
  };

  sourceRoot = "${src.name}/linux";
  autoPubspecLock = "${src}/pubspec.lock";

  nativeBuildInputs = [
    pkg-config
  ];

  buildInputs = [
  ];

  meta = with lib; {
    description = "c001apk";
    homepage = "https://github.com/bggRGjQaUbCoE/c001apk-flutter";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
    mainProgram = "gtkgreet";
  };
}
