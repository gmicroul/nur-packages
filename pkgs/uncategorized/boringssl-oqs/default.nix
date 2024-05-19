{
  lib,
  stdenv,
  buildGoModule,
  sources,
  cmake,
  ninja,
  perl,
  pkg-config,
  liboqs,
  ...
}:
buildGoModule {
  inherit (sources.boringssl-oqs) pname version src;
  vendorHash = "sha256-074bgtoBRS3SOxLrwZbBdK1jFpdCvF6tRtU1CkrhoDY=";
  proxyVendor = true;

  enableParallelBuilding = true;

  nativeBuildInputs = [
    cmake
    ninja
    perl
    pkg-config
  ];

  preBuild =
    ''
      cmakeConfigurePhase
    ''
    + lib.optionalString (stdenv.buildPlatform != stdenv.hostPlatform) ''
      export GOARCH=$(go env GOHOSTARCH)
    '';

  env.NIX_CFLAGS_COMPILE = toString (
    lib.optionals stdenv.cc.isGNU [
      # Needed with GCC 12 but breaks on darwin (with clang)
      "-Wno-error=stringop-overflow"
    ]
  );

  buildPhase = ''
    ninjaBuildPhase
  '';

  cmakeFlags = [
    "-GNinja"
    "-DCMAKE_BUILD_TYPE=Release"
    "-DLIBOQS_DIR=${liboqs}"
    "-DLIBOQS_SHARED=ON"
    "-DBUILD_SHARED_LIBS=ON"
    "-DCMAKE_SKIP_BUILD_RPATH=ON"
    "-DCMAKE_SKIP_INSTALL_RPATH=ON"
  ] ++ lib.optionals stdenv.isLinux [ "-DCMAKE_OSX_ARCHITECTURES=" ];

  installPhase = ''
    mkdir -p $bin/bin $dev $out/lib
    mv tool/bssl              $bin/bin
    mv ssl/libssl.*           $out/lib
    mv crypto/libcrypto.*     $out/lib
    mv decrepit/libdecrepit.* $out/lib
    mv ../include $dev
  '';

  outputs = [
    "out"
    "bin"
    "dev"
  ];

  meta = with lib; {
    maintainers = with lib.maintainers; [ xddxdd ];
    description = "Fork of BoringSSL that includes prototype quantum-resistant key exchange and authentication in the TLS handshake based on liboqs";
    homepage = "https://openquantumsafe.org";
    license = with licenses; [
      openssl
      isc
      mit
      bsd3
    ];
  };
}
