#!/usr/bin/env bash
set -euo pipefail

log_info () 
{
    message="${1}"
    now=$(date +"%T")
    echo "${now} INFO ${message}"
}

log_info "Build Started."

if [[ ! -d "build" ]]; then
    mkdir build
fi

cd build

log_info "Running cmake"
cmake -S ../ -B .

log_info "Running make -j4"
make -j4

log_info "Running imgui_playground."
./imgui_playground.out
