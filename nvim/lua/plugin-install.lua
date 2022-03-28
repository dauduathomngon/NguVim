local fn = vim.fn

-- Lệnh clone của packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print "Đã install xong packer, chuẩn bị mở NguVim :>"
  vim.cmd [[packadd packer.nvim]]
end

-- Lệnh tự động của packer
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- Nhắc nhở khi bị lỗi
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  print("Packer đã bị lỗi")
  return
end

-- Hiện packer trên cửa sổ 
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}
-- Install cấc Plugins tại đây
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	-- Vim-comment
	use 'terrortylor/nvim-comment'
	-- Nvim-tree
	use {
	'kyazdani42/nvim-tree.lua',
    	requires = {
      	'kyazdani42/nvim-web-devicons', -- optional, for file icon
    	},
    	config = function() require'nvim-tree'.setup {} end
	}	
  -- Theme
  use 'navarasu/onedark.nvim'
  use 'shaunsingh/nord.nvim'
  use { "ellisonleao/gruvbox.nvim" }
  use 'sainnhe/sonokai'
  use 'Mofiqul/dracula.nvim'
  use 'Mofiqul/vscode.nvim'
  -- Status-line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'p00f/nvim-ts-rainbow'
  use 'windwp/nvim-autopairs'
  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'onsails/lspkind-nvim'
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
  use {"ray-x/lsp_signature.nvim"}
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'folke/trouble.nvim'
  use 'tami5/lspsaga.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  -- Colorizer
  use 'norcalli/nvim-colorizer.lua'
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Dashboard
  use 'glepnir/dashboard-nvim'
  -- Indent-blankline
  use "lukas-reineke/indent-blankline.nvim"
  -- ToggleTerm
  use {"akinsho/toggleterm.nvim"}
  -- Vista.vim
  use 'liuchengxu/vista.vim'
  -- Vim move
  use 'matze/vim-move'
  -- Zen-mode
  use {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  -- Gitsigns
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    -- tag = 'release' -- To use the latest release
  }
  -- aerial
  use {'stevearc/aerial.nvim'}
  -- Git blamer
  use 'APZelos/blamer.nvim'
  -- Neoformat
  use 'sbdchd/neoformat'
  -- Surround
  use 'tpope/vim-surround'
  -- Vim-Scroll
  use 'karb94/neoscroll.nvim'
  -- Vim-whichkey
  use {
    'AckslD/nvim-whichkey-setup.lua',
    requires = {'liuchengxu/vim-which-key'},
  }
  -- Dòng này đừng xóa :>
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
