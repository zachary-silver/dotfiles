" ~~~~~~~~~~~~~~~~~~~~~~~~~~ Plugin Manager ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lspconfig'

Plug 'nvim-telescope/telescope.nvim'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/nvim-cmp'

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

call plug#end()
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


" ~~~~~~~~~~~~~~~~~~~~~~~~~~ Plugin Requires ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
lua require('lsp')
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
