set nocompatible
syntax on

filetype plugin indent on

"map qq to Esc in insert mode
imap qq <Esc>

"display line numbers
set nu

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

"change background color of window after 80 charectors
highlight ColorColumn ctermbg=235
execute "set colorcolumn=" . join(range(81,337), ',')

"highlight search
set hlsearch

"match search text while typing
set incsearch

"show white space charector
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

"convert tabs to spaces
set tabstop=2 shiftwidth=2 expandtab

set smartindent
set autoindent

"close matching brackets and quotes
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap ~ (

"show status line with filename, encoding, language, linenumber, column
"statusline from here
"http://got-ravings.blogspot.in/2008/08/vim-pr0n-making-statuslines-that-own.html
set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L,%P

"tab shortcut keys
nnoremap <F7> :tabprevious<CR>
nnoremap <F8> :tabnext<CR>
nnoremap <C-x> :tabclose<CR>
nnoremap <C-a> :tabonly<CR>
hi MatchParen cterm=none ctermbg=darkyellow ctermfg=black
