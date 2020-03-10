{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "my-packages";
      paths = [
        niv
      ];
      pathsToLink = [ "/share" "/bin" "/Applications" ];
    };
  };
}
