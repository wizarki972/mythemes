local mainMod = "SUPER"
local term = "kitty"
local codeEditor = "codium"
local file = "nautilus"
local browser = "helium-browser"

-- deps wl-clipboard hyprpicker myone systemd hyprlock waybar
-- color picker
hl.bind(mainMod .. " + ALT + C", function ()
   hl.dispatch(hl.dsp.exec_cmd("hyprpicker | wl-copy"))
end)

-- windows/session actions
hl.bind(mainMod .. " + Q", hl.dsp.window.kill())
hl.bind("ALT + F4", hl.dsp.window.kill())
hl.bind(mainMod .. " + Delete", hl.dsp.exec_cmd("loginctl terminate-user"))
hl.bind(mainMod .. " + W", hl.dsp.window.float({action = "toggle"}))
-- fullscreen window binds
hl.bind(mainMod .. " + RETURN", hl.dsp.window.fullscreen_state({internal=2, client=0, action = "toggle"}))
hl.bind(mainMod .. " + ALT + RETURN", hl.dsp.window.fullscreen({mode = "fullscreen", action="toggle"}))

hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + backspace", hl.dsp.exec_cmd("myone --logout 1"))
hl.bind("ALT + BACKSPACE", hl.dsp.exec_cmd("myone --logout 2"))
hl.bind("CTRL + ALT + W", hl.dsp.exec_cmd("killall waybar || waybar"))

-- SROLLING LAYOUT
hl.bind(mainMod .. " + SHIFT + period", hl.dsp.layout("swapcol r"))
hl.bind(mainMod .. " + SHIFT + comma", hl.dsp.layout("swapcol l"))
hl.bind(mainMod .. " + space", hl.dsp.layout("colresize 1.0"))
hl.bind(mainMod .. " + ALT + space",  hl.dsp.layout("colresize 0.5"))
hl.bind(mainMod .. " + CTRL + ALT + space", hl.dsp.layout("fit visible"))
hl.bind(mainMod .. " + slash", hl.dsp.layout("promote"))
-- Move/Change window focus (SCROLLING)
hl.bind(mainMod .. " + LEFT", hl.dsp.layout("focus l"))
hl.bind(mainMod .. " + RIGHT", hl.dsp.layout("focus r"))
hl.bind(mainMod .. " + UP", hl.dsp.layout("focus u"))
hl.bind(mainMod .. " + DOWN", hl.dsp.layout("focus d"))
hl.bind("ALT + TAB", hl.dsp.window.cycle_next(), {release=true})

-- Switching Workspaces
hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace=1 }))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace=2 }))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace=3 }))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace=4 }))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace=5 }))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace=6 }))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace=7 }))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace=8 }))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace=9 }))
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace=10 }))
-- relative workspace switching
hl.bind(mainMod .. " + CTRL + DOWN", hl.dsp.focus({workspace="r+1"}))
hl.bind(mainMod .. " + CTRL + UP", hl.dsp.focus({workspace="r-1"}))
-- Move to the first empty workspace
-- hl.bind(mainMod .. " + CTRL + DOWN", hl.dsp.focus({workspace="empty"}))

-- Move focused window to a relative workspace
hl.bind(mainMod .. " + CTRL + ALT + DOWN", hl.dsp.window.move({workspace="r+1", follow=true}))
hl.bind(mainMod .. " + CTRL + ALT + UP", hl.dsp.window.move({workspace="r-1", follow=true}))
hl.bind(mainMod .. " + ALT + DOWN", hl.dsp.window.move({workspace="r+1", follow=false}))
hl.bind(mainMod .. " + ALT + UP", hl.dsp.window.move({workspace="r-1", follow=false}))
-- Move focused window to a workspace
hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace=1 , follow=true }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace=2 , follow=true }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace=3 , follow=true }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace=4 , follow=true }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace=5 , follow=true }))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace=6 , follow=true }))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace=7 , follow=true }))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace=8 , follow=true }))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace=9 , follow=true }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace=10 , follow=true }))

-- Scroll through existing workspaces
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({workspace="e+1"}))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({workspace="e-1"}))

-- Drag/Resize focused window
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), {mouse=true})
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), {mouse=true})
hl.bind(mainMod .. " + Z", hl.dsp.window.drag())
hl.bind(mainMod .. " + X", hl.dsp.window.resize())

-- Move/Switch to special workspace (scratchpad)
hl.bind("ALT + SUPER + SHIFT + code:201", hl.dsp.window.move({ workspace="special:default" })) -- ALT + coPilot
hl.bind("SUPER + SHIFT + code:201", hl.dsp.workspace.toggle_special("default")) -- coPilot
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace="special:default" }))
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("default"))

-- Wallpaper
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("myone wallpapers -m"))

-- Application shortcuts
-- hl.bind(mainMod+" + T", hl.dsp.exec_cmd(term)) -- rebind it to theme changer later
hl.bind(mainMod .. " + K", hl.dsp.exec_cmd(term))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(file))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd(codeEditor))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))

hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("/home/saran/.config/rofi/bin/launcher"))
hl.bind(mainMod .. " + SHIFT + V", hl.dsp.exec_cmd("pkill -x rofi || " .. SCRIPTS_DIR_PATH .. "/shell_history.sh"))

-- AUDIO CONTROLs
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_SINK@ toggle && myone --volume-osd sink"), { locked=true, release=true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_SOURCE@ toggle && myone --volume-osd source"), { locked=true, repeating=true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl  set-volume @DEFAULT_SINK@ 5%- -l 1.0 && myone --volume-osd sink "), { locked=true, repeating=true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl  set-volume @DEFAULT_SINK@ 5%+ -l 1.0 && myone --volume-osd sink "), { locked=true, repeating=true })

-- Brightness control
hl.bind("XF86MonBrightnessup", hl.dsp.exec_cmd("myone --bright +5%"), { locked=true, repeating=true })
hl.bind("XF86MonBrightnessdown", hl.dsp.exec_cmd("myone --bright -5%"), { locked=true, repeating=true })

-- Media control
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked=true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked=true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked=true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked=true })

-- Group control
hl.bind(mainMod .. " + CTRL + J", hl.dsp.group.move_window({into_or_create_group = "LEFT"}))
hl.bind(mainMod .. " + CTRL + K", hl.dsp.group.move_window({out_of_group = true}))
hl.bind(mainMod .. " + CTRL + L", hl.dsp.group.move_window({into_or_create_group = "RIGHT"}))

-- Screenshot/Screencapture
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("myone --screenshot"))
hl.bind("Print", hl.dsp.exec_cmd("myone --screenshot"))
hl.bind("XF86Cut", hl.dsp.exec_cmd("myone --screenshot"))



