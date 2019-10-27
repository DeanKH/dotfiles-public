set number
set nocompatible
set encoding=utf-8
scriptencoding utf-8
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set cindent
set showcmd
set nobackup
set clipboard=unnamed
set infercase
set showmatch
set matchtime=1
set ignorecase
set smartcase
set incsearch
set hlsearch
filetype plugin indent on
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
set laststatus=2
set t_Co=256
inoremap jj <Esc>
if filereadable(expand('~/.config/nvim/dein.vim'))
  source ~/.config/nvim/dein.vim
endif

set background=dark
autocmd ColorScheme * highlight LineNr ctermfg=35
" colorscheme hybrid
" colorscheme lucius
" colorscheme lucario
" colorscheme tender 
" colorscheme monokai
" colorscheme iceberg
colorscheme monokai
" colorscheme solarized 
" colorscheme solarized8_dark
syntax on
set t_Co=256
set termguicolors
let &colorcolumn=join(range(81,82),",")
let g:seiya_auto_enable=1


" set pumblend=30

autocmd BufNewFile,BufRead *.launch setlocal filetype=xml
autocmd BufNewFile,BufRead *.urdf setlocal filetype=xml.urdf
autocmd BufNewFile,BufRead *.xacro setlocal filetype=xml.urdf
autocmd BufNewFile,BufRead *.tex setlocal filetype=tex

autocmd BufNewFile, *.xacro 0r $HOME/.dotfiles/public/vim-templates/xml.txt
autocmd BufNewFile, *.urdf 0r $HOME/.dotfiles/public/vim-templates/xml.txt
autocmd BufNewFile, *.launch 0r $HOME/.dotfiles/public/vim-templates/launch.txt
autocmd BufNewFile, *.py 0r $HOME/.dotfiles/public/vim-templates/python.txt
autocmd FileType python setlocal completeopt-=preview

augroup fileTypeIndent
	autocmd!
	autocmd BufNewFile,BufRead *.md setlocal tabstop=4 autoindent expandtab softtabstop=4 shiftwidth=4 
augroup END

syntax enable 


autocmd FileType denite set winblend=30
autocmd FileType denite-filter set winblend=30

"" deol
" nnoremap <silent><C-o> :<C-u>Deol -split=floating<CR>
tnoremap <ESC>  <C-\><C-n>

