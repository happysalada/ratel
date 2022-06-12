{
  inputs.dream2nix.url = "github:nix-community/dream2nix";
  outputs = { self, dream2nix }@inputs:
    dream2nix.lib.makeFlakeOutputs {
      systems = [ "x86_64-darwin" ];
      config.projectRoot = ./. ;
      source = ./client;

      packageOverrides = {
      };

      inject = {
      };
      # configure package builds via overrides
      # packageOverrides = {
      #   # name of the package
      #   package-name = {
      #     # name the override
      #     add-pre-build-steps = {
      #       # override attributes
      #       preBuild = "...";
      #       # update attributes
      #       buildInputs = old: old ++ [ pkgs.hello ];
      #     };
      #   };
      # };
    };
}