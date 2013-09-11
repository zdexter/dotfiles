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
colorscheme solarized
:nmap <Space> i_<Esc>r
:set ruler
:set nowrap

:nmap j gj
:nmap k gk
:nmap <C-e> :e#<CR>

:nmap ; :CtrlPMixed<CR>
:let g:ctrlp_map = '<Leader>t'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif

:let coffee_compile_vert = 1
:let mapleader = ","
au BufWritePost,BufNewFile,BufReadPost *.coffee inoremap <buffer> <C-C> <Esc>
command -nargs=1 C CoffeeCompile | :<args>
vmap <leader>c <esc>:'<,'>:CoffeeCompile<CR>
map <leader>c :CoffeeCompile<CR>
set list listchars=tab:»\ ,trail:·,precedes:<,extends:> "
match ErrorMsg '\%>80v.\+'
autocmd VimEnter * hi ErrorMsg cterm=underline,bold ctermbg=NONE ctermfg=NONE

" Tip #750: http://vim.wikia.com/wiki/VimTip750
" Underline the current line.
nnoremap <F9> yyp<c-v>$r-
inoremap <F9> <esc>yyp<c-v>$r-A

" Tagbar
nnoremap <F8> :TagbarToggle<CR>

" Auto-reload vimrc
augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

set mousemodel=popup                                        " right-click pops up conext menu
set encoding=utf-8 fileencoding=utf-8 termencoding=utf-8    " encoding
