local wezterm = require("wezterm")
local colors = require("colors.custom")
local config = {}

config.color_scheme = 'Kanagawa (Gogh)'
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.font_size = 15.0
config.front_end = "WebGpu"
config.enable_scroll_bar = true

config.background = {
  {
     source = { File = wezterm.config_dir .. '/backdrop/pastel-samurai.jpg' },
  },
  {
     source = { Color = colors.background },
     height = '100%',
     width = '100%',
     opacity = 0.99,
  },
}

return config
