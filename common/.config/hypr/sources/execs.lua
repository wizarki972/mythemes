-- EXECS (COMMANDS TO EXECUTE AT STARTUP)
hl.on("hyprland.start", function ()
    local commands = {
        SCRIPTS_DIR_PATH .. "/resetxdgportal.sh",
        "dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP", -- for XDPH
        "dbus-update-activation-environment --systemd --all", -- for XDPH
        "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP", -- for XDPH
        SCRIPTS_DIR_PATH .. "/polkitkdeauth.sh", -- authentication dialogue for GUI apps
        "gnome-keyring-daemon --start --components=secrets",
        "blueman-applet", -- systray app for Bluetooth
        "udiskie --no-automount --smart-tray", -- front-end that allows to manage removable media
        "nm-applet --indicator", -- systray app for Network/Wifi
        "tailscale-systray",
        "swaync", -- sway notification daemon and center
        "swayosd-server", -- osd for volume and brightness changes - needs its systemd service to run 
        "waybar", -- launch the system bar
        "hypridle",
        "awww-daemon",
        "sleep 5 && myone --update",
        "sleep 7 && myone themes -u",
        "myone --battery-monitor",
        "myone --monitor-daemon",
    }
    for i = 1, #commands do
        hl.exec_cmd(commands[i])
    end
end)