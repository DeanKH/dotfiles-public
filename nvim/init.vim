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

" Use deoplete.
" let g:deoplete#enable_at_startup = 1

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

" octol/vim-cpp-enhanced-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

if filereadable(expand('~/.config/nvim/lsp_cpp.vim'))
  source ~/.config/nvim/lsp_cpp.vim
endif

" vim-table-mode
let g:table_mode_corner='|'

" let g:deoplete#num_processes = 1

"" defx-icons
let g:defx_icons_enable_syntax_highlight = 1
let g:defx_icons_column_length = 2
" let g:defx_icons_directory_icon = ''
let g:defx_icons_mark_icon = '*'
" let g:defx_icons_parent_icon = ''
" let g:defx_icons_default_icon = ''
" let g:defx_icons_directory_symlink_icon = ''
" Options below are applicable only when using "tree" feature
" let g:defx_icons_root_opened_tree_icon = ''
" let g:defx_icons_nested_opened_tree_icon = ''
" let g:defx_icons_nested_closed_tree_icon = ''

"" deol
nnoremap <silent><C-o> :<C-u>Deol -split=floating<CR>
tnoremap <ESC>  <C-\><C-n>

"" defx
autocmd FileType defx call s:defx_my_settings()
    function! s:defx_my_settings() abort
     " Define mappings
      nnoremap <silent><buffer><expr> <CR>
     \ defx#do_action('open')
      nnoremap <silent><buffer><expr> c
     \ defx#do_action('copy')
      nnoremap <silent><buffer><expr> m
     \ defx#do_action('move')
      nnoremap <silent><buffer><expr> p
     \ defx#do_action('paste')
      nnoremap <silent><buffer><expr> l
     \ defx#do_action('open')
      nnoremap <silent><buffer><expr> E
     \ defx#do_action('open', 'vsplit')
      nnoremap <silent><buffer><expr> P
     \ defx#do_action('open', 'pedit')
      nnoremap <silent><buffer><expr> K
     \ defx#do_action('new_directory')
      nnoremap <silent><buffer><expr> N
     \ defx#do_action('new_file')
      nnoremap <silent><buffer><expr> d
     \ defx#do_action('remove')
      nnoremap <silent><buffer><expr> r
     \ defx#do_action('rename')
      nnoremap <silent><buffer><expr> x
     \ defx#do_action('execute_system')
      nnoremap <silent><buffer><expr> yy
     \ defx#do_action('yank_path')
      nnoremap <silent><buffer><expr> .
     \ defx#do_action('toggle_ignored_files')
      nnoremap <silent><buffer><expr> h
     \ defx#do_action('cd', ['..'])
      nnoremap <silent><buffer><expr> ~
     \ defx#do_action('cd')
      nnoremap <silent><buffer><expr> q
     \ defx#do_action('quit')
      nnoremap <silent><buffer><expr> <Space>
     \ defx#do_action('toggle_select') . 'j'
      nnoremap <silent><buffer><expr> *
     \ defx#do_action('toggle_select_all')
      nnoremap <silent><buffer><expr> j
     \ line('.') == line('$') ? 'gg' : 'j'
      nnoremap <silent><buffer><expr> k
     \ line('.') == 1 ? 'G' : 'k'
      nnoremap <silent><buffer><expr> <C-l>
     \ defx#do_action('redraw')
      nnoremap <silent><buffer><expr> <C-g>
     \ defx#do_action('print')
      nnoremap <silent><buffer><expr> cd
     \ defx#do_action('change_vim_cwd')
    endfunction

