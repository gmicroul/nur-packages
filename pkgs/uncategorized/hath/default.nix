{
  stdenvNoCC,
  fetchzip,
  lib,
  jre_headless,
  makeWrapper,
  ...
}@args:
stdenvNoCC.mkDerivation rec {
  pname = "hath";
  version = "1.6.2";
  src = fetchzip {
    url = "https://repo.e-hentai.org/hath/HentaiAtHome_${version}.zip";
    stripRoot = false;
    hash = "sha256-0c8ltti19c6QBkcxZThdqHRGN7pDP0YUwwFXcvvmqDM=";
  };

  nativeBuildInputs = [ makeWrapper ];

  installPhase = ''
    install -Dm644 HentaiAtHome.jar $out/opt/HentaiAtHome.jar

    mkdir -p $out/bin
    makeWrapper ${jre_headless}/bin/java $out/bin/hath \
      --add-flags "-Xms16m" \
      --add-flags "-Xmx512m" \
      --add-flags "-jar" \
      --add-flags "$out/opt/HentaiAtHome.jar" \
  '';

  meta = with lib; {
    description = "Hentai@Home";
    homepage = "https://e-hentai.org/";
    license = licenses.gpl3Only;
  };
}
