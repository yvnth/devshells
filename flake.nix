{
  description = "yvnth's development shell/flake templates";

  outputs = { ... }: {
    templates = {
      ccp = {
        path = ./ccp;
        description = "C/C++ development shell";
      };

      go = {
        path = ./go;
        description = "Go development shell";
      };

      haskell = {
        path = ./haskell;
        description = "Haskell development shell";
      };

      odin = {
        path = ./odin;
        description = "Odin development shell";
      };

      python = {
        path = ./python;
        description = "Python development shell";
      };

      rust = {
        path = ./rust;
        description = "Rust development shell";
      };

      zig = {
        path = ./zig;
        description = "Zig development shell";
      };
    };
  };
}
