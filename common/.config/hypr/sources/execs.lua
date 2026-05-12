-- EXECS (COMMANDS TO EXECUTE AT STARTUP)
hl.dsp.exec_cmd(SCRIPTS_DIR_PATH+"/resetxdgportal.sh")
hl.dsp.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP") -- for XDPH
hl.dsp.exec_cmd("dbus-update-activation-environment --systemd --all") -- for XDPH
hl.dsp.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP") -- for XDPH
hl.dsp.exec_cmd(SCRIPTS_DIR_PATH+"/polkitkdeauth.sh") -- authentication dialogue for GUI apps
hl.dsp.exec_cmd("gnome-keyring-daemon --start --components=secrets")
hl.dsp.exec_cmd("blueman-applet") -- systray app for Bluetooth
hl.dsp.exec_cmd("udiskie --no-automount --smart-tray") -- front-end that allows to manage removable media
hl.dsp.exec_cmd("nm-applet --indicator") -- systray app for Network/Wifi
hl.dsp.exec_cmd("tailscale-systray")
hl.dsp.exec_cmd("swaync") -- sway notification daemon and center
hl.dsp.exec_cmd("swayosd-server") -- osd for volume and brightness changes - needs its systemd service to run 
hl.dsp.exec_cmd("waybar") -- launch the system bar
hl.dsp.exec_cmd("hypridle")
hl.dsp.exec_cmd("awww-daemon")
hl.dsp.exec_cmd("sleep 5 && myone --update")
hl.dsp.exec_cmd("sleep 7 && myone themes -u")
hl.dsp.exec_cmd("myone --battery-monitor")
hl.dsp.exec_cmd("myone --monitor-daemon")