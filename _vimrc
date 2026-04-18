let mapleader = " "
colorscheme sorbet

set relativenumber
set number

filetype indent on
set autoindent
set smartindent

set clipboard=unnamedplus
" set guicursor=a:block-blinkwait1000-blinkon1000-blinkoff500
set guicursor=a:block-blinkon0
set guifont=Iosevka:h14

winpos 400 200
set lines=23
set columns=105

syntax on

" ----------
" Restore last file and cursor position
autocmd VimLeave * wviminfo! ~/.viminfo " write last opened file info to .viminfo

autocmd VimEnter * if argc() == 0 | execute "normal! `0" | filetype detect | endif " open last file if opened with 0 arguments

autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif " jump to last position the cursor was in
" ---------

nnoremap <C-n> :enew<CR>
nnoremap <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> j v:count == 0 ? 'gj' : 'j'
vnoremap y "+y
nnoremap yy "+yy
nnoremap Y "+Y

autocmd FileType asciidoc inoremap <buffer> <C-s> stem:[]<Left>
autocmd FileType asciidoc nnoremap <buffer> <Leader>st a stem:[]<Esc>2hi
