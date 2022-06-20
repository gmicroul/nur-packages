# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub }:
{
  baidupcs-go = {
    pname = "baidupcs-go";
    version = "v3.8.7";
    src = fetchFromGitHub ({
      owner = "qjfoidnh";
      repo = "BaiduPCS-Go";
      rev = "v3.8.7";
      fetchSubmodules = false;
      sha256 = "sha256-TSHcUWEzh3kZlp+oIdbE55HQ65VgNxsb8AHMNteEhVg=";
    });
  };
  bilibili = {
    pname = "bilibili";
    version = "1.2.1-1";
    src = fetchurl {
      url = "https://github.com/msojocs/bilibili-linux/releases/download/v1.2.1-1/io.github.msojocs.bilibili_1.2.1-1_amd64.deb";
      sha256 = "sha256-t/igezm0ipkOkKION8qTYGK9f6qI3c4iPuS/wWrMywQ=";
    };
  };
  bird-lg-go = {
    pname = "bird-lg-go";
    version = "348295b9aa954a92df2cf6b1179846a9486dafc0";
    src = fetchFromGitHub ({
      owner = "xddxdd";
      repo = "bird-lg-go";
      rev = "348295b9aa954a92df2cf6b1179846a9486dafc0";
      fetchSubmodules = false;
      sha256 = "sha256-2t8ZP9Uc0sJlqWiJMq3MVoARfMKsuTXJkuOid0oWgyY=";
    });
  };
  boringssl-oqs = {
    pname = "boringssl-oqs";
    version = "OQS-BoringSSL-snapshot-2022-01";
    src = fetchFromGitHub ({
      owner = "open-quantum-safe";
      repo = "boringssl";
      rev = "OQS-BoringSSL-snapshot-2022-01";
      fetchSubmodules = false;
      sha256 = "sha256-sMdOi2ADLcEhFMCk3J3XeVMgRki8GGcwumIlid1VnVE=";
    });
  };
  brotli = {
    pname = "brotli";
    version = "9801a2c5d6c67c467ffad676ac301379bb877fc3";
    src = fetchFromGitHub ({
      owner = "google";
      repo = "brotli";
      rev = "9801a2c5d6c67c467ffad676ac301379bb877fc3";
      fetchSubmodules = false;
      sha256 = "sha256-kSIQqWxalvyXBJSM8kts9cAKUWlbJDFkTxtFyjUAz2Y=";
    });
  };
  cloudpan189-go = {
    pname = "cloudpan189-go";
    version = "v0.1.1";
    src = fetchFromGitHub ({
      owner = "tickstep";
      repo = "cloudpan189-go";
      rev = "v0.1.1";
      fetchSubmodules = false;
      sha256 = "sha256-PUFykU9NoGra/YYNjKKvi6DEYRIaEEKXjyp1UlmeOgI=";
    });
  };
  drone-vault = {
    pname = "drone-vault";
    version = "v1.2.0";
    src = fetchFromGitHub ({
      owner = "drone";
      repo = "drone-vault";
      rev = "v1.2.0";
      fetchSubmodules = false;
      sha256 = "sha256-P6rOMqYu6uxGVG1CPNE9fjhntH8IBMyo3mfSOo16EAA=";
    });
  };
  glauth = {
    pname = "glauth";
    version = "v2.1.0";
    src = fetchFromGitHub ({
      owner = "glauth";
      repo = "glauth";
      rev = "v2.1.0";
      fetchSubmodules = false;
      sha256 = "sha256-kX/i156WxB2Ply4G0N/cR2KxrkEM/RdVXo0P5KMfHao=";
    });
  };
  hoyo-glyphs = {
    pname = "hoyo-glyphs";
    version = "b2bf17cd3d9637fbf55c23bf46fe380e4f7e0739";
    src = fetchFromGitHub ({
      owner = "SpeedyOrc-C";
      repo = "Hoyo-Glyphs";
      rev = "b2bf17cd3d9637fbf55c23bf46fe380e4f7e0739";
      fetchSubmodules = false;
      sha256 = "sha256-7Jx/7z3QxAi7lsV3JFwUDWJUpaKOmfZyGKL3MUrUopw=";
    });
  };
  konnect = {
    pname = "konnect";
    version = "v0.34.0";
    src = fetchFromGitHub ({
      owner = "Kopano-dev";
      repo = "konnect";
      rev = "v0.34.0";
      fetchSubmodules = false;
      sha256 = "sha256-y7SD+czD/jK/m0LbFq7qGjwJgBIXfTNrdsA3pzgD2xE=";
    });
  };
  libltnginx = {
    pname = "libltnginx";
    version = "96698a667740ac45ca4571a04a6cfe39caf926c0";
    src = fetchFromGitHub ({
      owner = "xddxdd";
      repo = "libltnginx";
      rev = "96698a667740ac45ca4571a04a6cfe39caf926c0";
      fetchSubmodules = false;
      sha256 = "sha256-A3+CpN0kKmxEw8N0ZQX284qjsSsiy1/RjJp5VvAKP5U=";
    });
  };
  liboqs = {
    pname = "liboqs";
    version = "0.7.1";
    src = fetchFromGitHub ({
      owner = "open-quantum-safe";
      repo = "liboqs";
      rev = "0.7.1";
      fetchSubmodules = false;
      sha256 = "sha256-m20M4+3zsH40hTpMJG9cyIjXp0xcCUBS+cCiRVLXFqM=";
    });
  };
  netboot-xyz-efi = {
    pname = "netboot-xyz-efi";
    version = "2.0.59";
    src = fetchurl {
      url = "https://github.com/netbootxyz/netboot.xyz/releases/download/2.0.59/netboot.xyz.efi";
      sha256 = "sha256-iOQceSCeiMfvDvU5YeJkhm/rAKOLK7Yju89m29yusEE=";
    };
  };
  netboot-xyz-lkrn = {
    pname = "netboot-xyz-lkrn";
    version = "2.0.59";
    src = fetchurl {
      url = "https://github.com/netbootxyz/netboot.xyz/releases/download/2.0.59/netboot.xyz.lkrn";
      sha256 = "sha256-f1eFJ0qg5f6VGo9lXcLnVnmc9oowrz17py5KnIT+48g=";
    };
  };
  netns-exec = {
    pname = "netns-exec";
    version = "aa346fd058d47b238ae1b86250f414bcab2e7927";
    src = fetchFromGitHub ({
      owner = "pekman";
      repo = "netns-exec";
      rev = "aa346fd058d47b238ae1b86250f414bcab2e7927";
      fetchSubmodules = true;
      sha256 = "sha256-CnIgzRb58KIvdx7T9LpervSB2Ol6JMxmSM/Ti3K1+Dg=";
    });
  };
  nginx-module-stream-sts = {
    pname = "nginx-module-stream-sts";
    version = "54494ccd33ddfeb1b458409caf1261d16ba31c27";
    src = fetchFromGitHub ({
      owner = "vozlt";
      repo = "nginx-module-stream-sts";
      rev = "54494ccd33ddfeb1b458409caf1261d16ba31c27";
      fetchSubmodules = false;
      sha256 = "sha256-yquPvEhfY1nb+BLnDDyzC1d4Jp49mO5tonlQM+MMssk=";
    });
  };
  nginx-module-sts = {
    pname = "nginx-module-sts";
    version = "06ea32162654401b08e5e486155b9a2981623298";
    src = fetchFromGitHub ({
      owner = "vozlt";
      repo = "nginx-module-sts";
      rev = "06ea32162654401b08e5e486155b9a2981623298";
      fetchSubmodules = false;
      sha256 = "sha256-HtUWMM6vrxcCOKpnEliNxd3sNGgik6FrAfa/I4L7POA=";
    });
  };
  nginx-module-vts = {
    pname = "nginx-module-vts";
    version = "3c6cf41315bfcb48c35a3a0be81ddba6d0d01dac";
    src = fetchFromGitHub ({
      owner = "vozlt";
      repo = "nginx-module-vts";
      rev = "3c6cf41315bfcb48c35a3a0be81ddba6d0d01dac";
      fetchSubmodules = false;
      sha256 = "sha256-Iff50npAM1WPjiFt3aYtqC7hQL4kqNNqsat/Qo7cYkU=";
    });
  };
  ngx_brotli = {
    pname = "ngx_brotli";
    version = "6e975bcb015f62e1f303054897783355e2a877dc";
    src = fetchFromGitHub ({
      owner = "google";
      repo = "ngx_brotli";
      rev = "6e975bcb015f62e1f303054897783355e2a877dc";
      fetchSubmodules = false;
      sha256 = "sha256-G0IDYlvaQzzJ6cNTSGbfuOuSXFp3RsEwIJLGapTbDgo=";
    });
  };
  noise-suppression-for-voice = {
    pname = "noise-suppression-for-voice";
    version = "v0.91";
    src = fetchFromGitHub ({
      owner = "werman";
      repo = "noise-suppression-for-voice";
      rev = "v0.91";
      fetchSubmodules = false;
      sha256 = "sha256-jLcSFQz5kt+PcWetZUQ1NEQ2diI7Z/ZaBe/oyZaO/IY=";
    });
  };
  openssl-oqs = {
    pname = "openssl-oqs";
    version = "802e3663db58a76b4861871a5b459d436fd6a5a8";
    src = fetchFromGitHub ({
      owner = "open-quantum-safe";
      repo = "openssl";
      rev = "802e3663db58a76b4861871a5b459d436fd6a5a8";
      fetchSubmodules = false;
      sha256 = "sha256-0ErrsxMumfWbPFPd4wtLnT40Z/y050Z5WUblIIBIIUA=";
    });
  };
  openssl-oqs-provider = {
    pname = "openssl-oqs-provider";
    version = "ec60cde5cc894814016f821a1162fe1a4b888a75";
    src = fetchFromGitHub ({
      owner = "open-quantum-safe";
      repo = "oqs-provider";
      rev = "ec60cde5cc894814016f821a1162fe1a4b888a75";
      fetchSubmodules = false;
      sha256 = "sha256-NyT5CpQeclSJ0b4Qr4McAJXwKgy6SWiUijkAgu6TTNM=";
    });
  };
  osdlyrics = {
    pname = "osdlyrics";
    version = "0.5.10";
    src = fetchFromGitHub ({
      owner = "osdlyrics";
      repo = "osdlyrics";
      rev = "0.5.10";
      fetchSubmodules = false;
      sha256 = "sha256-x9gIT1JkfPIc4RmmQJLv9rOG2WqAftoTK5uiRlS65zU=";
    });
  };
  phpmyadmin = {
    pname = "phpmyadmin";
    version = "5.2.0";
    src = fetchurl {
      url = "https://files.phpmyadmin.net/phpMyAdmin/5.2.0/phpMyAdmin-5.2.0-all-languages.tar.xz";
      sha256 = "sha256-ZtoxyilfBhgqw/Lm6WBX3IJMRZuu30sp3m7Q074DkjA=";
    };
  };
  phppgadmin = {
    pname = "phppgadmin";
    version = "REL_7-13-0";
    src = fetchFromGitHub ({
      owner = "phppgadmin";
      repo = "phppgadmin";
      rev = "REL_7-13-0";
      fetchSubmodules = false;
      sha256 = "sha256-GzAGnr2OMrGEG31YUgxGkCAUXVWO7fOlYQeD+1u0do0=";
    });
  };
  qbittorrent-enhanced-edition = {
    pname = "qbittorrent-enhanced-edition";
    version = "release-4.4.3.12";
    src = fetchFromGitHub ({
      owner = "c0re100";
      repo = "qBittorrent-Enhanced-Edition";
      rev = "release-4.4.3.12";
      fetchSubmodules = false;
      sha256 = "sha256-c2+QK+ieXIhh8/K04U3kCIqFXf5yce9xZelsnVMS3qk=";
    });
  };
  rime-aurora-pinyin = {
    pname = "rime-aurora-pinyin";
    version = "709398a009e964e17943717007dd4db98b5655b1";
    src = fetchFromGitHub ({
      owner = "hosxy";
      repo = "rime-aurora-pinyin";
      rev = "709398a009e964e17943717007dd4db98b5655b1";
      fetchSubmodules = false;
      sha256 = "sha256-uBU6EsXLU5ZGlUEwLcu4z1pXjTejuc7VDudomJE0FlI=";
    });
  };
  rime-dict = {
    pname = "rime-dict";
    version = "325ecbda51cd93e07e2fe02e37e5f14d94a4a541";
    src = fetchFromGitHub ({
      owner = "Iorest";
      repo = "rime-dict";
      rev = "325ecbda51cd93e07e2fe02e37e5f14d94a4a541";
      fetchSubmodules = false;
      sha256 = "sha256-LmY2EQ1VjfX9UJ8ubwoHgxDdJUicSuE0uqxKRnniJ+k=";
    });
  };
  rime-moegirl = {
    pname = "rime-moegirl";
    version = "20220218";
    src = fetchurl {
      url = "https://github.com/outloudvi/mw2fcitx/releases/download/20220218/moegirl.dict.yaml";
      sha256 = "sha256-ut1oWd88hCq4eJ0rI0a4YuVEmo6/nwG80tC/i/oxJLA=";
    };
  };
  rime-zhwiki = {
    pname = "rime-zhwiki";
    version = "20220529";
    src = fetchurl {
      url = "https://github.com/felixonmars/fcitx5-pinyin-zhwiki/releases/download/0.2.4/zhwiki-20220529.dict.yaml";
      sha256 = "sha256-RyaQiFYPwmvVNzQUC6qQguENvPv+1XwwctlnSlejEgM=";
    };
  };
  route-chain = {
    pname = "route-chain";
    version = "b2068ce2905588f445ff95a05c00f200ec96d5b5";
    src = fetchFromGitHub ({
      owner = "xddxdd";
      repo = "route-chain";
      rev = "b2068ce2905588f445ff95a05c00f200ec96d5b5";
      fetchSubmodules = false;
      sha256 = "sha256-AW4Tc8RCP0vyRUtZxUuNSYh/iYZh9ExZrsbgZHkFPqU=";
    });
  };
  stream-echo-nginx-module = {
    pname = "stream-echo-nginx-module";
    version = "b7b76b853131b6fa7579d20c2816b4b6abb16bea";
    src = fetchFromGitHub ({
      owner = "openresty";
      repo = "stream-echo-nginx-module";
      rev = "b7b76b853131b6fa7579d20c2816b4b6abb16bea";
      fetchSubmodules = false;
      sha256 = "sha256-Q7Zv/e296zPcmB+lshBsEXEhtt7TAfRjGgy09uBGxHA=";
    });
  };
  v2fly-geoip = {
    pname = "v2fly-geoip";
    version = "202206160052";
    src = fetchurl {
      url = "https://github.com/v2fly/geoip/releases/download/202206160052/geoip.dat";
      sha256 = "sha256-NbGJlOVB5cPj1ko5rw0vgffYjMfIe/ul6l8gpROQpMY=";
    };
  };
  v2fly-geosite = {
    pname = "v2fly-geosite";
    version = "20220617132201";
    src = fetchurl {
      url = "https://github.com/v2fly/domain-list-community/releases/download/20220617132201/dlc.dat";
      sha256 = "sha256-PVQWAFhFaRGkPX9RbVjXH/h1trsM54kXObx1cAzCIK8=";
    };
  };
  v2fly-private = {
    pname = "v2fly-private";
    version = "202206160052";
    src = fetchurl {
      url = "https://github.com/v2fly/geoip/releases/download/202206160052/private.dat";
      sha256 = "sha256-3FHoresOsgn+XlS807r7lZkOuqVwaaGYiTWbGG3uwOg=";
    };
  };
  xray = {
    pname = "xray";
    version = "v1.5.5";
    src = fetchFromGitHub ({
      owner = "XTLS";
      repo = "Xray-core";
      rev = "v1.5.5";
      fetchSubmodules = false;
      sha256 = "sha256-x2aNAu+H3qJIKjQbE0rYxfQAWucvOMaU2eSy9YIZdcQ=";
    });
  };
  zstd-nginx-module = {
    pname = "zstd-nginx-module";
    version = "1e0fa0bfb995e72f8f7e4c0153025c3306f1a5cc";
    src = fetchFromGitHub ({
      owner = "tokers";
      repo = "zstd-nginx-module";
      rev = "1e0fa0bfb995e72f8f7e4c0153025c3306f1a5cc";
      fetchSubmodules = false;
      sha256 = "sha256-dVRK5lG6WSCWE6uMofJxz7Ih87FJJ+x1oyVZkY7iZ6c=";
    });
  };
}
