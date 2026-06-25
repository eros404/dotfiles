hl.config({
	general = {
		gaps_in = 3,
		gaps_out = 6,
		layout = "scrolling",
		border_size = 2,
	},

	input = {
		kb_layout = "fr",
		numlock_by_default = true,
		follow_mouse = false,
	},

	scrolling = {
  	fullscreen_on_one_column = true,
	},

	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
	},

	decoration = {
		rounding = 10,
  	rounding_power = 2,

		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = 0xee1a1a1a,
		},

		blur = {
			enabled = true,
			size = 3,
			passes = 2,
			vibrancy = 0.1696,
    },
	},
})

hl.animation({ leaf = "global", enabled = true, speed = 3, bezier = "default" })

require("monitors")
require("keybinds")
require("environments")
require("rules")

hl.on("hyprland.start", function()
	hl.exec_cmd("noctalia")
end)

-- For Noctalia Color templates
require("noctalia").apply_theme()
