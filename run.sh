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

log_info "Runnning imgui_playground."
./build/imgui_playground.out
log_info "Exiting imgui_playground."
