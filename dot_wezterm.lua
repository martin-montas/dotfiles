local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Tokyo Night (Gogh)'
config.font_size = 18.5
font = wezterm.font('Hack Nerd Font Mono')

-- config.window_background_gradient = 1.0
-- Maximize on start
config.initial_cols = 192
config.initial_rows = 53

-- Don't ask for confirmation when closing the window
config.window_close_confirmation = "NeverPrompt"

-- disable ligatures
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
-- Padding
config.window_padding = {
    left = 8,
    right = 8,
    top = 26,
    bottom = 0,
}

-- Transparent background
config.window_background_opacity = 0.92
config.use_fancy_tab_bar = true
config.term  = 'xterm-256color'

config.default_prog = {
'/usr/sbin/zsh',
'-c',
'tmux new -s zensh'
}
config.enable_tab_bar = false

-- faster terminal 
animation_fps = 60
max_fps = 120
front_end = "OpenGL"
enable_scroll_bar = false
allow_gpu_rasterization = true
scrollback_lines = 5000
harfbuzz_features = {}
dpi = 96

return config
