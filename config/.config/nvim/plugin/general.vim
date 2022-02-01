" ~~~~~~~~~~~~~~~~~~~~~~~~~~ General Settings ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Set number of spaces tabs expand to.
set tabstop=4

" Set number of spaces tabs expand to while editing.
set softtabstop=4

" Set number of spaces used in auto indents.
set shiftwidth=4

" Make sure tabs are expanded into spaces in insert mode.
set expandtab

" Enable use of mouse in all modes.
set mouse=a

" Don't automatically wrap text to new line when opening file.
set nowrap

" Don't automatically wrap text to new line when typing.
set fo-=t

" Show relative line numbers around current.
set relativenumber

" Show absolute line number at current.
set nu

" Toggle auto-indentation so pasting text doesn't get malformed.
set pastetoggle=<F2>

" Always use terminal cursor even in insert mode.
set guicursor=

" Don't yell at me. I'm the only one who yells at me.
set noerrorbells

" Set smart auto-indentation when starting a new line.
set smartindent

" Keep 50 lines of command line history.
set history=50

" Start scrolling when cursor reaches this distance from edge of terminal.
set scrolloff=5

" Modifies how selection works for auto-complete.
set completeopt=menuone,noinsert,noselect

" Allow undoing even after closing and re-opening files.
set undofile

set autowriteall

" Set directories for backup, swap, and undo files.
set backupdir=~/.vim/.backup
set directory=~/.vim/.swap
set undodir=~/.vim/.undo
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


" ~~~~~~~~~~~~~~~~~~~~~~~~~~ General Key Mappings ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
let mapleader=","

nnoremap H 3b
nnoremap L 3w
nnoremap J 5j
nnoremap K 5k

" Changes the mode to 'paste' when enabled.
nnoremap <F2> :set invpaste paste?<CR>

" Use v (visual selection) then > or < to shift text right or left.
vnoremap < <gv
vnoremap > >gv

" Move current line up or down.
nmap <C-k> :<C-u>m-2<CR>==
nmap <C-j> :<C-u>m+<CR>==

" Move multiple selected lines up or down.
vmap <C-k> :m-2<CR>gv=gv
vmap <C-j> :m'>+<CR>gv=gv
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


" ~~~~~~~~~~~~~~~~~~~~~~~~~~ General Autocommands ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Trims all excess whitespace at the end of every line upon file save.
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" Will open a file with the cursor located where it was last.
fun! ReturnToLastKnownLocation()
    if line("'\"") >= 1 && line("'\"") <= line("$") |
        exe "normal! g`\"" |
    endif
endfun

augroup GENERAL
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
    autocmd BufReadPost * :call ReturnToLastKnownLocation()
augroup END
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
