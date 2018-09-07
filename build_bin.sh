#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

D_BASE=$DIR/target
RAND_SUFFIX=874e0c8ddc2997c5
SOPT_SUFFIX=d54ac73f3de5c26f

rustc \
  $DIR/src/main.rs \
  --edition=2018 \
  --crate-type=bin \
  --crate-name=rolldice \
  --target=x86_64-fuchsia \
  -Clinker=$DIR/clang/bin/clang \
  -Clink-arg=--target=x86_64-fuchsia \
  -Clink-arg=--sysroot=$DIR/sdk/arch/x64/sysroot \
  -Copt-level=z \
  -Lnative=$DIR/sdk/arch/x64/lib \
  --color=always \
  -Clto=thin \
  -L dependency=$D_BASE/x86_64-fuchsia/debug/deps \
  -L dependency=$D_BASE/debug/deps \
  --extern rand=$D_BASE/x86_64-fuchsia/debug/deps/librand-$RAND_SUFFIX.rlib \
  --extern structopt=$D_BASE/x86_64-fuchsia/debug/deps/libstructopt-$SOPT_SUFFIX.rlib \
  -o$DIR/out_bin

