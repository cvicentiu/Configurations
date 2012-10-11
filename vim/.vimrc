syntax on
"set cindent
"let g:clang_complete_copen = 1
filetype plugin on
filetype indent on

set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

nnoremap _dt :set ft=htmldjango<CR>
nnoremap _pd :set ft=python.django<CR>
autocmd FileType python set omnifunc=pythoncomplete#Complete
au BufNewFile,BufRead models.py		setlocal filetype=python.django
au BufNewFile,BufRead views.py		setlocal filetype=python.django
au BufNewFile,BufRead settings.py	setlocal filetype=python.django
au BufNewFile,BufRead urls.py		setlocal filetype=python.django
au BufNewFile,BufRead forms.py		setlocal filetype=python.django
au BufNewFile,BufRead admin.py		setlocal filetype=python.django
au BufNewFile,BufRead *.html 		setlocal filetype=htmldjango
au BufNewFile,BufRead urls.py		setlocal nowrap
au BufNewFile,BufRead settings.py	normal! zR
au BufNewFile,BufRead dashboard.py	normal! zR

autocmd BufWritePre *.pl :%s/\s\+$//e
