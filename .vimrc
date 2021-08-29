filetype off

" Reload vimrc after save.
autocmd! bufwritepost .vimrc source %

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Let Vundle manage Vundle
Plug 'gmarik/vundle'

" Some vim default settings
Plug 'tpope/vim-sensible' 

" Git plugin
Plug 'tpope/vim-fugitive'

" Gui
Plug 'scrooloose/nerdtree'

" Multi cursor
Plug 'kristijanhusak/vim-multiple-cursors'

" Search in current file
Plug 'lokaltog/vim-easymotion'

" Search everywhere
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Code analysis
Plug 'ngmy/vim-rubocop'

" syntax highlighting
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'elixir-lang/vim-elixir'
Plug 'kchmck/vim-coffee-script'
Plug 'slim-template/vim-slim'

" Color Schemes
Plug 'morhetz/gruvbox'

" Languages
" Ruby
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" Javascript
Plug 'maksimr/vim-jsbeautify'

" React
Plug 'mxw/vim-jsx'

" Go
Plug 'mdempsky/gocode', {'rtp': 'vim/'} " autocomplete
Plug 'fatih/vim-go'

" Elm
Plug 'elmcast/elm-vim'

" Crystal
Plug 'rhysd/vim-crystal'

call plug#end()

filetype plugin indent on
filetype plugin on " enable plugins
set autoindent " code autoindent
set autowrite " Automatically :write before running commands
set backspace=indent,eol,start
set backup " backup files
set backupdir=/tmp,. " backup files
set clipboard=unnamedplus
set completeopt=menu,preview " autocomplete function
set directory=/tmp,. " swap files
set expandtab " don't use real tabs
set foldenable " enable folding
set history=2000 " history length
set hlsearch " highlight search
set ignorecase " case unsensitive search
set incsearch " show search matches while typing
set laststatus=2 " always show status line
set lazyredraw
set list " show hidden chars
set mouse=a " Add mouse support
set nocompatible " remove vi backwards compatibility
set nojoinspaces
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set nowritebackup
set nrformats= " when using c-a and c-x do not assume 007 as octal
set number " line numbers
set numberwidth=1
"set omnifunc=syntaxcomplete#Complete
set ruler         " show the cursor position all the time
set scrolloff=3 " lines before EOF
set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
set shiftwidth=2 " tabs
set showcmd " show mode
set showmatch " show matching elements
set smartcase " if there are caps, go case-sensitive
set smartindent " advanced indent
set softtabstop=2 " tabs
set t_Co=256 " set 256 for terminal colors
set tabstop=2 " tab with
set textwidth=80
set undodir=/tmp,.
set undofile
set undolevels=10000
set virtualedit=block " allow virtual editing in Visual block mode
setl spell "Spell check
set completeopt=menu " So go autocompletion is not spawning a new buffer
set formatoptions-=tc " Do not auto new line


" performance
set synmaxcol=120
set ttyfast
set nocursorline " no highlight current line
set wildmenu " command-line completion
set wrapscan " search loop


" Automatic formatting
autocmd BufWritePre *.rb :%s/\s\+$//e
"autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.slim :%s/\s\+$//e

au BufNewFile * set noeol
au BufRead,BufNewFile *.go set filetype=go
au BufNewFile,BufRead *.json.jbuilder set ft=ruby
au BufNewFile,BufRead Gemfile set ft=ruby
au BufNewFile,BufRead Gemfile.lock set ft=ruby
au BufNewFile,BufRead *.ejs set ft=html

" Use react js hl also for non jsx extensions
let g:jsx_ext_required = 0

" No show command
autocmd VimEnter * set nosc

" tabs
nnoremap <C-W>t :tabnew<cr>

" Define leader
let mapleader="\<Space>"

" format the entire file
nmap <leader>fef ggVG=

" always save when exiting insert mode
autocmd InsertLeave * write

" search and replace selected text
vnoremap <C-h> "hy:%s/<C-r>h//gc<left><left><left>

" Disable cursors
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>


" new tab
nnoremap <C-W>t :tabnew<cr>

" Easymotion config
nmap <Leader>s <Plug>(easymotion-s2)
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Search
nmap <Leader><Leader> :nohl<CR>

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>ni :NERDTreeFind<CR>
nmap <leader>nr :NERDTree<CR>
let NERDTreeHighlightCursorline=1

" rubo cop
let g:vimrubocop_config = '.rubocop.yml'
nmap <Leader>r :RuboCop<CR>
nmap <Leader>ra :RuboCop -A<CR>

" js beautify
map <Leader>j :call JsBeautify()<CR>

function! CopyMatches(reg)
  let hits = []
  %s//\=len(add(hits, submatch(0))) ? submatch(0) : ''/gne
  let reg = empty(a:reg) ? '+' : a:reg
  execute 'let @'.reg.' = join(hits, "\n") . "\n"'
endfunction
command! -register CopyMatches call CopyMatches(<q-reg>)

imap jj <Esc>

"ale status line
 set statusline+=%#warningmsg#
 set statusline+=\ %{ALEGetStatusLine()}
 set statusline+=%*

"go
nmap <Leader>g :GoRun<CR>
nmap <Leader>gr :GoRename<CR>
nmap <Leader>gb :GoBuild<CR>
nmap <Leader>ga :GoAlternate<CR>
nmap <Leader>gt :GoTest<CR>
nmap <Leader>gi :GoImports<CR>
let g:go_fmt_command = "goimports"
let g:go_gocode_propose_source=0

" Copy paste file name
nmap <Leader>fn :let @*=expand("%")<CR>
"" Copy paste file name + fullpath
nmap <Leader>fp :let @*=expand("%:p")<CR>

" FZF
set rtp+=/usr/local/opt/fzf

" Quit with :Q
command! -nargs=0 Quit :qa!

" Colors and highlighting
color gruvbox
set background=dark    " Setting dark mode

" status line
set statusline = ""
set statusline +=%3*%y%*                "file type
set statusline +=%2*%m%*                "modified flag
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%{fugitive#statusline()}

map <C-p> :FZF<CR>
map <Leader>i :Ag<CR>
nmap <Leader>w :Buffer<CR>

" Omnicomplete highlight
inoremap <C-k> <C-x><C-o>
setlocal omnifunc=go


" TODO to get it running
" Install https://github.com/junegunn/vim-plug
" Install https://github.com/junegunn/fzf
" Install the_silver_surfer (For AG in FZF)
" Install rubocop
" Install JsBeautify
" Go: Run GoInstallBinaries
