local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'eandrju/cellular-automaton.nvim'
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  
  use ({
    "olimorris/onedarkpro.nvim",
    config = function() 
	    vim.cmd("colorscheme onedark")
    end
    })

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use('tpope/vim-fugitive')

  if packer_bootstrap then
    require('packer').sync()
  end
end)
