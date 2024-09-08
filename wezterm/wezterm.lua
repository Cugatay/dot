local wezterm = require "wezterm"
local action = wezterm.action

local config = wezterm.config_builder()

-- Color scheme:
config.color_scheme = 'Tokyo Night'
-- config.color_scheme = 'Tokyo Night Day'
-- config.color_scheme = 'Batman'

-- Bar settings
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

-- Window paddings
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

-- Mac key repetition error fix:
config.use_ime = false

-- Fonts
config.font = wezterm.font_with_fallback({
  { family = "MesloLGM Nerd Font Mono", scale = 1.1 }
})

-- Removing decorations
config.window_decorations = "RESIZE"

-- Keybindings
config.keys = {
  {
    key = 'd',
    mods = 'CMD',
    action = action.SplitHorizontal { domain = "CurrentPaneDomain" },
  },
  {
    key = 'd',
    mods = 'CMD|SHIFT',
    action = action.SplitVertical { domain = "CurrentPaneDomain" },
  },
  {
    key = 'w',
    mods = 'CMD',
    action = action.CloseCurrentPane { confirm = true },
  },
  {
    key = 'f',
    mods = 'CMD',
    action = action.TogglePaneZoomState,
  },
  {
    key = 'h',
    mods = 'CMD',
    action = action.ActivatePaneDirection("Left"),
  },
  {
    key = 'j',
    mods = 'CMD',
    action = action.ActivatePaneDirection("Down"),
  },
  {
    key = 'k',
    mods = 'CMD',
    action = action.ActivatePaneDirection("Up"),
  },
  {
    key = 'l',
    mods = 'CMD',
    action = action.ActivatePaneDirection("Right"),
  },

  {
    key = 'h',
    mods = 'CMD|CTRL',
    action = action.AdjustPaneSize { "Left", 10 },
  },
  {
    key = 'j',
    mods = 'CMD|CTRL',
    action = action.AdjustPaneSize { "Down", 10 },
  },
  {
    key = 'k',
    mods = 'CMD|CTRL',
    action = action.AdjustPaneSize { "Up", 10 },
  },
  {
    key = 'l',
    mods = 'CMD|CTRL',
    action = action.AdjustPaneSize { "Right", 10 },
  },
}

-- Background settings
-- config.window_background_opacity = 0.8
-- config.macos_window_background_blur = 20

-- config.webgpu_preferred_adapter = {
--   backend = "Vulkan",
--   device_type = "Cpu",
--   name = "llvmpipe (LLVM 14.0.0, 256 bits)"
-- }

-- config.front_end = "WebGpu"
-- config.freetype_load_flags = 'NO_HINTING'

return config
