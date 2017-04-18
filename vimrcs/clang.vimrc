function! s:ros_include()
let splited = split($ROS_PACKAGE_PATH, ':')
let splited[-1] = join([splited[-1], "/.."], '')

	for package in splited
		let include_path = join([package,'/include'],'')
		if isdirectory(include_path)
			execute 'setlocal path+='. include_path
		endif
	endfor
:endfunction


" 'Shougo/neocomplete.vim' {{{
function! s:cpp()
	let hog = s:ros_include() 
	nmap <C-k> :execute ":%! clang-format-3.8"<cr>

	setlocal path+=/usr/include,/usr/local/include,/usr/include/c++/5

	" nmap <C-k> execute ':%! clang-format-3.8'
	let g:neocomplete#enable_at_startup = 1

	if !exists('g:neocomplete#force_omni_input_patterns')
		let g:neocomplete#force_omni_input_patterns = {} 
	endif
	let g:neocomplete#force_overwrite_completefunc = 1
	let g:neocomplete#force_omni_input_patterns.c =
				\ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
	let g:neocomplete#force_omni_input_patterns.cpp =
				\ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

	" }}}
	"
	" 'justmao945/vim-clang' {{{

	" disable auto completion for vim-clang
	let g:clang_auto = 1
  let g:clang_format_exec = 'clang-format-3.8'
	" default 'longest' can not work with neocomplete
	let g:clang_c_completeopt   = 'menuone'
	let g:clang_cpp_completeopt = 'menuone'

	if executable('clang-3.8')
			let g:clang_exec = 'clang-3.8'
	elseif executable('clang-3.5')
			let g:clang_exec = 'clang-3.5'
	elseif executable('clang-3.4')
			let g:clang_exec = 'clang-3.4'
	else
			let g:clang_exec = 'clang'
	endif

	if executable('clang-format-3.8')
			let g:clang_format_exec = 'clang-format-3.8'
	elseif executable('clang-format-3.5')
			let g:clang_format_exec = 'clang-format-3.5'
	elseif executable('clang-format-3.4')
			let g:clang_format_exec = 'clang-format-3.4'
	else
			let g:clang_exec = 'clang-format'
	endif

	let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'
	" let g:clang_include_sysheaders = 1
	" let g:clang_use_path = 1
	if (exists('+colorcolumn'))
			set colorcolumn=80
			" highlight ColorColumn ctermbg=dark
	endif
endfunction
" }}}


let g:clang_cpp_options = '-std=c11'
let g:clang_cpp_options = '-std=c++14'
" augroup vimrc-cpp
" 	autocmd!
" 	autocmd FileType cpp call s:cpp()
" augroup END

