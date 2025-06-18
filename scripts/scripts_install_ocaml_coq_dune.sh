#!/bin/bash
# Installs Coq, OCaml, Dune, and dependencies

sudo apt update
sudo apt install -y opam
opam init -y --bare
opam switch create 4.14.1
eval $(opam env)
opam install -y coq dune zarith
echo "✅ Installed OCaml/Coq toolchain"
