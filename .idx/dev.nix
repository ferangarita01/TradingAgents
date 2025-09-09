{ pkgs, ... }: {
  channel = "stable-24.05"; # o "unstable"

  packages = [
    pkgs.python311
    pkgs.python311Packages.pip
    pkgs.gcc
    pkgs.libstdcxx  # asegura que tengas libstdc++.so.6
  ];

  env = {};

  idx = {
    extensions = [
      # "vscodevim.vim"
    ];
    previews = {
      enable = true;
      previews = { };
    };
    workspace = {
      onCreate = { };
      onStart = { };
    };
  };
}