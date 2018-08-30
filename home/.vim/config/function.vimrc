" Auto-completion
autocmd FileType html,markdown,tt2html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType css,less,scss setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

" Close the Preview window when the Omni-Completion
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Removing extra spaces at the end of lines when saving a file
au BufWritePre,FileWritePre * let au_line=line(".")
au BufWritePre,FileWritePre * let au_col=col(".")
au BufWritePre,FileWritePre * %s/\s\+$//e
au BufWritePost * silent call cursor(au_line, au_col)

" Selecting lines longer than 120 characters
" highlight OverLength ctermbg=7 ctermfg=9 guibg=0
" match OverLength /\%120v.\+/

" When you open a file, move the cursor to the last position
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" Enable smart indenting in .py files after keywords
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
