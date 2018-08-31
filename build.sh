#!/bin/sh

CARGO_TARGET_LINKER=./clang/bin/clang \
CARGO_TARGET_RUSTFLAGS="-Clink-arg=--target=x86_64-fuchsia -Clink-arg=--sysroot=./sdk/arch/x64/sysroot -Lnative=./sdk/arch/x64/lib" \
cargo build -v --target=x86_64-fuchsia
