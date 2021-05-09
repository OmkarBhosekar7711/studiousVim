syntax on
colorscheme desert
set nu
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'https://github.com/kien/ctrlp.vim' 
Plug 'https://github.com/ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'https://github.com/kien/rainbow_parentheses.vim'
call plug#end()



colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root = 'true'
endif

let gctrlp_user_command = ['.git/', 'git --git-dir=$s/.git ls-files -oc --exclude-stable-d']
let mapleader = ' '
let g:netrw_banner_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:ctrlp_use_caching = 0


nnoremap <leader>h :wincmd g<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

"YCM
"The Best Part.
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

nnoremap <silent> <leader>sf :w<CR>
noremap <silent> <leader>sfq :wq<CR>
