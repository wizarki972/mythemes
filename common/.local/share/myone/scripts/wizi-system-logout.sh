#!/usr/bin/bash

# logs out user
nohup bash -c "sleep 2 && loginctl terminate-user $(id -u)" >/dev/null 2>&1 &

#close all open windows
wizi-close-all-windows.sh
sleep 1 # Allow apps like Chrome to shutdown correctly