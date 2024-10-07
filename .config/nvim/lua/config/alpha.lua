local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local datetime = os.date(" %H:%M. ")
local num_plugins_loaded = require("lazy").stats().loaded

dashboard.section.header.val = require("config.utils.alpha-headers")

dashboard.section.buttons.val = {
	dashboard.button("e", "󰈔  New file", "<cmd>enew<CR>"),
	dashboard.button(
		"o",
		"󰈙  Recent Files",
		"<cmd>Telescope oldfiles<cr>"
	),
	dashboard.button(
		"f",
		"󰝰  Neotree",
		"<cmd>Neotree current<cr>"
	),
	dashboard.button("l", "󰒲  Lazy", "<cmd>Lazy<cr>"),
	dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
}

local footer = {
	type = "text",
	val = { "⚡" .. num_plugins_loaded .. " plugins loaded." },
	opts = { position = "center", hl = "Comment" },
}

local bottom_section = {
	type = "text",
	val = "Hi "
		.. require("config.utils").get_user()
		.. ","
		.. " It's"
		.. datetime
		.. "How are you doing today?",
	opts = {
		position = "center",
	},
}

local section = {
	header = dashboard.section.header,
	bottom_section = bottom_section,
	buttons = dashboard.section.buttons,
	footer = footer,
}

local opts = {
	layout = {
		{ type = "padding", val = 8 },
		section.header,
		{ type = "padding", val = 2 },
		section.buttons,
		{ type = "padding", val = 1 },
		section.bottom_section,
		{ type = "padding", val = 1 },
		section.footer,
	},
}

alpha.setup(opts)
