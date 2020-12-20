{
  description = "A very basic flake";

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.ts =
      with import nixpkgs { system = "x86_64-linux"; };
      stdenv.mkDerivation {
        name = "ts-dev";
        src = self;
        installPhase = "make install PREFIX=$out";
      };

    defaultPackage.x86_64-linux = self.packages.x86_64-linux.ts;

  };
}
