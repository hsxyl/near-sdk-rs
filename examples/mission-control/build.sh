#!/bin/bash

wasm-pack build --no-typescript --release
wasm-opt -Oz --output ./pkg/optimized_contract.wasm ./pkg/mission_control_bg.wasm
cp pkg/optimized_contract.wasm ./res/mission_control.wasm
rm -rf pkg