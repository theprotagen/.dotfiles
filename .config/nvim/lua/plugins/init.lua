local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd('packadd packer.nvim')
    return true
  end
  return false
end

local packer_bootsrap = ensure_packer()

return require('packer').startup(function(use)
  local config_path = function(name)
    return string.format('require("plugins.%s")', name)
  end

  -- Packer can manage itself
  use({ 'wbthomason/packer.nvim' })

  -- LSP
  use({ 'neovim/nvim-lspconfig' })
  use({ 'jose-elias-alvarez/null-ls.nvim', config = config_path('null-ls') })

  -- LSP installers
  use({ 'williamboman/mason.nvim', config = config_path('mason') })
  use({ 'williamboman/mason-lspconfig.nvim', config = config_path('mason-lspconfig') })

  -- Completion
  use({ 'hrsh7th/cmp-nvim-lsp' })
  use({ 'hrsh7th/cmp-buffer' })
  use({ 'hrsh7th/cmp-path' })
  use({ 'hrsh7th/cmp-cmdline' })
  use({ 'hrsh7th/nvim-cmp' })
  use({ 'hrsh7th/cmp-vsnip' })
  use({ 'hrsh7th/vim-vsnip' })
  
  -- Diagnostics
  use({ 'folke/trouble.nvim' })

  -- Syntax
  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = config_path('nvim-treesitter') })
  use({ 'JoosepAlviste/nvim-ts-context-commentstring' })
  use({ 'lewis6991/nvim-treesitter-context' })

  -- Fuzzy finder
  use({ 'nvim-telescope/telescope.nvim' })

  -- File explorer
  use({ 'nvim-tree/nvim-tree.lua', config = config_path('nvim-tree') })

  -- Colors
  use ({ 'NvChad/nvim-colorizer.lua', config = config_path('colorizer') })

  -- Statusline
  use({ 'nvim-lualine/lualine.nvim', config = config_path('lualine') })

  -- Bufferline
  use({ 'romgrk/barbar.nvim', config = config_path('barbar') })

  -- Cursorline
  use({ 'yamatsum/nvim-cursorline', config = config_path('nvim-cursorline') })

  -- Editing support
  use({ 'windwp/nvim-autopairs', config = config_path('nvim-autopairs') })
  use({ 'windwp/nvim-ts-autotag', config = config_path('nvim-ts-autotag') })
  use({ 'p00f/nvim-ts-rainbow', config = config_path('nvim-ts-rainbow') })

  -- Icons
  use({ 'kyazdani42/nvim-web-devicons' })

  -- Gruvbox
  use ({ 'gruvbox-community/gruvbox' })

  -- Utilities
  use({ 'nvim-lua/plenary.nvim' })
  use({ 'nvim-lua/popup.nvim' })
  use({ 'lewis6991/impatient.nvim' })

  -- Automatically setup the configuration
  if packer_bootstrap then
    require('packer').sync()
  end
end)
