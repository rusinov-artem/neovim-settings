return require('packer').startup(function()
	
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
 
  use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use {'neoclide/coc.nvim', branch = 'release'}

  use 'voldikss/vim-floaterm'

  --telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

  use 'kyazdani42/nvim-web-devicons'
  

  -- lsp!!!
  use 'neovim/nvim-lspconfig'

  -- My Plugin
  use '/root/plugin1.nvim'


  -- GO debugin
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use 'leoluz/nvim-dap-go'


    -- движок автодополнения для LSP
  use 'hrsh7th/nvim-cmp'

   -- парсер для всех языков программирования, цветной код как в твоем
  -- любимом IDE
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = function()
        -- так подгружается конфигурация конкретного плагина
        -- ~/.config/nvim/lua/plugins/treesitter.lua
        require('plugins.treesitter') 
      end
  }


    -- статусбар, аналог vim-airline, только написан на lua
  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('plugins.lualine')
    end
  }


    -- движок сниппетов
  use {
    'L3MON4D3/LuaSnip',
    after = 'friendly-snippets',
    config = function()
      require('luasnip/loaders/from_vscode').load({
       paths = { '~/.local/share/nvim/site/pack/packer/start/friendly-snippets' }
      })
    end
  }
    
  -- автодополнения для сниппетов
  use 'saadparwaiz1/cmp_luasnip'
    
  -- набор готовых сниппетов для всех языков, включая go
  use 'rafamadriz/friendly-snippets'



    -- набор утилит для Go
  use {
    'olexsmir/gopher.nvim',
    config = function()
      require('plugins.gopher')
    end
  }
















end)


