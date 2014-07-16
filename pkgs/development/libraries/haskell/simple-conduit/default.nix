{ cabal, bifunctors, chunkedData, either, exceptions, filepath
, free, liftedAsync, liftedBase, mmorph, monadControl
, monoTraversable, mtl, mwcRandom, primitive, semigroups, stm
, streamingCommons, text, transformers, transformersBase, vector
}:

cabal.mkDerivation (self: {
  pname = "simple-conduit";
  version = "0.5.0";
  sha256 = "0fbm1nv9190p1b038p6zxmw042cgm5jgkfbhscw1fslgzja90iyz";
  buildDepends = [
    bifunctors chunkedData either exceptions filepath free liftedAsync
    liftedBase mmorph monadControl monoTraversable mtl mwcRandom
    primitive semigroups stm streamingCommons text transformers
    transformersBase vector
  ];
  meta = {
    homepage = "http://github.com/jwiegley/simple-conduit";
    description = "A simple streaming I/O library based on monadic folds";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
