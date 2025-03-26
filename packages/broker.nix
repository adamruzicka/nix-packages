{ lib, pkgs }:

with pkgs.python311Packages;

let
  pname = "broker";
  version = "0.6.6";
  format = "wheel";

  awxkit =
    let
      pname = "awxkit";
      version = "24.6.1";
    in
    buildPythonPackage {
      inherit pname version format;

      src = fetchPypi rec {
        inherit pname version format;
        dist = python;
        python = "py3";
        sha256 = "sha256-e67PXvOis17HhAxAHrV41Lv6wvhZdPNNJkTJxDRRXFE=";
      };

      dependencies = [
        requests
        pyaml
        setuptools
      ];
    };

  dynaconf =
    let
      pname = "dynaconf";
      version = "3.2.10";

    in
    buildPythonPackage {
      inherit pname version format;
      src = fetchPypi rec {
        inherit pname version format;
        dist = python;
        python = "py2.py3";
        sha256 = "sha256-f3CkuKiGHvuI2CZ6628kbHkdw07LuCmcJqGavVkRPfY=";
      };
    };
in
buildPythonApplication {
  inherit pname version format;
  src = fetchPypi rec {
    inherit pname version format;
    sha256 = "sha256-VPQu93Gp36IHMXfEQr2OKodrSqZvtmn/l6xUl8Rl7js=";
    dist = python;
    python = "py3";
  };

  dependencies = [
    awxkit
    click
    dynaconf
    logzero
    rich
    rich-click
    ruamel-yaml
  ];
}
