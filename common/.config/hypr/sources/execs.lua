-- EXECS (COMMANDS TO EXECUTE AT STARTUP)
hl.exec_cmd(SCRIPTS_DIR_PATH .. "/resetxdgportal.sh")
hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP") -- for XDPH
hl.exec_cmd("dbus-update-activation-environment --systemd --all") -- for XDPH
hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP") -- for XDPH
hl.exec_cmd(SCRIPTS_DIR_PATH .. "/polkitkdeauth.sh") -- authentication dialogue for GUI apps
hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
hl.exec_cmd("blueman-applet") -- systray app for Bluetooth
hl.exec_cmd("udiskie --no-automount --smart-tray") -- front-end that allows to manage removable media
hl.exec_cmd("nm-applet --indicator") -- systray app for Network/Wifi
hl.exec_cmd("tailscale-systray")
hl.exec_cmd("swaync") -- sway notification daemon and center
hl.exec_cmd("swayosd-server") -- osd for volume and brightness changes - needs its systemd service to run 
hl.exec_cmd("waybar") -- launch the system bar
hl.exec_cmd("hypridle")
hl.exec_cmd("awww-daemon")
hl.exec_cmd("sleep 5 && myone --update")
hl.exec_cmd("sleep 7 && myone themes -u")
hl.exec_cmd("myone --battery-monitor")
hl.exec_cmd("myone --monitor-daemon")