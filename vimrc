highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%>80v.\+/
call pathogen#infect()
filetype plugin indent on
set number
set shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
set smartindent
set expandtab
syntax on
colorscheme Tomorrow-Night
:nmap <Space> i_<Esc>r
:set ruler
