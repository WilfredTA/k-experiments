let
  kframework = import ./k {};
  inherit (kframework) mkShell;
in
mkShell {
  buildInputs = [
    kframework.k
    kframework.haskell-backend
  ];
}