#!/usr/bin/env bash
set -euo pipefail

BBlue='\033[1;34m'
Color_Off='\033[0m'

log_info () 
{
    message="${1}"
    now=$(date +"%T")
    echo -e "${BBlue}${now} INFO${Color_Off} ${message}"
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

log_info "Runnning imgui_playground."
./imgui_playground.out
log_info "Exiting imgui_playground."
