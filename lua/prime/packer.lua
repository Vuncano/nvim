--:PackerSync- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

--colors
  use 'marko-cerovac/material.nvim'
  use 'folke/tokyonight.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})

  use('mbbill/undotree')

  use('tpope/vim-fugitive')

--  use {
--	  'VonHeikemen/lsp-zero.nvim',
--	  branch = 'v2.x',
--	  requires = {
--		  -- LSP Support
--		  {'neovim/nvim-lspconfig'},             -- Required
--		  {                                      -- Optional
--		  'williamboman/mason.nvim',
--		  run = function()
--			  pcall(vim.cmd, 'MasonUpdate')
--		  end,
--	  },
--	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

--	  -- Autocompletion
--	  {'hrsh7th/nvim-cmp'},     -- Required
--	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
--	  {'L3MON4D3/LuaSnip'},     -- Required
--  }
--}


	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-cmdline"
    use "saadparwaiz1/cmp_luasnip"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"

    use "L3MON4D3/LuaSnip"
    use "rafamadriz/friendly-snippets"
    use "honza/vim-snippets"

 -- LSP
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/mason.nvim" -- simple to use language server installer
    use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
    use "jose-elias-alvarez/null-ls.nvim" -- LSP diagnostics and code actions

    use "prabirshrestha/vim-lsp"
    use "mattn/vim-lsp-settings"

    use 'ThePrimeagen/vim-be-good'

    use 'lervag/vimtex'
end)
