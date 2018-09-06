#!/bin/sh

CARGO_INCREMENTAL=0 \
CARGO_TARGET_X86_64_FUCHSIA_LINKER=./clang/bin/clang \
CARGO_TARGET_X86_64_FUCHSIA_RUSTFLAGS="-Clink-arg=--target=x86_64-fuchsia -Copt-level=z -Clink-arg=--sysroot=./sdk/arch/x64/sysroot -Lnative=./sdk/arch/x64/lib" \
CC=./clang/bin/clang \
CFLAGS="--sysroot=./sdk/arch/x64/sysroot -L ./sdk/arch/x64/lib" \
cargo build -v --target=x86_64-fuchsia --release
