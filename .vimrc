filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'
Plugin 'gmarik/vundle'

 Plugin 'tpope/vim-sensible'

" Some default settings
Plugin 'tpope/vim-rvm'

" Git plugin
Plugin 'tpope/vim-fugitive'

Plugin 'kana/vim-textobj-user'
Plugin 'yegappan/mru'

" Gui
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'

" Search
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'lokaltog/vim-easymotion'

" Code analysis
Plugin 'ngmy/vim-rubocop'
Plugin 'scrooloose/syntastic'

" highlighting
Plugin 'omer/vim-sparql'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'elixir-lang/vim-elixir'
Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim'

" Color Schemes
Plugin 'nanotech/jellybeans.vim'

" Tagbar (not working)
Plugin 'majutsushi/tagbar'

call vundle#end()

color jellybeans

filetype plugin indent on

let mapleader=","

set nocursorline
set modelines=0
set lazyredraw
set clipboard=unnamed
set synmaxcol=400
set ttyscroll=100
set encoding=utf-8
set nowrap
set number
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase
set list listchars=tab:»·,trail:· " highlight spaces
set scrolloff=2                   " minimum lines above/below cursor
set softtabstop=2 " 1 Tab = 2 Spaces
set shiftwidth=2
set tabstop=2
set expandtab

" Automatic formatting
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.slim :%s/\s\+$//e

au BufNewFile * set noeol
au BufRead,BufNewFile *.go set filetype=go

" No show command
autocmd VimEnter * set nosc

" Quick ESC
imap jj <ESC>

" format the entire file
nmap <leader>fef ggVG=

" Open new buffers
nmap <leader>s<left>   :leftabove  vnew<cr>
nmap <leader>s<right>  :rightbelow vnew<cr>
nmap <leader>s<up>     :leftabove  new<cr>
nmap <leader>s<down>   :rightbelow new<cr>

" Gif config
nmap s <Plug>(easymotion-s2)

" Resize buffers
if bufwinnr(1)
  nmap Ä <C-W><<C-W><
  nmap Ö <C-W>><C-W>>
  nmap ö <C-W>-<C-W>-
  nmap ä <C-W>+<C-W>+
endif

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1

" Syntastic
let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_ruby_exec = '~/.rvm/rubies/ruby-2.2.2/bin/ruby'
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <Leader>e :SyntasticCheck<CR> :SyntasticToggleMode<CR>

" rubo cop
let g:vimrubocop_config = '~/.rubocop.yml'
nmap <Leader>r :RuboCop<CR>

"tabs
 nmap <C-f>   <Esc>:tabnext<CR>
 noremap <C-t>     <Esc>:tabnew<CR>
 nnoremap <C-x> :tabclose<CR>

" CtrlP
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 40
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = { 'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$', 'link': 'some_bad_symbolic_links'}

" Omnicfunc
" Omnicfunc: Use ruby completion within slim files:
" autocmd FileType slim setl omnifunc=rubycomplete#Complete "remove ?

" Quit with :Q
command -nargs=0 Quit :qa!
