" ~/.vim/config/plugins.vimrc

" -------------------------------------------------------------------
" Plug
" -------------------------------------------------------------------

" Initialization Plug
call plug#begin('~/.vim/plugged')

" Status bar
Plug  'vim-airline/vim-airline'

" File manager nerdtree
Plug  'scrooloose/nerdtree'
Plug  'tiagofumo/vim-nerdtree-syntax-highlight'
Plug  'jistr/vim-nerdtree-tabs'
Plug  'ryanoasis/vim-devicons'

" Working with Git
Plug  'tpope/vim-fugitive'
Plug  'airblade/vim-gitgutter'
Plug  'mbbill/undotree'

" Search files, buffers, color schemes, history, etc.
Plug  'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug  'junegunn/fzf.vim'

" Syntax highlighting
Plug  'scrooloose/syntastic'
Plug  'ekalinin/Dockerfile.vim'
Plug  'tpope/vim-markdown', { 'for': ['md'] }

Plug  'othree/html5.vim', { 'for': ['html'] }
Plug  'Valloric/MatchTagAlways', { 'for': ['html', 'xml', 'xhtml'] }

Plug  'hail2u/vim-css3-syntax', { 'for': ['css', 'scss'] }
Plug  'groenewege/vim-less', { 'for': ['less'] }
Plug  'elzr/vim-json', { 'for': ['json'] }

Plug  'othree/yajs.vim', { 'for': ['javascript'] }
Plug  'othree/es.next.syntax.vim', { 'for': ['javascript'] }
Plug  'othree/javascript-libraries-syntax.vim', { 'for': ['javascript'] }

Plug  'stanangeloff/php.vim', { 'for': ['php'] }

" Tmux
Plug  'christoomey/vim-tmux-navigator'
Plug  'benmills/vimux'

" Color Schemes
Plug  'dracula/vim'
Plug  'joshdick/onedark.vim'
Plug  'mhartington/oceanic-next'
Plug  'ajh17/Spacegray.vim'

" Other
Plug  'mhinz/vim-startify'          " Start screen
Plug  'kshenoy/vim-signature'       " Displaying bookmarks
Plug  'tpope/vim-surround'          " Optimizing the replacement of parentheses
Plug  'Raimondi/delimitMate'        " Automatic closing of open parentheses
Plug  't9md/vim-quickhl'            " Highlight keywords
Plug  'scrooloose/nerdcommenter'    " Organization of comments
Plug  'easymotion/vim-easymotion'   " Quickly move around the document
Plug  'ervandew/supertab'           " Auto-completion by Tab
Plug  'terryma/vim-expand-region'   " Text selection

call plug#end()

" -------------------------------------------------------------------
" Airline
" -------------------------------------------------------------------

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

" Changing the display of section Z (Information on the location of the cursor)
let g:airline_section_z = airline#section#create(['%3p%% ', 'linenr', 'maxlinenr', '%3v'])

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

" -------------------------------------------------------------------
" NERDTree
" -------------------------------------------------------------------

let g:NERDTreeWinPos = "left"
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeWinSize = 28
let g:NERDTreeMouseMode = 2
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeShowBookmarks = 0
let g:NERDTreeShowHidden = 0

" Exclude these files
let g:startify_list_order = [
    \ '\node_modules$',
    \ '\.git$',
    \ '\.idea$',
    \ '\.history$',
    \ '\.vscode$',
    \ '.DS_Store',
    \ 'UltiSnips',
    \ ]

" Open/Close NERDTree
nmap <F2> :NERDTreeToggle<CR>

" Refresh the current directory NERDTree
nmap <F14> :NERDTreeFocus<cr>R<c-w><c-p>

" -------------------------------------------------------------------
" Nerdtree syntax highlight
" -------------------------------------------------------------------

" Highlight file names
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" Highlight the icons and folder names
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeHighlightFoldersFullName = 1

" -------------------------------------------------------------------
" Nerdtree tabs
" -------------------------------------------------------------------

let g:nerdtree_tabs_open_on_console_startup = 0
let g:nerdtree_tabs_open_on_new_tab = 1
let g:nerdtree_tabs_autoclose = 1
let g:nerdtree_tabs_synchronize_view = 1

" -------------------------------------------------------------------
" GitGutter
" -------------------------------------------------------------------

let g:gitgutter_max_signs = 256

nmap <Leader><C-g> :GitGutterToggle<CR>

" -------------------------------------------------------------------
" Undotree
" -------------------------------------------------------------------

let g:undotree_SplitWidth = 34
let g:undotree_DiffpanelHeight = 12
let g:undotree_TreeNodeShape = "✹"

nmap <F4> :UndotreeToggle<CR>

" -------------------------------------------------------------------
" Startify
" -------------------------------------------------------------------

let g:startify_custom_header = []
let g:startify_custom_footer = []

let g:startify_files_number = 10

let g:startify_session_dir = '~/.vim/session'
let g:startify_session_delete_buffers = 1
let g:startify_session_before_save = ['']

" List of favorite commands
let g:startify_commands = [
    \ ':PlugInstall'
\]

" List of favorite catalogs
let g:startify_bookmarks = [
    \ {'projects': '~/Projects'},
    \ {'docker': '~/Docker'},
\ ]

let g:startify_list_order = [
    \ [' Directory: '. getcwd()],   'dir',
    \ [' Bookmarks: '],             'bookmarks',
    \ [' Recent files: '],          'files',
    \ [' Sessions: '],              'sessions',
    \ [' Commands: '],              'commands',
\ ]

" -------------------------------------------------------------------
" Signature
" -------------------------------------------------------------------

let g:SignatureEnabledAtStartup = 1
let g:SignatureMarkTextHLDynamic = 1

nmap <Leader><C-m> :SignatureTogg<cr>

let g:SignatureMap = {
    \ 'Leader'             :  "M",
    \ 'PlaceNextMark'      :  "M.",
    \ 'ToggleMarkAtLine'   :  "M,",
    \ 'PurgeMarksAtLine'   :  "M-",
    \ 'PurgeMarks'         :  "M<Space>",
    \ 'GotoNextLineAlpha'  :  "m]",
    \ 'GotoPrevLineAlpha'  :  "m[",
    \ 'GotoNextLineByPos'  :  "]m",
    \ 'GotoPrevLineByPos'  :  "[m",
    \ 'GotoNextMarker'     :  "]-",
    \ 'GotoPrevMarker'     :  "[-",
    \ 'GotoNextMarkerAny'  :  "]=",
    \ 'GotoPrevMarkerAny'  :  "[=",
    \ }

" Navigating the labels
nnoremap m '

" Delete all bookmarks
nnoremap <Leader>M :delmarks!<CR>:delmarks A-Z0-9<CR>

" -------------------------------------------------------------------
" DelimitMate
" -------------------------------------------------------------------

let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

" Go to the closing parenthesis (in the insert mode)
imap <silent> <buffer> <C-l> <Plug>delimitMateJumpMany

" -------------------------------------------------------------------
" Quickhl
" -------------------------------------------------------------------

" Select the matches for the current keyword in the document
map <Leader>s <Plug>(quickhl-manual-this)
nmap <Leader>s <Plug>(quickhl-manual-this)

" Always highlight the matches found in the document
map <Leader>S <Plug>(quickhl-cword-toggle)
nmap <Leader>S <Plug>(quickhl-cword-toggle)

" Clear list of selected matches
map <Leader><C-s> <Plug>(quickhl-manual-reset)
nmap <Leader><C-s> <Plug>(quickhl-manual-reset)

" -------------------------------------------------------------------
" NERDCommenter
" -------------------------------------------------------------------

let g:NERDSpaceDelims=1
let g:NERDRemoveExtraSpaces=1
let g:NERDTrimTrailingWhitespace = 1

" Add or redefine delimiters for specified file types
let g:NERDCustomDelimiters = {
    \ 'scss': { 'left': '//' }
\ }

nmap # <Leader>c<Space>

" -------------------------------------------------------------------
" Easy-align
" -------------------------------------------------------------------

" Leader EasyAlign
xmap <Leader>ea <Plug>(EasyAlign)
nmap <Leader>ea <Plug>(EasyAlign)

" Align paragraph
xmap <Leader>eaa <Plug>(EasyAlign)ip*
nmap <Leader>eaa <Plug>(EasyAlign)ip*

" -------------------------------------------------------------------
" EasyMotion
" -------------------------------------------------------------------

" Search by multiple characters
nmap <Leader><Leader>S <Plug>(easymotion-sn)
xmap <Leader><Leader>S <Plug>(easymotion-sn)
omap <Leader><Leader>S <Plug>(easymotion-sn)

" -------------------------------------------------------------------
" Expand region
" -------------------------------------------------------------------

" Increase the selection area (brackets, etc.)
nmap <C-]> <Plug>(expand_region_expand)
vmap <C-]> <Plug>(expand_region_expand)

" Reduce the selection area (brackets, etc.)
nmap <C-[> <Plug>(expand_region_shrink)
vmap <C-[> <Plug>(expand_region_shrink)

" -------------------------------------------------------------------
" Emmet
" -------------------------------------------------------------------

let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_mode='a'

" -------------------------------------------------------------------
" FZF
" -------------------------------------------------------------------

" Auto-complete path
imap <Leader>fp <plug>(fzf-complete-path)

" Search file
nmap ff :Files<CR>
vmap ff <Esc>:Files<CR>

" Search by rows
nmap fl :Lines<CR>
vmap fl <Esc>:Lines<CR>

" Search by bookmarks
nmap fm :Marks<CR>
vmap fm <Esc>:Marks<CR>

" Search by snippers (UltiSnips)
nmap fs :Snippets<CR>
vmap fs <Esc>:Snippets<CR>

" Search by windows
nmap fw :Windows<CR>
vmap fw <Esc>:Windows<CR>

" Search by open buffers
nmap fb :Buffers<CR>
vmap fb <Esc>:Buffers<CR>

" Search for git commits (fugitive)
nmap fg :Commits<CR>
vmap fg <Esc>:Commits<CR>

" Search by commands
nmap fc :Commands<CR>
vmap fc <Esc>:Commands<CR>

" Search history of previously opened files
nmap fhf :History<CR>
vmap fhf <Esc>:History<CR>

" Search by command history
nmap fhc :History:<CR>
vmap fhc <Esc>:History:<CR>

" -------------------------------------------------------------------
" Syntastic
" -------------------------------------------------------------------

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_auto_jump = 1
let g:syntastic_loc_list_height = 5

" Enabled the syntax check for golang
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']

"Disable HTML syntax checking
let g:syntastic_mode_map = { 'passive_filetypes': ['html'] }

" -------------------------------------------------------------------
" Autoformat
" -------------------------------------------------------------------

" Automatic formatting
noremap <F7> :Autoformat<CR>

" -------------------------------------------------------------------
" JavaScript Libraries Syntax
" -------------------------------------------------------------------

" Library list
let g:used_javascript_libs = 'jquery,vuejs,react,flux,requirejs'

" -------------------------------------------------------------------
" Tmux Navigator
" -------------------------------------------------------------------

" Go to the left window
nnoremap <BS> :TmuxNavigateLeft<cr>

" -------------------------------------------------------------------
" Vimux
" -------------------------------------------------------------------

let g:VimuxRunnerType = "window"
let g:VimuxOrientation = "h"
let g:VimuxHeight = "40"

" Running scripts in a separate panel
nmap <C-g>r :call RunTmux()<CR>

function RunTmux()
    if &filetype == "go"
        let command = "go run "
    elseif &filetype == "php"
        let command = "php "
    elseif &filetype == "javascript"
        let command = "node "
    elseif &filetype == "python"
        let command = "python "
    else
        :echohl Error
        :echon "Unknown filetype (". &filetype .")"
        return
    endif

    call VimuxRunCommand(command . expand('%:p'), 0)
    call VimuxSendKeys("Enter")
endfunction

" -------------------------------------------------------------------
" ColorSchemes
" -------------------------------------------------------------------

" Enable 256 color scheme support
let g:onedark_termcolors=16