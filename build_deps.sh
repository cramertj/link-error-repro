#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

CARGO_TARGET_LINKER=$DIR/clang/bin/clang \
CARGO_TARGET_X86_64_UNKNOWN_LINUX_GNU_LINKER=$DIR/clang/bin/clang \
CARGO_TARGET_X86_64_FUCHSIA_LINKER=$DIR/clang/bin/clang \
CARGO_TARGET_X86_64_FUCHSIA_RUSTFLAGS="-Clink-arg=--target=x86_64-fuchsia -Copt-level=z -Clink-arg=--sysroot=$DIR/sdk/arch/x64/sysroot -Lnative=$DIR/sdk/arch/x64/lib" \
cargo build -v --target=x86_64-fuchsia
