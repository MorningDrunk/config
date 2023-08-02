local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer packet manager
  use {
    'svrana/neosolarized.nvim', -- Theme color
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'hoob3rt/lualine.nvim' -- Statusline
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use ({"L3MON4D3/LuaSnip", run = "make install_jsregexp"}) -- Snippet
  use 'neovim/nvim-lspconfig' -- LSP
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use {
    'nvim-treesitter/nvim-treesitter',
     run = 'TSUpdate'
  }

  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client

  use 'glepnir/lspsaga.nvim' -- LSP UIs

  use 'norcalli/nvim-colorizer.lua' -- HEX color colorizer
  use 'akinsho/nvim-bufferline.lua' -- Beautiful Tabs

  use 'windwp/nvim-autopairs' -- Pairing brackets and paranthesis
  use 'windwp/nvim-ts-autotag' -- Automatically ending tags

  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim' -- Telescope finder
  use 'nvim-telescope/telescope-file-browser.nvim' -- Telescope file finder
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
end)
