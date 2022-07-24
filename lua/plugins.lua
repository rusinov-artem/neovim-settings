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


end)


