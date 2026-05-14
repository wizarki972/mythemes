#!/bin/bash

### credit goes to omarchy project basecamp/omarchy
# Reboot command that first closes all application windows (thus giving them a chance to save state).
# This is particularly helpful for applications like Chromium that otherwise won't shutdown cleanly.

# Schedule the reboot to happen after closing windows (detached from terminal)
nohup bash -c "sleep 2 && systemctl reboot --no-wall" >/dev/null 2>&1 &

# Close all open windows
wizi-close-all-windows.sh