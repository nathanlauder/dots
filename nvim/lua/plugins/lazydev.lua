-- LSP Plugins
return {
	'folke/lazydev.nvim',
	ft = 'lua',
	opts = {
		library = {
			-- Load luvit types when vim.uv is found
			{ path = '${3rd}/luv/library', words = { 'vim%.uv' } },
		}
	},
}