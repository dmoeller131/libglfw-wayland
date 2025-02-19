{ lib, fetchurl, stdenv }:

stdenv.mkDerivation rec {
  pname = "libglfw-wayland";
  # version = "3.5";


  src = fetchurl {
    # name = "libglfw.so.${version}";
    url = "https://github.com/dmoeller131/libglfw-wayland/archive/refs/tags/v4.tar.gz";
    sha256 = "1gdd0hhlkr7if9pinalr9alqpibiik501afynid68x8q633bsnb5"; # Replace with the actual sha256 hash of the file
  };

  nativeBuildInputs = [];
  # phases = [ "installPhase" ]; # Removes all phases except installPhase

  installPhase = ''
    mkdir -p $out/lib
    cp $src $out/lib/
  '';
}
