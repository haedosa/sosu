{

  description = "Sosu";

  inputs = {

    haedosa.url = "github:haedosa/flakes";
    nixpkgs.follows = "haedosa/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
    emanote.url = "github:EmaApps/emanote";
    # flake-utils.follows = "haedosa/flake-utils";

  };

  outputs = inputs@{self, ...} : {

    overlay = import ./overlay.nix inputs;

  } // inputs.flake-utils.lib.eachDefaultSystem (system:

    let pkgs = import inputs.nixpkgs {
                 inherit system;
                 overlays = [ self.overlay ];
               };

    in
    rec {

      packages = with pkgs; rec {
        default = note;
        pdfs = symlinkJoin {
          name = "all";
          paths = [
            tao-ch2
            tao-appendix
          ];
        };
        inherit note;
        tao-ch2 = exportOrgToPdf { orgFile = ./content/Tao/Ch2.org;  };
        tao-appendix = exportOrgToPdf { orgFile = ./content/Tao/Appendix.org;  };
        run-note = mk-run-note { layers = ./content; port = 7001; };
      };

      # for `nix develop`
      devShell = let
        run-note = pkgs.mk-run-note { layers = "content"; port = 7001; };
      in pkgs.mkShell {
        buildInputs = with pkgs; [
          mytex
          emanote
          run-note
        ];
      };

    });

}
