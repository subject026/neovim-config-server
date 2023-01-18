vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'eandrju/cellular-automaton.nvim'
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
