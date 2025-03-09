-- Pull in the wezterm API
local wezterm = require 'wezterm'
--
-- -- This will hold the configuration.
local config = wezterm.config_builder()

local mux = wezterm.mux

wezterm.on("gui-startup", function ()
  local tab, pane, window = mux.spawn_window{}
  window:gui_window():maximize()
end)
--
--
config.color_scheme = 'Material Darker (base16)'

config.font_size = 15

config.native_macos_fullscreen_mode = true
--
-- -- and finally, return the configuration to wezterm
return config
