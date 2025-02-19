{ lib, fetchurl, stdenv }:

stdenv.mkDerivation rec {
  pname = "libglfw-wayland";
  version = "3.5";


  src = fetchurl {
    name = "libglfw.so.${version}";
    url = "https://github.com/BoyOrigin/glfw-wayland/releases/download/2024-03-07/libglfw.so.${version}";
    sha256 = "sha256-hash-of-the-file"; # Replace with the actual sha256 hash of the file
  };

  nativeBuildInputs = [];

  installPhase = ''
    mkdir -p $out/lib
    cp $src $out/lib/
  '';
}
