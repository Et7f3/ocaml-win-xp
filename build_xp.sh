#!/bin/sh

set -eux

cp config/m-nt.h byterun/caml/m.h
cp config/s-nt.h byterun/caml/s.h

cp config/Makefile.mingw config/Makefile

make flexdll
make world.opt
make flexlink.opt

OCAML_FLEXLINK="flexdll/flexlink.opt" ./ocamlopt.opt -I stdlib hello.ml -o hello.exe
file hello.exe
