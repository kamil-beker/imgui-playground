#!/usr/bin/env bash

log_info () 
{
    message="${1}"
    now=$(date +"%T")
    echo "${now} INFO ${message}"
}

log_info "Run imgui_playground."
./build/imgui_playground.out
log_info "Exit imgui_playground."
