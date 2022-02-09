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

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


" ~~~~~~~~~~~~~~~~~~~~~~~~~~ Plugin Requires ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Modifies auto-compeletion matching strategy.
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

lua require('lsp')
lua require('treesitter')
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
