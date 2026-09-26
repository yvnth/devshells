# directory name is a not a typo, it's named because it's for both C and Cc/cpP files
{
  description = "C/C++ development shell";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { nixpkgs, ... }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
      ];

      forAllSystems = nixpkgs.lib.genAttrs systems;
    in
    {
      devShells = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = pkgs.mkShell {
            packages = with pkgs; [
              bear
              clang-tools
              cmake
              gcc
              gnumake
              lldb
              meson
            ];

            shellHook = ''
              echo "You have successfully entered a C/C++ development shell"
            '';
          };
        }
      );
    };
}
