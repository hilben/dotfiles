filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/vundle'

" Some vim default settings
Plugin 'tpope/vim-sensible' 

" Git plugin
Plugin 'tpope/vim-fugitive'

" Gui
Plugin 'scrooloose/nerdtree'

" Multi cursor
Plugin 'kristijanhusak/vim-multiple-cursors'

" Search in current file
Plugin 'lokaltog/vim-easymotion'

" Search everywhere
Plugin 'junegunn/fzf.vim'

" Code analysis
Plugin 'ngmy/vim-rubocop'
Plugin 'scrooloose/syntastic'

" displaying marks in side
Plugin 'kshenoy/vim-signature'

" syntax highlighting
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'elixir-lang/vim-elixir'
Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim'

" Color Schemes
Plugin 'morhetz/gruvbox'

" Color highlighting
Plugin 'chrisbra/Colorizer'

" Languages
" Ruby
Plugin 'vim-ruby/vim-ruby'

" Javascript
Plugin 'maksimr/vim-jsbeautify'
" React
Plugin 'mxw/vim-jsx'

call vundle#end()


filetype plugin indent on
filetype plugin on " enable plugins
set autoindent " code autoindent
set autowrite " Automatically :write before running commands
set backspace=indent,eol,start
set backup " backup files
set backupdir=/tmp,. " backup files
set clipboard=unnamed " advanced clipboard"
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
set omnifunc=on " autocomplete function
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
set wildmenu " command-line completion
set wrapscan " search loop

" Automatic formatting
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
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

" Quick ESC
imap jj <ESC>
imap hh <ESC>

" Define leader
let mapleader="\<Space>"

" format the entire file
nmap <leader>fef ggVG=

" remove unneeded whitespaces
nnoremap <Leader>s :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

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

" Gif config
nmap <Leader>s <Plug>(easymotion-s2)

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1

" rubo cop
let g:vimrubocop_config = '.rubocop.yml'
nmap <Leader>r :RuboCop<CR>
nmap <Leader>ra :RuboCop -a<CR>

" js beautify
map <Leader>j :call JsBeautify()<CR>

" Syntastic
let g:syntastic_auto_jump = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_filetype_map = { 'javascript.doxygen': 'javascript' }
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_enable_elixir_checker = 1
let g:syntastic_elixir_checkers = ['elixir']
let g:syntastic_always_populate_loc_list = 1

" FZF
set rtp+=/usr/local/opt/fzf

" Quit with :Q
command -nargs=0 Quit :qa!

" Colors and highlighting
set cursorline " highlight current line
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

" TODO to get it running
" Install vundle (To install all those plugins)
" Install fzf
" Install the_silver_surfer (For AG in FZF)
" Install rubocop
" Install JsBeautify
