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

  hardeningDisable = [ "fortify3" ];

  postPatch = ''
    cd buffyboard
  '';

  meta = with lib; {
    description = "Touch-enabled framebuffer keyboard (not only) for vampire slayers.";
    mainProgram = "buffyboard";
    homepage = "https://gitlab.com/postmarketOS/buffybox/-/tree/master/buffyboard";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
  };
})
