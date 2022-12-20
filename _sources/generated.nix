# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub }:
{
  an-anime-game-launcher = {
    pname = "an-anime-game-launcher";
    version = "2.4.2";
    src = fetchurl {
      url = "https://github.com/an-anime-team/an-anime-game-launcher/releases/download/2.4.2/an-anime-game-launcher-2.4.2.AppImage";
      sha256 = "sha256-1CtlY1kgroUKlLQYjhN3jDKWCyoigVMQqv/9ejz12Jw=";
    };
  };
  an-anime-game-launcher-gtk = {
    pname = "an-anime-game-launcher-gtk";
    version = "1.2.3";
    src = fetchurl {
      url = "https://github.com/an-anime-team/an-anime-game-launcher-gtk/releases/download/1.2.3/anime-game-launcher";
      sha256 = "sha256-FB3xLM7PwBDQcKgDvviAhP+9jjBKAMGJh5Y48jrFYSU=";
    };
  };
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
    version = "v3.9.0";
    src = fetchFromGitHub ({
      owner = "qjfoidnh";
      repo = "BaiduPCS-Go";
      rev = "v3.9.0";
      fetchSubmodules = false;
      sha256 = "sha256-vUrCyUG4Dmt6vy/GZR/5UtFfMhYW0HoAEHgZ7tIVIW4=";
    });
  };
  bilibili = {
    pname = "bilibili";
    version = "1.7.2-1";
    src = fetchurl {
      url = "https://github.com/msojocs/bilibili-linux/releases/download/v1.7.2-1/io.github.msojocs.bilibili_1.7.2-1_amd64.deb";
      sha256 = "sha256-0EFjfr2XljQ72XSw8wqCpggHSsvzMtioBGQOxvWuMyM=";
    };
  };
  bird-babel-rtt = {
    pname = "bird-babel-rtt";
    version = "e508ca76a198f633e1720466e1084333ae8b2742";
    src = fetchFromGitHub ({
      owner = "NickCao";
      repo = "bird";
      rev = "e508ca76a198f633e1720466e1084333ae8b2742";
      fetchSubmodules = false;
      sha256 = "sha256-JdxWSXsPUPNHZxFxdOa8Ogui6Xf2Ife5UgWSLO6Lwrc=";
    });
  };
  bird-lg-go = {
    pname = "bird-lg-go";
    version = "9e17b116f193870470f618b307490100d69c6f83";
    src = fetchFromGitHub ({
      owner = "xddxdd";
      repo = "bird-lg-go";
      rev = "9e17b116f193870470f618b307490100d69c6f83";
      fetchSubmodules = false;
      sha256 = "sha256-A8VnPvY1tByTebxFPG62Vihtjm4tosafgKWDJuOJj1U=";
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
    version = "e786dedd153fb551baded7ee77d7eefa909555f7";
    src = fetchFromGitHub ({
      owner = "y1ndan";
      repo = "genshinhelper2";
      rev = "e786dedd153fb551baded7ee77d7eefa909555f7";
      fetchSubmodules = false;
      sha256 = "sha256-A9xjkucf3qbDUuTi7rQbOhEYwtGXn6m0IosqhfD2awA=";
    });
  };
  glauth = {
    pname = "glauth";
    version = "v2.2.0-RC1";
    src = fetchFromGitHub ({
      owner = "glauth";
      repo = "glauth";
      rev = "v2.2.0-RC1";
      fetchSubmodules = false;
      sha256 = "sha256-fPEBSEmlFYoe4PGfs7x26GvVlLZhiPvwiUgXwhlrXLk=";
    });
  };
  hoyo-glyphs = {
    pname = "hoyo-glyphs";
    version = "f87da0abeb152e9caf0d84b039f9a37d4af3bfa6";
    src = fetchFromGitHub ({
      owner = "SpeedyOrc-C";
      repo = "Hoyo-Glyphs";
      rev = "f87da0abeb152e9caf0d84b039f9a37d4af3bfa6";
      fetchSubmodules = false;
      sha256 = "sha256-hNRVsWjRx9pECjQeEfUnciLi3ALIJNrIhVWH+EA8p2E=";
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
    version = "2.0.65";
    src = fetchurl {
      url = "https://github.com/netbootxyz/netboot.xyz/releases/download/2.0.65/netboot.xyz.efi";
      sha256 = "sha256-vF6KfLyXXU4wwm+WrGxDFpOphwO4UtPqOQkqUSquAc4=";
    };
  };
  netboot-xyz-lkrn = {
    pname = "netboot-xyz-lkrn";
    version = "2.0.65";
    src = fetchurl {
      url = "https://github.com/netbootxyz/netboot.xyz/releases/download/2.0.65/netboot.xyz.lkrn";
      sha256 = "sha256-BmdIETj3xnHKtve16ZAQrIjhnm4EVQwXXd3JhfhWOKk=";
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
  nginx-njs = {
    pname = "nginx-njs";
    version = "0.7.9";
    src = fetchFromGitHub ({
      owner = "nginx";
      repo = "njs";
      rev = "0.7.9";
      fetchSubmodules = false;
      sha256 = "sha256-5OFOmnBHJd3JpUiV9y0RSzOdYQ26UuUME3j1BbLQ1Xs=";
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
    version = "5118e6ecd001db20936a753ec5013551ab3a93fb";
    src = fetchFromGitHub ({
      owner = "open-quantum-safe";
      repo = "openssl";
      rev = "5118e6ecd001db20936a753ec5013551ab3a93fb";
      fetchSubmodules = false;
      sha256 = "sha256-0+1/rAj0axCBiX6nSevDcsu9+u/EHk/QR9I4JCB5eTg=";
    });
  };
  openssl-oqs-provider = {
    pname = "openssl-oqs-provider";
    version = "6a322a49c427c735d45f9d1b38bac538e4efa42b";
    src = fetchFromGitHub ({
      owner = "open-quantum-safe";
      repo = "oqs-provider";
      rev = "6a322a49c427c735d45f9d1b38bac538e4efa42b";
      fetchSubmodules = false;
      sha256 = "sha256-m/6AEEfUp3Fx1pPriiaK+x4YYzbKQYQGTLwKz4HCME8=";
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
    version = "v7.14.3-mod";
    src = fetchFromGitHub ({
      owner = "ReimuHakurei";
      repo = "phppgadmin";
      rev = "v7.14.3-mod";
      fetchSubmodules = false;
      sha256 = "sha256-ccGuQ4qM0DDvhx6SnATI4KIYISqGu8+JhpD0unAW1DA=";
    });
  };
  plangothic-fonts = {
    pname = "plangothic-fonts";
    version = "V0.7.5708";
    src = fetchFromGitHub ({
      owner = "Fitzgerald-Porthmouth-Koenigsegg";
      repo = "Plangothic";
      rev = "V0.7.5708";
      fetchSubmodules = false;
      sha256 = "sha256-ggXxDowvXIvq0YypqLV1F8U6L5dYvB+gkr9nFDyMK3Q=";
    });
  };
  qbittorrent-enhanced-edition = {
    pname = "qbittorrent-enhanced-edition";
    version = "release-4.5.0.10";
    src = fetchFromGitHub ({
      owner = "c0re100";
      repo = "qBittorrent-Enhanced-Edition";
      rev = "release-4.5.0.10";
      fetchSubmodules = false;
      sha256 = "sha256-sC1MklSypIpZ0LR4/NdpowABKIutfYkzUb39Kgty9Lc=";
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
    version = "20221214";
    src = fetchurl {
      url = "https://github.com/outloudvi/mw2fcitx/releases/download/20221214/moegirl.dict.yaml";
      sha256 = "sha256-psi2UfwAXNlCHJ6a1ptMQo5usExl6VmL3UwcH+7CrTo=";
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
    version = "e68c96e5e4df70c797d5a99acc8226713a22d7f5";
    src = fetchFromGitHub ({
      owner = "xddxdd";
      repo = "route-chain";
      rev = "e68c96e5e4df70c797d5a99acc8226713a22d7f5";
      fetchSubmodules = false;
      sha256 = "sha256-StEBgUC3U8KYXt+esohHQ1uc/cvXEVEwrNdbeK+j4uE=";
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
