" ~~~~~~~~~~~~~~~~~~~~~~~~~~ Default Syntax Highlighting ~~~~~~~~~~~~~~~~~~~~~~
set background=light

highlight Normal ctermfg=LightGrey
highlight LineNr ctermfg=White
highlight Statement ctermfg=Yellow
highlight Operator ctermfg=Yellow
highlight Keyword ctermfg=Red
highlight Exception ctermfg=DarkRed
highlight Constant ctermfg=DarkMagenta
highlight Boolean ctermfg=Yellow
highlight String ctermfg=DarkBlue
highlight Function ctermfg=Red
highlight Type ctermfg=Red
highlight StorageClass ctermfg=Green
highlight Special ctermfg=DarkBlue
highlight Comment ctermfg=DarkBlue
highlight MatchParen ctermfg=0
highlight MatchParen ctermbg=15
highlight IncSearch ctermbg=12
highlight IncSearch ctermfg=0
highlight Search ctermbg=15
highlight Search ctermfg=0
highlight Visual ctermbg=4
highlight Visual ctermfg=15
highlight VisualNOS ctermbg=4
highlight VisualNOS ctermfg=15
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


" ~~~~~~~~~~~~~~~~~~~~~~~~~~ Color Autocommands ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Highlights text that passes the specified column number
fun! HighlightPastColumn(column)
    let w:m2=matchadd('ErrorMsg', '\%>'.a:column.'v.\+', -1)
endfun

augroup COLORS
    autocmd!
    autocmd FileType python,c,javascript,rust :call HighlightPastColumn(80)
    autocmd FileType java :call HighlightPastColumn(100)
augroup END
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
