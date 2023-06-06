{
  lib,
  sources,
  stdenvNoCC,
  runCommand,
  python3,
  makeWrapper,
  ...
}: let
  python = python3.withPackages (p:
    with p; [
      dateutils
      fastapi
      markdown
      pycryptodome
      python-dotenv
      python-jose
      sqlalchemy
      uvicorn
    ]);

  name = with sources.fastapi-dls; "${pname}-${version}";
  src = sources.fastapi-dls.src;
in
  runCommand name {
    inherit (sources.fastapi-dls) pname version;
    nativeBuildInputs = [makeWrapper];
    meta = with lib; {
      description = "Minimal Delegated License Service (DLS)";
      homepage = "https://gitea.publichub.eu/oscar.krause/fastapi-dls";
      license = licenses.unfree;
    };
  } ''
    mkdir -p $out/bin
    makeWrapper ${python}/bin/python $out/bin/fastapi-dls \
      --chdir "${src}/app" \
      --add-flags "-m" \
      --add-flags "uvicorn" \
      --add-flags "--app-dir" \
      --add-flags "${src}/app" \
      --add-flags "main:app" \
  ''
