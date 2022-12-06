local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  print ('Installing packer...')
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print('Done')
end

return require('packer').startup(function(use)
  
  use 'wbthomason/packer.nvim'
  
  -- THEME
  use { "catppuccin/nvim", as = "catppuccin" } 
  -- END THEME

  -- DEVICONS
  use 'nvim-tree/nvim-web-devicons'
  -- END DEVICONS

  -- NEOTREE
  use {
      'nvim-neo-tree/neo-tree.nvim',
      branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim"
    },
  }
  use 'sidebar-nvim/sidebar.nvim'
 -- FIN NEOTREE
 
 -- LUALINE
  use {
	'nvim-lualine/lualine.nvim',
	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- FIN LUALINE

  -- BUFFERLINE
  -- using packer.nvim
  use {
  'akinsho/bufferline.nvim', 
  tag = "v2.*", 
  requires = 'kyazdani42/nvim-web-devicons'}
  -- FIN BUFFERLINE
 
  -- INDENT-BLANKLINE
  use 'lukas-reineke/indent-blankline.nvim'
    -- FIN INDENT-BLANKLINE
    
    --TREE SITTEr
  use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
    --FIN TREE SITTER

  use 'wellle/targets.vim'
   -- use 'ryanoasis/vim-devicons'
    
   -- TELESCOPE    
  use 'nvim-lua/plenary.nvim'
  use {
      'nvim-telescope/telescope.nvim', 
      tag = '0.1.0',-- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'nvim-telescope/telescope-ui-select.nvim'
    use 'nvim-telescope/telescope-symbols.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'

      -- END TELESCOPE
      
      -- TOGGLETERMINAL
    use {"akinsho/toggleterm.nvim", tag = '*', config = function() end}
      -- END TOOGLETERMINAL

      -- LSPCONFIG
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
      -- END LSPCONFIG
      --
      -- COMMENT
    use {'numToStr/Comment.nvim',
      config = function() end}
      --END COMMENT
   

    -- GIT-TOOL
    use 'tpope/vim-fugitive'
    use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  } 
    use 'kdheepak/lazygit.nvim'
  -- END GIT-TOOL

    -- CMP AUTOCOMPLETE
      use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'f3fora/cmp-spell',
      'saadparwaiz1/cmp_luasnip',
      },
    }
    use 'rafamadriz/friendly-snippets'
    use {'onsails/lspkind-nvim'}
    -- END AUTOCOMPLETE
    --
    -- NVIM-COMMENT
    use "terrortylor/nvim-comment"
    -- END NVIM-COMMENT
    
    -- TRANSPARENT
    use 'xiyaowong/nvim-transparent'
    -- END TRANSPARENT
  end)
