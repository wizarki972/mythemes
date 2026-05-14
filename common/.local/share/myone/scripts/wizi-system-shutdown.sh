#!/bin/bash

### credit goes to omarchy project basecamp/omarchy
# Shutdown command that first closes all application windows (thus giving them a chance to save state).
# shuts down the system in two seconds
nohup bash -c "sleep 2 && systemctl poweroff --no-wall" >/dev/null 2>&1 &

wizi-close-all-windows.sh
sleep 1