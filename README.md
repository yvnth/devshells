# Devshells

Personal [Nix](https://nixos.org/) development shells for different programming languages, providing reproducible development environments through [Nix flakes](https://wiki.nixos.org/wiki/Flakes).

## Usage

Initialize a devshell template for the language you want:

```bash
nix flake init -t github:yvnth/devshells#<language>
nix develop
```
