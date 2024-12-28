-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "rose-pine"
config.font = wezterm.font("JetBrains Mono", { weight = "Regular" })
config.font_size = 15
config.line_height = 1.2
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.keys = {
	{
		key = "K",
		mods = "SUPER",
		action = act.ClearScrollback("ScrollbackAndViewport"),
	},
	{
		key = "LeftArrow",
		mods = "OPT",
		action = act.SendKey({
			key = "b",
			mods = "ALT",
		}),
	},
	{
		key = "RightArrow",
		mods = "OPT",
		action = act.SendKey({ key = "f", mods = "ALT" }),
	},
}

-- and finally, return the configuration to wezterm
return config
