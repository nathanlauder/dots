-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	-- require 'plugins.format.indent_line',
	-- require 'plugins.neo-tree',
	require("plugins.treesitter"),
	require("plugins.oil"),
	require("plugins.commenter"),
	require("plugins.rust"),
	require("plugins.colorscheme"),
	require("plugins.gitsigns"),
	require("plugins.lazydev"),
	require("plugins.pending-keybinds"),
	require("plugins.trouble"),

	-- telescope before mainlsp bc lsp uses telescope
	require("plugins.telescope"),
	require("plugins.mainlsp"),

	-- Formatters
	require("plugins.format.autopairs"),
	require("plugins.format.autoformat"),
	require("plugins.format.blink"),
	require("plugins.format.comments"),
	-- require("plugins.format.autocomplete"),

	"tpope/vim-sleuth", -- detect tabstop and shiftwidth automagically
})
