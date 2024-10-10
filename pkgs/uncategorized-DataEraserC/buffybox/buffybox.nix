{
  lib,
  sources,
  stdenv,
  inih,
  libdrm,
  libinput,
  libxkbcommon,
  meson,
  ninja,
  pkg-config,
  scdoc,
}:

stdenv.mkDerivation (_finalAttrs: {
  inherit (sources.buffybox) pname version src;

  nativeBuildInputs = [
    meson
    ninja
    pkg-config
    scdoc
  ];

  buildInputs = [
    inih
    libdrm
    libinput
    libxkbcommon
  ];

  propagatedBuildInputs = [
    libxkbcommon
  ];

  meta = with lib; {
    description = "A suite of graphical applications for the terminal";
    mainProgram = "buffyboard";
    homepage = "https://gitlab.com/postmarketOS/buffybox";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
})
