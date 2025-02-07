return {
    'neovim/nvim-lspconfig',
    'simrat39/rust-tools.nvim',
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    'saecki/crates.nvim',
    'hrsh7th/cmp-nvim-lsp',

    -- Useful completion sources:
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'hrsh7th/cmp-vsnip',             
    'hrsh7th/cmp-path',                   
    'hrsh7th/cmp-buffer',               
    'hrsh7th/vim-vsnip',
    tag = 'stable',
    config = function()
        require('crates').setup()
    end,
}
