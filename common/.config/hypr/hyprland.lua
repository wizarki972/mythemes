SCRIPTS_DIR_PATH = "/home/saran/.local/share/myone/scripts"

-- initial requirements
-- configure monitors in monitors.lua
require("monitors")
require("colors")

-- GENERAL
hl.config({
    general = {
        gaps_in = 1,
        gaps_out = 1,
        
        border_size = 2,
        col = {
            active_border_color = BORDER_COLOR,
        },
        
        layout = "scrolling",
        resize_on_border = true,
        extend_border_grab_area = 20,
    },

    animations = {
        enabled = true
    },
    
    decoration = {
        rounding = 10,
        rounding_power = 4.0,
        
        dim_inactive = true,
        dim_strength = 0.2,
        dim_special = 0.8,
        
        active_opacity = 1.0,
        inactive_opacity = 0.8,
        fullscreen_opacity = 1.0,
        
        shadow = {
            enabled = false
        },
        
        blur = {
            enabled = true,
            
            size = 4,
	        passes = 3,
	        noise = 0.02,
	        contrast = 1.0,
	        vibrancy = 1.0,
	        brightness = 0.6,
            
            new_optimizations = true,
            ignore_opacity = true,
	        xray = false,
	        special = false,
            
            popups = true,
            popups_ignorealpha = 0.6,
            input_methods = true,
            input_methods_ignorealpha = 0.8,
        },
    },
    
    input = {
        kb_layout = "us",
        repeat_delay = 250,
        repeat_rate = 35,
        numlock_by_default = true,
        
        follow_mouse = 1,
        sensitivity = 0.3,
        force_no_accel = 1,
        
        focus_on_close = 1,
        
        touchpad = {
            natural_scroll = true,
	        disable_while_typing = false,
	        tap_to_click = true,
        },        
    },
    
    scrolling = {
        focus_fit_method = 1,
        follow_min_visible = 0.05,
        column_width = 0.95,
    },
    
    debug = {
        vfr = true,
        disable_logs = false,
	    disable_time = false,
    },
    
    misc = {
        vrr = 0,
        
        animate_manual_resizes = false,
        animate_mouse_windowdragging = false,
        
        disable_splash_rendering = true,
        disable_hyprland_logo = true,
        force_default_wallpaper = 0,
        
        on_focus_under_fullscreen = 2,
        allow_session_lock_restore = true,
        middle_click_paste = false,
        focus_on_activate = true,
        session_lock_xray = true,
        
        mouse_move_enables_dpms = true,
        key_press_enables_dpms = true,
    },
})


-- MISC
hl.config({
    xwayland = {
        force_zero_scaling = true
    }
})

-- SOURCES
require("sources.environment")
require("sources.execs")
require("sources.animations")
require("sources.keybindings")
require("sources.windowrules")
require("sources.gestures")
require("sources.misc")
require("workspaces")

-- USER PREFERENCES
require("userprefs")