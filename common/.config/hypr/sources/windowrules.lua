-- WINDOW RULEs

hl.window_rule({ match = {class = ".*VSCodium.*"}, opacity = "0.9 0.9"})
hl.window_rule({ match = {class = ".*org.gnome.*"}, opacity = "0.85 0.85"})
hl.window_rule({ match = {class = ".*org.gnome.Snapshot.*"}, opacity = "1 1"})

hl.window_rule({ match = {class = ".*firefox.*"}, opacity = "1 1"})
hl.window_rule({ opacity = "0.90 0.90", match = {class = ".*Brave-browser.*"}})
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*code-oss.*"}})
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*Code.*"}})
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*code-url-handler.*"}})
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*code-insiders-url-handler.*"}})
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*kitty.*"}})
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*org.kde.dolphin.*"}})
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*org.kde.ark.*"}})
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*nwg-look.*"}})
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*qt5ct.*"}})
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*qt6ct.*"}})
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*kvantummanager.*"}})
hl.window_rule({ opacity = "0.80 0.70", match = {class = ".*pavucontrol.*"}})
hl.window_rule({ opacity = "0.80 0.70", match = {class = ".*blueman-manager.*"}})
hl.window_rule({ opacity = "0.80 0.70", match = {class = ".*nm-applet.*"}})
hl.window_rule({ opacity = "0.80 0.70", match = {class = ".*nm-connection-editor.*"}})
hl.window_rule({ opacity = "0.80 0.70", match = {class = ".*org.kde.polkit-kde-authentication-agent-1.*"}})
hl.window_rule({ opacity = "0.80 0.70", match = {class = ".*polkit-gnome-authentication-agent-1.*"}})
hl.window_rule({ opacity = "0.80 0.70", match = {class = ".*org.freedesktop.impl.portal.desktop.gtk.*"}})
hl.window_rule({ opacity = "0.80 0.70", match = {class = ".*org.freedesktop.impl.portal.desktop.hyprland.*"}})
hl.window_rule({ opacity = "0.70 0.70", match = {class = ".*[Ss]team.*"}})
hl.window_rule({ opacity = "0.70 0.70", match = {class = ".*steamwebhelper.*"}})
hl.window_rule({ opacity = "0.70 0.70", match = {class = ".*Spotify.*"}})
hl.window_rule({ opacity = "0.70 0.70", match = {initial_title = ".*Spotify Free.*"}})

hl.window_rule({ opacity = "0.90 0.90", match = {class = ".*com.github.rafostar.Clapper.*"}}) -- Clapper-G
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*com.github.tchx84.Flatseal.*"}}) --  Flatseal-G
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*hu.kramo.Cartridges.*"}}) -- Cartridges-G
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*com.obsproject.Studio.*"}}) --  # Obs-
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*gnome-boxes.*"}}) --  # Obs-
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*discord.*"}}) --  Discord-Electr
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*WebCord.*"}}) -- WebCord-Electr
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*ArmCord)$.*"}}) -- WebCord-Electr
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*app.drey.Warp.*"}}) -- Warp-G
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*net.davidotek.pupgui2.*"}}) -- ProtonUp-
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*yad.*"}}) -- Protontricks-G
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*Signal.*"}}) -- Signal-G
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*io.github.alainm23.planify.*"}}) --  planify-G
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*io.gitlab.theevilskeleton.Upscaler.*"}}) -- Upscaler-G
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*com.github.unrud.VideoDownloader.*"}}) -- VideoDownloader-G
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*io.gitlab.adhami3310.Impression.*"}}) -- Impression-G
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*io.missioncenter.MissionCenter.*"}}) -- MissionCenter-G
hl.window_rule({ opacity = "0.80 0.80", match = {class = ".*io.github.flattool.Warehouse.*"}}) -- Warehouse-G

-- FLOATING
hl.window_rule({ center=true, float=true, match = {initial_class = "(xdg-desktop-portal-gtk)(.*)"}})
hl.window_rule({ center=true, float=true, match = {title = "(Open File)(.*)"}})
hl.window_rule({ center=true, float=true, match = {title = "(Select a File)(.*)"}})
hl.window_rule({ center=true, float=true, match = {title = "(Open Folder)(.*)"}})
hl.window_rule({ center=true, float=true, match = {title = "(Save As)(.*)"}})
hl.window_rule({ center=true, float=true, match = {title = "(Library)(.*)"}})
hl.window_rule({ center=true, float=true, match = {title = "(File Upload)(.*)"}})
hl.window_rule({ center=true, float=true, match = {title = "(.*)(wants to save)"}})
hl.window_rule({ center=true, float=true, match = {title = "(.*)(wants to open)"}})
-- pavucontrol
hl.window_rule({ float=true, center=true, size= {"(monitor_w*.45)", "(monitor_h*.45)"}, match = {class = ".*pavucontrol.*"}})
hl.window_rule({ float=true, center=true, size= {"(monitor_w*.45)", "(monitor_h*.45)"}, match = {class = ".*org.pulseaudio.pavucontrol.*"}})
-- nm connection editor
hl.window_rule({ float=true, center=true, size= {"(monitor_w*.45)", "(monitor_h*.45)"}, match = {class = ".*nm-connection-editor.*"}})
-- KDE
hl.window_rule({ match = { class = ".*plasmawindowed.*" }, float = true })
hl.window_rule({ match = { class = "kcm_.*" }, float = true })
hl.window_rule({ size = { "(monitor_w*.60)", "(monitor_h*.65)" }, float=true, match = {class = "org.freedesktop.impl.portal.desktop.kde"}})
hl.window_rule({ float=true, match= {title = ".*Progress Dialog — Dolphin.*"}})
hl.window_rule({ float=true, match= {title = ".*Copying — Dolphin.*"}})
hl.window_rule({ float=true, match= {class = ".*kvantummanager.*"}})
hl.window_rule({ float=true, match= {class = ".*qt5ct.*"}})
hl.window_rule({ float=true, match= {class = ".*qt6ct.*"}})
hl.window_rule({ float=true, match= {class = ".*org.kde.ark.*"}})

-- polkit
hl.window_rule({ float=true, match={class = ".*polkit-gnome-authentication-agent-1.*"}})
-- others
hl.window_rule({ float=true, center=true, match={title = ".*top.*"}})
hl.window_rule({ float=true, center=true, match={title = ".*btop.*"}})
hl.window_rule({ float=true, center=true, match={title = ".*htop.*"}})
hl.window_rule({ float=true, center=true, match={class = ".*nwg-look.*"}})
hl.window_rule({ float=true, center=true, match={class = ".*Signal.*"}}) -- Signal-Gtk
hl.window_rule({ float=true, center=true, match={class = ".*com.github.rafostar.Clapper.*"}}) -- Clapper-Gtk
hl.window_rule({ float=true, center=true, match={class = ".*app.drey.Warp.*"}}) -- Warp-Gtk
hl.window_rule({ float=true, center=true, match={class = ".*net.davidotek.pupgui2.*"}}) -- ProtonUp-Qt
hl.window_rule({ float=true, center=true, match={class = ".*yad.*"}}) -- Protontricks-Gtk
hl.window_rule({ float=true, center=true, match={class = ".*eog.*"}}) -- Imageviewer-Gtk
hl.window_rule({ float=true, match={title = ".*Keyring properties.*"}}) -- Gnome keyring properties window

-- my unique windowrules
hl.window_rule({ float=true, size = {600, 350}, center=true, match={title = ".*change-sink.*"}})
hl.window_rule({ float=true, size = {"(monitor_w*0.4)", ("monitor_h*0.4")}, center=true, match={title = ".*wiremix.*"}}) -- wiremix
hl.window_rule({ float=true, size = {"(monitor_w*0.2)", ("monitor_h*0.3")}, center=true, match={class = ".*blueman-manager.*"}}) -- bluetooth manager
hl.window_rule({ float=true, size = {"(monitor_w*0.4)", ("monitor_h*0.5")}, center=true, match={title = ".*nwg-displays.*"}}) -- multi monitor control/setting app
hl.window_rule({ float=true, size = {"(monitor_w*0.4)", ("monitor_h*0.4")}, center=true, match={title = ".*MyOne-Update.*"}}) -- Myone update consent popup rule
hl.window_rule({ float=true, size = {"(monitor_w*0.4)", ("monitor_h*0.4")}, center=true, match={title = ".*MyOne-Dependency-Install.*"}}) -- Myone update consent popup rule

-- Picture-in-Picture
hl.window_rule({ match={title = ".*[Pp]icture[- ]?[Ii]n[- ]?[Pp]icture.*"}, float=true})
hl.window_rule({ match={title = ".*[Pp]icture[- ]?[Ii]n[- ]?[Pp]icture.*"}, keep_aspect_ratio=true})
hl.window_rule({ match={title = ".*[Pp]icture[- ]?[Ii]n[- ]?[Pp]icture.*"}, move={"(monitor_w*.73)", "(monitor_h*.72)"}})
hl.window_rule({ match={title = ".*[Pp]icture[- ]?[Ii]n[- ]?[Pp]icture.*"}, size={"(monitor_w*.25)", "(monitor_h*.25)"}})
hl.window_rule({ match={title = ".*[Pp]icture[- ]?[Ii]n[- ]?[Pp]icture.*"}, float=true })
hl.window_rule({ match={title = ".*[Pp]icture[- ]?[Ii]n[- ]?[Pp]icture.*"}, pin=true })

-- Tearing
hl.window_rule({ match={title = ".*\\.exe"}, immediate=true})
hl.window_rule({ match={title = ".*minecraft.*"}, immediate=true})
hl.window_rule({ match={class = ".*steam_app.*"}, immediate=true})

-- Fix Jetbrain IDEs focus/rerendering problem
hl.window_rule({ match={class = "^jetbrains-.*$", float=true, title = "^$|^\\s$|^win\\d+$" }, no_initial_focus=true})

-- No shadow for tiled windows (matches windows that are not floating).
hl.window_rule({ match={ float=false }, no_shadow=true})

-- LAYER RULEs
hl.layer_rule({ blur=true, ignore_alpha=0, match={namespace = "^(vicinae)$"}})
hl.layer_rule({ blur=true, ignore_alpha=0, match={namespace = "^(rofi)$"}})
hl.layer_rule({ blur=true, ignore_alpha=0, match={namespace = "^(swaync-notification-window)$"}})
hl.layer_rule({ blur=true, ignore_alpha=0, match={namespace = "^(swaync-control-center)$"}})
hl.layer_rule({ blur=true, match={namespace = "^(logout_dialog)$"}})
-- for launcher speed
hl.layer_rule({ match={namespace = "gtk4-layer-shell"}, no_anim=true})

