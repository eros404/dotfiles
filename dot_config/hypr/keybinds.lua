hl.bind("SUPER + t", hl.dsp.exec_cmd("ghostty"))
hl.bind("SUPER + e", hl.dsp.exec_cmd("nautilus"))
hl.bind("SUPER + b", hl.dsp.exec_cmd("flatpak run app.zen_browser.zen"))

hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }))

hl.bind("SUPER + CTRL + left", hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + CTRL + right", hl.dsp.window.move({ direction = "right" }))
hl.bind("SUPER + CTRL + up", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + CTRL + down", hl.dsp.window.move({ direction = "down" }))

hl.bind("SUPER + page_up", hl.dsp.focus({workspace = "r-1"}))
hl.bind("SUPER + page_down", hl.dsp.focus({workspace = "r+1"}))
hl.bind("SUPER + CTRL + page_up", hl.dsp.window.move({workspace = "r-1"}))
hl.bind("SUPER + CTRL + page_down", hl.dsp.window.move({workspace = "r+1"}))

hl.bind("SUPER + q", hl.dsp.window.close())
hl.bind("SUPER + r", hl.dsp.layout("colresize +conf"))
hl.bind("SUPER + f", hl.dsp.window.fullscreen({mode = "maximized", action = "toggle"}))
hl.bind("SUPER + SHIFT + f", hl.dsp.window.fullscreen({mode = "fullscreen", action = "toggle"}))

hl.bind("SUPER + space", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher"))
hl.bind("SUPER + x", hl.dsp.exec_cmd("noctalia msg panel-toggle session"))
hl.bind("SUPER + comma", hl.dsp.exec_cmd("noctalia msg settings-toggle"))
hl.bind("SUPER + v", hl.dsp.exec_cmd("noctalia msg panel-toggle clipboard"))
hl.bind("SUPER + c", hl.dsp.exec_cmd("noctalia msg panel-toggle control-center"))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("noctalia msg volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("noctalia msg volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("noctalia msg volume-mute"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("noctalia msg media toggle"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("noctalia msg media toggle"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("noctalia msg media previous"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("noctalia msg media next"))
hl.bind("XF86AudioStop", hl.dsp.exec_cmd("noctalia msg media stop"))

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("noctalia msg brightness-up"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("noctalia msg brightness-down"))

