final: prev: with final;
{
  mytex = texlive.combine {
    inherit (texlive)
      collection-basic
      collection-bibtexextra
      collection-latex
      collection-latexextra
      collection-latexrecommended
      collection-binextra
      collection-langenglish
      collection-langkorean
      collection-langcjk
      collection-plaingeneric
      collection-fontutils
      collection-fontsextra
      collection-fontsrecommended
      collection-context
      collection-metapost
      collection-texworks
      collection-luatex
      collection-xetex
      collection-pictures
      collection-pstricks
      collection-publishers
      collection-mathscience
    ;
  };

  exportOrgToPdf = { orgFile, resourcePaths ? [] }: let
    mkCopyCmd = path: lib.concatStringsSep " " [ "cp -a " path " ." ];
    resources = lib.concatStringsSep "\n" (map mkCopyCmd resourcePaths);
  in
  runCommand "OrgToPdf" {
    buildInputs = [ mytex emacs python3Packages.pygments ];
    FONTCONFIG_FILE = makeFontsConf {
      fontDirectories = [ tex-gyre-math.termes texlive.fontawesome.pkgs ];
    };
  } ''
    ### copy resources
    ${resources}

    strippedFile=$(stripHash ${orgFile})
    cp ${orgFile} $strippedFile
    emacs --batch -q $strippedFile -f org-latex-export-to-pdf

    mkdir -p $out && cp *.pdf $out
  ''
  ;
  }
