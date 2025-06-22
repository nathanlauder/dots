local noctis = {
	"iagorrr/noctishc.nvim",
	config = function()
		require("noctishc").setup()
		vim.cmd.colorscheme("noctishc")
	end,
}

local night_owl = {
	"oxfist/night-owl.nvim",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		-- load the colorscheme here
		require("night-owl").setup()
		vim.cmd.colorscheme("night-owl")
	end,
}

local tokyodark = {
	"tiagovla/tokyodark.nvim",
	opts = {
		-- transparent_background = true
		styles = {
			comments = { italic = true }, -- style for comments
			keywords = { italic = true }, -- style for keywords
			identifiers = { italic = true }, -- style for identifiers
			functions = {}, -- style for functions
			variables = {}, -- style for variables
		},
	},
	config = function(_, opts)
		require("tokyodark").setup(opts) -- calling setup is optional
		vim.cmd([[colorscheme tokyodark]])
	end,
}

return tokyodark
