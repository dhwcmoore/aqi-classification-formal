#!/bin/bash
for i in $(cat bench/data.txt); do ./_build/default/ocaml/ocaml_main.exe "$i" > /dev/null; done
