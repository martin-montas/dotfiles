local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'AlienBlood'
config.font_size = 19.0
config.font = wezterm.font('Hack Nerd Font Mono')
config.enable_tab_bar = false

config.window_padding = {
  left = 0.,
  right = 0.,
  top = 0.,
  bottom = 0.,
}

config.default_prog = { "tmux" }

return config
