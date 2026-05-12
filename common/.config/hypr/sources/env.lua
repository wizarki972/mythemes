hl.env("PATH", "$PATH:" .. SCRIPTS_DIR_PATH)

-- XDG VARIABLES
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("XDG_STATE_HOME", "/home/saran/.local/state")
hl.env("XDG_SRC_HOME", "/home/saran/.local/src")
hl.env("XDG_DATA_HOME", "/home/saran/.local/share")
hl.env("XDG_CONFIG_HOME", "/home/saran/.config")
hl.env("XDG_CACHE_HOME", "/home/saran/.cache")


-- Toolkit Backends
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("GDK_BACKEND", "wayland,x11")
hl.env("SDL_VIDEODRIVER", "wayland,x11,windows")
hl.env("CLUTTER_BACKEND", "wayland")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- Themes
hl.env("GDK_SCALE","1")
hl.env("QT_STYLE_OVERRIDE","kvantum")
hl.env("QT_QPA_PLATFORMTHEME","qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION","1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR","1")
hl.env("XCURSOR_SIZE","24")
-- env = XCURSOR_THEME, $cursorTheme

-- Others
hl.env("MOZ_ENABLE_WAYLAND","1")
hl.env("_JAVA_AWT_WM_NONREPARENTING", "1")
hl.env("ZSH_HISTORY", "$XDG_STATE_HOME/zsh/.zsh_history")