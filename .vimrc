set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
"Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'lifepillar/vim-solarized8'
Plugin 'leafgarland/typescript-vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'JamshedVesuna/vim-markdown-preview'
"Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ternjs/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'lynnard/pandoc-preview.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'Quramy/ng-tsserver'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'tpope/vim-surround'
Plugin 'vimwiki/vimwiki'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'sjl/gundo.vim'
Plugin 'w0rp/ale'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set laststatus=2
set backspace=2
set encoding=utf-8
set nowrap
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <Space> :nohlsearch<CR>
set t_Co=256
set t_ut=
syntax on
set background=dark
colorscheme solarized8_dark
set number relativenumber

set mouse=a
imap <C-c> <CR><Esc>O

set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set path+=**
set wildmenu

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_loc_list_height = 5
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_html_checkers = ['htmlhint']

"highlight link SyntasticErrorSign SignColumn
"highlight link SyntasticWarningSign SignColumn
"highlight link SyntasticStyleErrorSign SignColumn
"highlight link SyntasticStyleWarningSign SignColumn

" Airline configuration -------------------------------------------------------

" Make airline to appear on all the tabs
set laststatus=2

"call airline#parts#define_function('ALE', 'ALEGetStatusLine')
"call airline#parts#define_condition('ALE', 'exists("*ALEGetStatusLine")')
"let g:airline_section_error = airline#section#create_right(['ALE'])
let g:airline#extensions#ale#enabled = 1
"let g:airline_theme='durant'
"let g:airline_theme='powerlineish'
" let g:airline_theme='simple'
"let g:airline_theme='term'
let g:airline_theme='jellybeans'

"let g:airline_powerline_fonts = 1

" powerline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

" ale configuration

let g:ale_fixers = { 'javascript': ['eslint', 'trim_whitespace'],}
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
highlight clear ALEErrorSign
highlight clear ALEWarningSign

nnoremap <silent><C-e> :lopen<CR>

let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

map <C-l> :NERDTreeToggle<CR>
map <leader>t :Windows<CR>
" Gundo
nnoremap <F5> :GundoToggle<CR>

let g:vimwiki_list = [{'path': '~/Nextcloud/vimWiki/', 'path_html': '~/Nextcloud/vimWiki/html/'}]
let g:used_javascript_libs = 'angularjs,angularui,angularrouter'
" assuming you want to use snipmate snippet engine


" Markdown Settings
let g:vim_markdown_folding_disabled = 1
" Tern Settings
let g:tern_map_keys = 1

nmap <leader>a :Ag <C-r><C-w><CR>

nmap <leader>f :Files <CR>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Use this work with tmux
" https://unix.stackexchange.com/questions/29907/how-to-get-vim-to-work-with-tmux-properly
" where the ^[ is an escape character, that you can insert by pressing
" <CTRL-v><ESC> in vim.
nnoremap [1;3A :wincmd k<CR>
nnoremap [1;3B :wincmd j<CR>
nnoremap [1;3D :wincmd h<CR>
nnoremap [1;3C :wincmd l<CR>

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Use this work with tmux
" https://unix.stackexchange.com/questions/29907/how-to-get-vim-to-work-with-tmux-properly
" where the ^[ is an escape character, that you can insert by pressing
" <CTRL-v><ESC> in vim.
nnoremap [1;5D :tabprevious<CR>
nnoremap [1;5C :tabnext<CR>

" Share clipboards between vim and tmux without xsel or xclip (which require X and
" X forwarding with SSH) and without changing tmux shortcuts. Requires only tail.
"
" Great for an ssh session to you linode or droplet.
"
" Uses z buffer in vim and writes output to ~/.clipboard and then to tmux's paste
" buffer, and reads it back in cleanly for putting (puddin').
"
" NOTE: tmux has an undocumented command limit! https://github.com/tmux/tmux/issues/254
"       this means if you mean to copy larger bits of code (entire functions) tmux will
"       not copy the data into its buffer. In those cases, it's better to read from the
"       ~/.clipboard file.
"       IE: Python interactive shell: def put(): exec(open('~/.clipboard').read());

" Example vimrc mappings
" Visual mode yank selected area to tmux paste buffer (clipboard)
"vnoremap <leader>c "zy:silent! call SendZBufferToHomeDotClipboard()<cr>
" Put from tmux clipboard
"map <leader>v :silent! call HomeDotClipboardPut()<cr>

vnoremap <leader>c "zy:silent! call SendZBufferToHomeDotClipboard()<cr>
map <leader>v :silent! call HomeDotClipboardPut()<cr>

function! SendZBufferToHomeDotClipboard()
  " Yank the contents buffer z to file ~/.clipboard and tmux paste buffer
  " For use with HomeDotClipboardPut()
  silent! redir! > ~/.clipboard
  silent! echo @z
  silent! redir END
  " the redir has a newline in front, so tail -n+2 skips first line
  silent! !tail -n+2 ~/.clipboard > ~/.clipboard.1;mv ~/.clipboard.1 ~/.clipboard
  silent! !tmux load-buffer ~/.clipboard
  silent! redraw!
endfunction
function! HomeDotClipboardPut()
  " Paste/Put the contents of file ~/.clipboard
  " For use with SendZBufferToHomeDotClipboard()
  silent! !tmux save-buffer ~/.clipboard
  silent! redraw!
  silent! let @z = system("cat ~/.clipboard")
  " put the z buffer on the line below
  silent! exe "norm o\<ESC>\"zp"
endfunction