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
		follow_mouse = 1,
		touchpad = {
			natural_scroll = false,
		},
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
			range = 12,
			render_power = 6,
			color = "rgba(0,0,0,0.19)",
			offset = { 0, 0 },
			scale = 1
		},

		blur = {
			enabled = true,
			size = 3,
			passes = 2,
			noise = 0.012,
			contrast = 0.9,
			new_optimizations = true
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
