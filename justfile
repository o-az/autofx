set shell := ["fish", "-c"]
set dotenv-load := true
set positional-arguments := true
set allow-duplicate-recipes := true

default: fmt

fmt:
    just --fmt --unstable
    mac deno fmt . --config=deno.jsonc
    nixfmt *.nix **/*.nix **/**/*.nix --width=100

rm-dots:
    sudo find . -type f -name "._*" -exec rm -r {} +
    sudo find . -type f -name "._*" -exec rm -r {} +
    sudo find . -type f -name "._*" -exec rm -r {} +
    sudo find . -type f -name "._*" -exec rm -r {} +
