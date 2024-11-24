{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {

  packages = [
    (pkgs.python3.withPackages (python-pkgs: with python-pkgs; [
      # select Python packages here
      pandas
      requests
      jupyter
      statsmodels
      numpy
      matplotlib
    ]))
  ];
  shellHook = ''
    zsh
  '';
}

