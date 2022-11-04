# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub }:
{
  asterisk-alaw16 = {
    pname = "asterisk-alaw16";
    version = "3f81697eec6388a3cdf74743a436ef4faea542d6";
    src = fetchFromGitHub ({
      owner = "traud";
      repo = "asterisk-alaw16";
      rev = "3f81697eec6388a3cdf74743a436ef4faea542d6";
      fetchSubmodules = false;
      sha256 = "sha256-A44u5jR+lBzvovS928DogFY8rxpmyxr9a9TeSa8X6hg=";
    });
  };
  asterisk-amr = {
    pname = "asterisk-amr";
    version = "420ab33f236e15955351e45bf9fbb256228afe21";
    src = fetchFromGitHub ({
      owner = "traud";
      repo = "asterisk-amr";
      rev = "420ab33f236e15955351e45bf9fbb256228afe21";
      fetchSubmodules = false;
      sha256 = "sha256-Q8q2fF7MtMlyrVYABaM9V5C0FJj0g9oihE6TLsoe28E=";
    });
  };
  asterisk-evs = {
    pname = "asterisk-evs";
    version = "c31d342330ddb6e11cb4ac7b516ac5ea409c1fb8";
    src = fetchFromGitHub ({
      owner = "traud";
      repo = "asterisk-evs";
      rev = "c31d342330ddb6e11cb4ac7b516ac5ea409c1fb8";
      fetchSubmodules = false;
      sha256 = "sha256-soayTFbl0FHkH4ZxaeL+ApDsJ2e3CDIIW0KX5rzAAAM=";
    });
  };
  asterisk-g72x = {
    pname = "asterisk-g72x";
    version = "3855cec2ef2667f3e9224006dbaf179575752218";
    src = fetchFromGitHub ({
      owner = "arkadijs";
      repo = "asterisk-g72x";
      rev = "3855cec2ef2667f3e9224006dbaf179575752218";
      fetchSubmodules = false;
      sha256 = "sha256-H6j8zCyId+yTaSo7mmwDSmC64bznkvUgAcQbuNLbc8s=";
    });
  };
  asterisk-gsm-efr = {
    pname = "asterisk-gsm-efr";
    version = "e91ef643a7ff341e1fdaa1c6ff63b3cdc52ac8b4";
    src = fetchFromGitHub ({
      owner = "traud";
      repo = "asterisk-gsm-efr";
      rev = "e91ef643a7ff341e1fdaa1c6ff63b3cdc52ac8b4";
      fetchSubmodules = false;
      sha256 = "sha256-EzQA+j2QBilNWgoPzcNEkf/3XO6XNl8ygDD6Q65tdFk=";
    });
  };
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
    version = "1.6.1-3";
    src = fetchurl {
      url = "https://github.com/msojocs/bilibili-linux/releases/download/v1.6.1-3/io.github.msojocs.bilibili_1.6.1-3_amd64.deb";
      sha256 = "sha256-8uggg3gjS+j4oiO/AAnrRQhjIJnKUElyYCCGTq9nfwg=";
    };
  };
  bird-babel-rtt = {
    pname = "bird-babel-rtt";
    version = "6a7ff0bd1f02aa1c13dd32586075a444e69b426a";
    src = fetchFromGitHub ({
      owner = "NickCao";
      repo = "bird";
      rev = "6a7ff0bd1f02aa1c13dd32586075a444e69b426a";
      fetchSubmodules = false;
      sha256 = "sha256-pf7zyzJGaBfoqF/W+hNNUzmN39yINLD4DIe5Q/9iab4=";
    });
  };
  bird-lg-go = {
    pname = "bird-lg-go";
    version = "3b1d001543e438d9a28a13bf64f674193079ee20";
    src = fetchFromGitHub ({
      owner = "xddxdd";
      repo = "bird-lg-go";
      rev = "3b1d001543e438d9a28a13bf64f674193079ee20";
      fetchSubmodules = false;
      sha256 = "sha256-XGgrBPHJP7Q2WIH6EGY458gAuGdWcSaM+1Ke8jYNYMQ=";
    });
  };
  boringssl-oqs = {
    pname = "boringssl-oqs";
    version = "OQS-BoringSSL-snapshot-2022-08";
    src = fetchFromGitHub ({
      owner = "open-quantum-safe";
      repo = "boringssl";
      rev = "OQS-BoringSSL-snapshot-2022-08";
      fetchSubmodules = false;
      sha256 = "sha256-trNs7rI/mSaY6BZjA3S2tls1Kf4IqTsFnTKpn/Igoq4=";
    });
  };
  chromium-oqs-bin = {
    pname = "chromium-oqs-bin";
    version = "0.7.2";
    src = fetchurl {
      url = "https://github.com/open-quantum-safe/oqs-demos/releases/download/0.7.2/chromium-ubuntu-0.7.2.tgz";
      sha256 = "sha256-Gt2kucYmnMwfnPO15dhasA0Pus8m+70nDQfnfwMUxAE=";
    };
  };
  cloudpan189-go = {
    pname = "cloudpan189-go";
    version = "v0.1.2";
    src = fetchFromGitHub ({
      owner = "tickstep";
      repo = "cloudpan189-go";
      rev = "v0.1.2";
      fetchSubmodules = false;
      sha256 = "sha256-NzMEXeTVDamHOewjflUKhYuFjugGjjrFpKye63o7Q7g=";
    });
  };
  douban-openapi-server = {
    pname = "douban-openapi-server";
    version = "78d5ef82233b681c47b5c37af4b9a63d9c94e052";
    src = fetchFromGitHub ({
      owner = "caryyu";
      repo = "douban-openapi-server";
      rev = "78d5ef82233b681c47b5c37af4b9a63d9c94e052";
      fetchSubmodules = false;
      sha256 = "sha256-Nk7PrV+GENbqX9DkMBzj0UAUyKqBcfc56Z3dgctqP84=";
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
  etherguard = {
    pname = "etherguard";
    version = "1356780d7d37ad5c44d3d25d2137be6120b8bf87";
    src = fetchFromGitHub ({
      owner = "KusakabeShi";
      repo = "EtherGuard-VPN";
      rev = "1356780d7d37ad5c44d3d25d2137be6120b8bf87";
      fetchSubmodules = false;
      sha256 = "sha256-sIJBWvVC7nF2ZJrI6IQxgqA2svqU4XQ0vbz9zh0HEBE=";
    });
  };
  flasgger = {
    pname = "flasgger";
    version = "0.9.5";
    src = fetchFromGitHub ({
      owner = "flasgger";
      repo = "flasgger";
      rev = "0.9.5";
      fetchSubmodules = false;
      sha256 = "sha256-cYFMKZxpi69gVWqyZUltCL0ZwcfIABNsJKqAhN2TTSg=";
    });
  };
  genshin-checkin-helper = {
    pname = "genshin-checkin-helper";
    version = "b9e36543bfe5b042e015463e5d0398cd234cba90";
    src = fetchgit {
      url = "https://gitlab.com/y1ndan/genshin-checkin-helper.git";
      rev = "b9e36543bfe5b042e015463e5d0398cd234cba90";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-sweiJeZx+/uShHxT0gXiVxADeHSyeTtK1G6jgMcMpZE=";
    };
  };
  genshinhelper2 = {
    pname = "genshinhelper2";
    version = "5402ffbe76885432d387e3cf04bb9d1dcefb9075";
    src = fetchFromGitHub ({
      owner = "y1ndan";
      repo = "genshinhelper2";
      rev = "5402ffbe76885432d387e3cf04bb9d1dcefb9075";
      fetchSubmodules = false;
      sha256 = "sha256-6fXJnJONMdsnbPo1hvoPFqfZxXgNqcyENYLMXP051V4=";
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
    version = "7d66de3253bdd896dd2dba5b1f46ab761d6a916f";
    src = fetchFromGitHub ({
      owner = "SpeedyOrc-C";
      repo = "Hoyo-Glyphs";
      rev = "7d66de3253bdd896dd2dba5b1f46ab761d6a916f";
      fetchSubmodules = false;
      sha256 = "sha256-6C8PptQc2Sj6Y8v2EYJPn3v8swLI/5TTSFIrjqKKCww=";
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
    version = "0.7.2";
    src = fetchFromGitHub ({
      owner = "open-quantum-safe";
      repo = "liboqs";
      rev = "0.7.2";
      fetchSubmodules = false;
      sha256 = "sha256-cwrTHj/WFDZ9Ez2FhjpRhEx9aC5xBnh7HR/9T+zUpZc=";
    });
  };
  netboot-xyz-efi = {
    pname = "netboot-xyz-efi";
    version = "2.0.63";
    src = fetchurl {
      url = "https://github.com/netbootxyz/netboot.xyz/releases/download/2.0.63/netboot.xyz.efi";
      sha256 = "sha256-pdpgV/x6xZLbEgNpLvnSPY6JwP7iCTgRk/rmi5hpyOY=";
    };
  };
  netboot-xyz-lkrn = {
    pname = "netboot-xyz-lkrn";
    version = "2.0.63";
    src = fetchurl {
      url = "https://github.com/netbootxyz/netboot.xyz/releases/download/2.0.63/netboot.xyz.lkrn";
      sha256 = "sha256-rIM0UoOJEwUDo3FM0hlYBlfa08nwyFamVwiZgkYhs0Y=";
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
    version = "a60cd2fc2bdd689b8b4e12abcf71f7cf5018424a";
    src = fetchFromGitHub ({
      owner = "vozlt";
      repo = "nginx-module-stream-sts";
      rev = "a60cd2fc2bdd689b8b4e12abcf71f7cf5018424a";
      fetchSubmodules = false;
      sha256 = "sha256-MsQD2wrmnwMycgC5nUhAiwoxNvwmeDUyivQS/2EMJ4o=";
    });
  };
  nginx-module-sts = {
    pname = "nginx-module-sts";
    version = "3c10d42f8c3f78b6310906eab5c8e066ee753330";
    src = fetchFromGitHub ({
      owner = "vozlt";
      repo = "nginx-module-sts";
      rev = "3c10d42f8c3f78b6310906eab5c8e066ee753330";
      fetchSubmodules = false;
      sha256 = "sha256-rAWQDBLW2gQjShC6G+w9tfeML4pFCBTHplcgiW9+Tsc=";
    });
  };
  nginx-module-vts = {
    pname = "nginx-module-vts";
    version = "46e431b57f292765dae015c5c43bd34b4763b43b";
    src = fetchFromGitHub ({
      owner = "vozlt";
      repo = "nginx-module-vts";
      rev = "46e431b57f292765dae015c5c43bd34b4763b43b";
      fetchSubmodules = false;
      sha256 = "sha256-f3HEctyJBwBXVMO0uwyFz5u218Yavi/hXYXfX34CFQQ=";
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
    version = "v1.03";
    src = fetchFromGitHub ({
      owner = "werman";
      repo = "noise-suppression-for-voice";
      rev = "v1.03";
      fetchSubmodules = false;
      sha256 = "sha256-1DgrpGYF7G5Zr9vbgtKm/Yv0HSdI7LrFYPSGKYNnNDQ=";
    });
  };
  nullfs = {
    pname = "nullfs";
    version = "0884f87ec01faaee219f59742c14ed3c3945f5c0";
    src = fetchFromGitHub ({
      owner = "xrgtn";
      repo = "nullfs";
      rev = "0884f87ec01faaee219f59742c14ed3c3945f5c0";
      fetchSubmodules = false;
      sha256 = "sha256-cokSWBZIeCfdxd+o59BssQetffFSdHrVipQuRLbqNdU=";
    });
  };
  onepush = {
    pname = "onepush";
    version = "c7dd8c82e4eb74501d7e6bcf0c42d1caa0c0ffc2";
    src = fetchFromGitHub ({
      owner = "y1ndan";
      repo = "onepush";
      rev = "c7dd8c82e4eb74501d7e6bcf0c42d1caa0c0ffc2";
      fetchSubmodules = false;
      sha256 = "sha256-Rges8Ryd3nFzADoW7Cl8HMzuYWRCPbu08TWnz999qbo=";
    });
  };
  openssl-oqs = {
    pname = "openssl-oqs";
    version = "82b5b1dcd786e13e3af8fe23823dedf2ed25d206";
    src = fetchFromGitHub ({
      owner = "open-quantum-safe";
      repo = "openssl";
      rev = "82b5b1dcd786e13e3af8fe23823dedf2ed25d206";
      fetchSubmodules = false;
      sha256 = "sha256-z2rSBVZBqGIW5oPvlRHN0a3hkuwIUEL2TAB1pd/LNtc=";
    });
  };
  openssl-oqs-provider = {
    pname = "openssl-oqs-provider";
    version = "d78f950c2503456f1edca0f9ba27fa3b2397def2";
    src = fetchFromGitHub ({
      owner = "open-quantum-safe";
      repo = "oqs-provider";
      rev = "d78f950c2503456f1edca0f9ba27fa3b2397def2";
      fetchSubmodules = false;
      sha256 = "sha256-gOVkyW2idyiVtkwAquE6Nch39w8lgkGKLNyMV8svlAc=";
    });
  };
  osdlyrics = {
    pname = "osdlyrics";
    version = "0.5.12";
    src = fetchFromGitHub ({
      owner = "osdlyrics";
      repo = "osdlyrics";
      rev = "0.5.12";
      fetchSubmodules = false;
      sha256 = "sha256-QGgwxmurdwo0xyq7p+1xditRebv64ewGTvNJI7MUnq4=";
    });
  };
  payload-dumper-go = {
    pname = "payload-dumper-go";
    version = "1.2.2";
    src = fetchFromGitHub ({
      owner = "ssut";
      repo = "payload-dumper-go";
      rev = "1.2.2";
      fetchSubmodules = false;
      sha256 = "sha256-P20/Nd2YOW9A9/OkpavVRBAi/ueYp812zZvVLnwX67Y=";
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
    version = "v7.14.2-mod";
    src = fetchFromGitHub ({
      owner = "ReimuHakurei";
      repo = "phppgadmin";
      rev = "v7.14.2-mod";
      fetchSubmodules = false;
      sha256 = "sha256-ST3m5SZ94K/EAP0gltDfJfDeXCyBDthntz7OetH9Ips=";
    });
  };
  plangothic-fonts = {
    pname = "plangothic-fonts";
    version = "V0.5.5694";
    src = fetchFromGitHub ({
      owner = "Fitzgerald-Porthmouth-Koenigsegg";
      repo = "Plangothic";
      rev = "V0.5.5694";
      fetchSubmodules = false;
      sha256 = "sha256-MT2sFbYHdtulWMddfZBe3LaPFwhaOO64zliiTTXriYs=";
    });
  };
  qbittorrent-enhanced-edition = {
    pname = "qbittorrent-enhanced-edition";
    version = "release-4.4.5.10";
    src = fetchFromGitHub ({
      owner = "c0re100";
      repo = "qBittorrent-Enhanced-Edition";
      rev = "release-4.4.5.10";
      fetchSubmodules = false;
      sha256 = "sha256-3kJEMLUThABAkDBbErrwEKz9bAg/Gd9/ZsWzmFmLLFg=";
    });
  };
  rime-aurora-pinyin = {
    pname = "rime-aurora-pinyin";
    version = "122b46976401995cbafcfc748806985ff3a437a4";
    src = fetchFromGitHub ({
      owner = "hosxy";
      repo = "rime-aurora-pinyin";
      rev = "122b46976401995cbafcfc748806985ff3a437a4";
      fetchSubmodules = false;
      sha256 = "sha256-zLzQXSsKwgr7OsyYllyoLNSF9q4mJA5ZYD7v7oagfaE=";
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
    version = "20220925";
    src = fetchurl {
      url = "https://github.com/outloudvi/mw2fcitx/releases/download/20220925/moegirl.dict.yaml";
      sha256 = "sha256-RhKF0V+BOU6ZOKK7+q4/NPqyK2UvCGIE3Mufzp0Ergw=";
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
    version = "2ad303d7eb8aa35aced19b1baf757a0a78b3b843";
    src = fetchFromGitHub ({
      owner = "xddxdd";
      repo = "route-chain";
      rev = "2ad303d7eb8aa35aced19b1baf757a0a78b3b843";
      fetchSubmodules = false;
      sha256 = "sha256-uzudFMeBtgKRPUiaUaSiExTLWTcxfp0VVe/IW9eDxAg=";
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
    version = "202211030059";
    src = fetchurl {
      url = "https://github.com/v2fly/geoip/releases/download/202211030059/geoip.dat";
      sha256 = "sha256-WrHnDmagf1FVyGXPnN6lXpKaZjk9RRX0WhflkDiRrIk=";
    };
  };
  v2fly-geosite = {
    pname = "v2fly-geosite";
    version = "20221103024626";
    src = fetchurl {
      url = "https://github.com/v2fly/domain-list-community/releases/download/20221103024626/dlc.dat";
      sha256 = "sha256-Vzpth5Y97GAcVn49jBnRyY1Z4L4Og5Zeu7NfSuJ5s4Y=";
    };
  };
  v2fly-private = {
    pname = "v2fly-private";
    version = "202211030059";
    src = fetchurl {
      url = "https://github.com/v2fly/geoip/releases/download/202211030059/private.dat";
      sha256 = "sha256-3FHoresOsgn+XlS807r7lZkOuqVwaaGYiTWbGG3uwOg=";
    };
  };
  xray = {
    pname = "xray";
    version = "v1.6.1";
    src = fetchFromGitHub ({
      owner = "XTLS";
      repo = "Xray-core";
      rev = "v1.6.1";
      fetchSubmodules = false;
      sha256 = "sha256-K5S8xgV1U7NmsGPvLb2kxLW4RvQYjvUyuBFSIYqvSzw=";
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
