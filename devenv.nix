# devenv docs https://devenv.sh
{
  lib,
  pkgs,
  config,
  inputs,
  ...
}:

{
  dotenv.enable = true;
  starship.enable = true;
  languages.nix.enable = true;

  languages.deno = {
    enable = true;
    package = pkgs.deno;
  };

  # if you need any tooling/packages throw them in here
  # you can search for available packages here https://search.nixos.org/packages
  packages = with pkgs; [
    jq
    git
    just
    direnv
    nixfmt-rfc-style
  ];
}
