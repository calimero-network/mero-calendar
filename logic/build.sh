#!/bin/bash
# Thin shim over `cargo mero build` (the tool that replaced this script's hand
# -rolled cargo/wasm-opt/copy pipeline at core rc.19). It stays only because
# scripts/dev-node.sh and scripts/setup.sh shell out to it by name; everything
# else — Makefile, CI — calls cargo mero directly. Output is unchanged:
# res/merocalendar.wasm, now with res/abi.json + res/state-schema.json beside it.
set -e

cd "$(dirname "$0")"

exec cargo mero build "$@"
