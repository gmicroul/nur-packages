{ lib
, sources
, nixosTests
, stdenv
, fetchFromGitLab
, inih
, libdrm
, libinput
, libxkbcommon
, meson
, ninja
, pkg-config
, scdoc
}:

stdenv.mkDerivation (finalAttrs: {
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

  passthru = {
    tests.unl0kr = nixosTests.systemd-initrd-luks-unl0kr;
  };

  sourceRoot = "${finalAttrs.src.name}/buffybox";

  meta = with lib; {
    description = "A suite of graphical applications for the terminal";
    mainProgram = "buffybox";
    homepage = "https://gitlab.com/postmarketOS/buffybox";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
})
