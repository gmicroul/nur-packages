{
  callPackage,
  ifNotCI,
  loadPackages,
  ...
}:
let
  packages = loadPackages ./. {
  };
in
packages
// {
}