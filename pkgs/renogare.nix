{ stdenv, fetchurl, unzip, installFonts }:

# renogare font
stdenv.mkDerivation {
  pname = "renogare";
  version = "1.0";

  src = fetchurl {
    url = "https://dl.dafont.com/dl/?f=renogare";
    hash = "sha256-ZH3VFmZ+0+GZGBaQd0Xyq54lrwMnJamAKvYdT3mONVA=";
  };

  nativeBuildInputs = [
    unzip
    installFonts
  ];

  unpackPhase = ''
    runHook preUnpack

    # need to unzip manually since the downloaded file isn't automatically picked up as a zip
    unzip $src

    runHook postUnpack
  '';
}
