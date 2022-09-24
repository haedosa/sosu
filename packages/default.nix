{ symlinkJoin, exportOrgToPdf }: rec {

  default = symlinkJoin {
    name = "all";
    paths = [
      tao-ch2
      tao-appendix
    ];
  };

  tao-ch2 = exportOrgToPdf { orgFile = ../Exercise/Tao/Ch2.org;  };
  tao-appendix = exportOrgToPdf { orgFile = ../Exercise/Tao/Appendix.org;  };

}
