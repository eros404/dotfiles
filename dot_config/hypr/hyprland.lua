hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("QT_QPA_PLATFORMTHEME", "gtk3")
hl.env("QT_QPA_PLATFORMTHEME_QT6", "gtk3")

hl.env("XCURSOR_THEME", "capitaine-cursors")
hl.env("XCURSOR_SIZE", "32")

hl.config({
	general = {
		gaps_in = 0,
		gaps_out = 0,
		layout = "scrolling",
		border_size = 1,
		col = {
			active_border = "#ffb77b",
			inactive_border = "#9e8e82",
		},
	},

	scrolling = {
  	fullscreen_on_one_column = true,
	},

	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
	},
})

hl.config({
	input = {
		kb_layout = "fr",
		numlock_by_default = true,
		follow_mouse = 0,
	}
})

hl.animation({ leaf = "global", enabled = true, speed = 3, bezier = "default" })

require("monitors")
require("keybinds")

hl.on("hyprland.start", function()
	hl.exec_cmd("systemctl --user start hyprland-session.target")
end)

hl.on("hyprland.shutdown", function()
	os.execute("systemctl --user stop hyprland-session.target && sleep 0.1")
end)

