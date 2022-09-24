{

  description = "Sosu";

  inputs = {

    haedosa.url = "github:haedosa/flakes/22.05";
    nixpkgs.follows = "haedosa/nixpkgs";
    flake-utils.follows = "haedosa/flake-utils";

  };

  outputs = inputs@{self, ...} : {

    overlay = import ./overlay.nix;

  } // inputs.flake-utils.lib.eachDefaultSystem (system:

    let pkgs = import inputs.nixpkgs {
                 inherit system;
                 overlays = [ self.overlay ];
               };

    in
    rec {

      packages = pkgs.callPackage ./packages {};

      # for `nix develop`
      devShell = pkgs.mkShell {
        buildInputs = with pkgs; [
          mytex
        ];
      };

    });

}
