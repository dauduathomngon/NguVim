local ok, _ = pcall(require,"core.pluginConfig")

if not ok then
  print("something wrong with pluginConfig.lua")
  return false
end

return require("packer").startup(function(use)

    -- Các plugins core
    use { 'lewis6991/impatient.nvim',}
	  
    use { "wbthomason/packer.nvim",
	  event = "VimEnter",
	  after = "impatient.nvim",
	}

    use {"dstein64/vim-startuptime",
	  cmd = 'StartupTime',
	}

    use {"nvim-lua/plenary.nvim",
	  event = "BufRead"
        }

    use ({"nvim-telescope/telescope.nvim",
	  cmd = "Telescope",
	  config = function()
	    require "plugins.tele_find"
	  end,
	  requires = {
	    {
	      "xiyaowong/telescope-emoji.nvim",
	      after = "telescope.nvim",
	    },
	    {
	      "benfowler/telescope-luasnip.nvim",
	      module = "telescope._extensions.luasnip",
	    },
	    {
	      -- Lưu ý: Plugin này chỉ hỗ trợ Linux, nếu dùng Win thì hãy comment hoặc xóa nó đi.
	      'nvim-telescope/telescope-media-files.nvim',
	      after = "telescope.nvim",
	    },
	  },
	})

    -- Code đẹp hơn  
    use { "nvim-treesitter/nvim-treesitter",  
	  event = "BufRead",
	  run = ":TSUpdate",
	  requires = {"p00f/nvim-ts-rainbow"},
	  config = function()
	    require "plugins.treesitter"
	  end
	}

    use { "andymass/vim-matchup",
	  event = "BufRead",
	  after = "nvim-treesitter",
	}

    use {"norcalli/nvim-colorizer.lua",
	  event = "BufRead",
	  config = function()
	    require'colorizer'.setup{}
	  end
	}

    use {"windwp/nvim-autopairs",
	  after = "nvim-cmp",
	  config = function()
	    require('nvim-autopairs').setup{}
	  end
	}
    
    -- Theme
    use { 'navarasu/onedark.nvim', 
	  after = "packer.nvim",
	  config = function()
	    require "core.theme"
	  end
	}

    -- Giao diện 
    use {
	"kyazdani42/nvim-web-devicons",
	after = "onedark.nvim",
	}

    use { "akinsho/nvim-bufferline.lua",
	after = "onedark.nvim",
	config = function()
	  require "plugins.buffer"
	end
      }

    use { "nvim-lualine/lualine.nvim",
	after = "onedark.nvim",
	config = function()
	  require "plugins.status"
	end
      }

    use {"terrortylor/nvim-comment",
	  cmd = "CommentToggle",
	  config = function()
	    require 'plugins.comment'
	  end
        }

    use {"lukas-reineke/indent-blankline.nvim",
	  event = "BufRead",
	  config = function()
	    require("indent_blankline").setup {
		buftype_exclude = {"terminal"},
		filetype_exclude = {"dashboard", "NvimTree", "packer" },
	    }
	  end
	}

    use {"akinsho/toggleterm.nvim",
	  cmd = "ToggleTerm",
	  config = function()
	    require "plugins.term"
	  end
	}

    use {'wyattjsmith1/weather.nvim',
	  after = {"lualine.nvim", "nvim-bufferline.lua"},
	  config = function()
	    require "plugins.utils"
	  end
	}

    use {"glepnir/dashboard-nvim",
	  cmd = {
	    "Dashboard",
	    "SessionLoad",
	    "SessionSave",
	  },
	  config = function()
	    require "plugins.utils"
	  end
	}

    -- Quản lý file
    use { "kyazdani42/nvim-tree.lua",
	  cmd = "NvimTreeToggle",
	  config = function()
	    require "plugins.nvimtree"
	  end
	}

    -- Trải nghiệm
    use {
	  'karb94/neoscroll.nvim',
	  event = "BufRead",
	  config = function()
	    require('neoscroll').setup{}
	  end
	}

    use {'liuchengxu/vista.vim',
	  cmd = "Vista",
	  config = function() 
	    require "plugins.utils"
	  end,
	}

    use {'booperlv/nvim-gomove',
	  config = function()
	    require("gomove").setup{
	      map_defaults = true,
	      reindent = true,
	      undojoin = true,
	      move_past_end_col = false,
	    }
	  end
	}
    use {"folke/todo-comments.nvim",
	}

    use {'phaazon/hop.nvim',
	  cmd = {
	    "HopWord",
	    "HopLine",
	    "HopChar1",
	    "HopChar2",
	    "HopPattern",
	  },
	  config = function()
	    require'hop'.setup{

	    }
	  end
	}

    -- LSP 
    use ({"hrsh7th/nvim-cmp",
	  event = "InsertEnter",
	  config = function()
	    require "lsp.cmpconf"
	  end,
	  requires = {
	    {"L3MON4D3/LuaSnip",
	      event = "InsertEnter",
	      config = function()
		require "lsp.snip"
	      end,
	    },
	    {"rafamadriz/friendly-snippets",
	      event = "InsertEnter",
	    },
	    {'hrsh7th/cmp-nvim-lsp', after = "nvim-cmp"},
	    {'hrsh7th/cmp-buffer', after = "nvim-cmp"},
	    {'hrsh7th/cmp-path', after = "nvim-cmp"},
	    {'hrsh7th/cmp-cmdline', after = "nvim-cmp"},
	    {'saadparwaiz1/cmp_luasnip', after = {"nvim-cmp", "LuaSnip"}},
	    {"hrsh7th/cmp-calc", after = "nvim-cmp"},
	    {"hrsh7th/cmp-nvim-lsp-signature-help", after = "nvim-cmp"},
	    {"ray-x/cmp-treesitter", after = {"nvim-cmp", "nvim-treesitter"}},
	  },
	})

    use ({'williamboman/nvim-lsp-installer',
	  event = "BufRead",
	  requires = {
	    {
	      'neovim/nvim-lspconfig',
	      after = "nvim-lsp-installer",
	      config = function()
		require "lsp.lspconf"
	      end
	    },
	    {
	      "onsails/lspkind-nvim",
	      after = {"nvim-cmp", "nvim-lspconfig"},
	      event = "BufRead",
	    },
	  },
	})

    use ({'jose-elias-alvarez/null-ls.nvim',
	  event = "BufRead",
	  config = function()
	    require "lsp.null"
	  end,
	  requires = {'jose-elias-alvarez/nvim-lsp-ts-utils',after = "null-ls.nvim"},
	})
end)
