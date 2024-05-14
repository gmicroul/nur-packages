{
  lib,
  stdenv,
  sources,
  ...
}@args:
stdenv.mkDerivation rec {
  inherit (sources.ftp-proxy) pname version src;

  buildPhase = ''
    cd src && make clean && make
  '';

  installPhase = ''
    install -Dm755 ftp.proxy $out/bin/ftp.proxy
  '';

  meta = with lib; {
    description = "ftp.proxy - FTP Proxy Server";
    homepage = "http://www.ftpproxy.org/";
    license = licenses.gpl2Only;
  };
}
