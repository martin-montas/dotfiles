local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'tokyonight'
config.font_size = 19.5
font = wezterm.font('Hack Nerd Font Mono')
config.colors = {
    background = "#14151c"  
  }

config.use_fancy_tab_bar = true
config.term  = 'xterm-256color'

config.default_prog = { "tmux" }
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
