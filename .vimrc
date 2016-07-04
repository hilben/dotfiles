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
Plugin 'shougo/vimproc'
Plugin 'shougo/vimshell'

" Git plugin
Plugin 'tpope/vim-fugitive'

Plugin 'kana/vim-textobj-user'
Plugin 'yegappan/mru'

" Gui
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'

" Search
Plugin 'rking/ag.vim'
" Plugin 'kien/ctrlp.vim'
Plugin 'lokaltog/vim-easymotion'
Plugin 'Shougo/unite.vim'

" Code analysis
Plugin 'ngmy/vim-rubocop'
Plugin 'scrooloose/syntastic'

" highlighting
Plugin 'omer/vim-sparql'
Plugin 'othree/html5.vim'
" Plugin 'pangloss/vim-javascript'
Plugin 'elixir-lang/vim-elixir'
Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim'
Plugin 'kshenoy/vim-signature'

" Color Schemes
Plugin 'nanotech/jellybeans.vim'

" Tagbar (not working)
Plugin 'majutsushi/tagbar'

" Languages
" Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'thoughtbot/vim-rspec'

call vundle#end()

color jellybeans

filetype plugin indent on

let mapleader=","


filetype plugin indent on
filetype plugin on " enable plugins
hi CursorColumn ctermbg=4
set autoindent " code autoindent
set autowrite     " Automatically :write before running commands
set backspace=indent,eol,start
set backup " backup files
set backupdir=/tmp,. " backup files
set clipboard=unnamed " advanced clipboard"
set colorcolumn=+1
set completeopt=menu,preview " autocomplete function
set cursorcolumn " show colum cursor
set cursorline " highlight current line
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
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]%{fugitive#statusline()}
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

" No show command
autocmd VimEnter * set nosc

" Quick ESC
imap jj <ESC>
imap hh <ESC>

" format the entire file
nmap <leader>fef ggVG=

" remove unneeded whitespaces
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

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
nmap s <Plug>(easymotion-s2)

" Resize buffers
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1

" rubo cop
let g:vimrubocop_config = '.rubocop.yml'
nmap <Leader>r :RuboCop<CR
nmap <Leader>ra :RuboCop -a<CR>

" Syntastic
let g:syntastic_auto_jump = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_filetype_map = { 'javascript.doxygen': 'javascript' }
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_always_populate_loc_list = 1


"tabs
nmap     <C-f>        <Esc>:tabnext<CR>
noremap  <C-t>     <Esc>:tabnew<CR>
nnoremap <C-x>         :tabclose<CR>

" CtrlP
" let g:ctrlp_working_path_mode = 'r'
" let g:ctrlp_by_filename = 1
" let g:ctrlp_max_files = 0
" let g:ctrlp_max_depth = 40
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" " set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
" let g:ctrlp_custom_ignore = { 'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$', 'link': 'some_bad_symbolic_links'}
" let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
" if executable('ag')
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" endif

" RSpec.vim mappings
map <Leader>qq :call RunCurrentSpecFile()<CR>
map <Leader>qw :call RunNearestSpec()<CR>
map <Leader>ww :call RunLastSpec()<CR>
map <Leader>qa :call RunAllSpecs()<CR>

" Save and load session
map <C-k> :mksession! ~/vim_session <cr>
map <C-l> :source ~/vim_session <cr>

" Quit with :Q
command -nargs=0 Quit :qa!

""" UNITE sTUFF
" set the fuzzy engine for searching
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#custom#source('file,file/new,buffer,file_rec,file_rec/async', 'matchers', 'matcher_fuzzy')
call unite#custom#source('file_rec,file_rec/async', 'matchers', ['converter_relative_word', 'matcher_fuzzy'])
call unite#custom#source('buffer,file,file_rec,file_rec/async', 'sorters', 'sorter_selecta')
" maximum charachers for fuzzy
let g:unite_matcher_fuzzy_max_input_length = 50

if executable('pt')
  " Use ag in unite grep source.
  let g:unite_source_grep_command = 'pt'
  let g:unite_source_grep_default_opts =
  \ '-i --vimgrep --line-numbers --nocolor --nogroup --hidden --ignore ' .
  \ '''.hg'' --ignore ''.svn'' --ignore ''*.sock'' --ignore ''tmp'' --ignore ''log'' --ignore ''.git'' --ignore ''.bzr'''
  let g:unite_source_grep_recursive_opt = ''
  " use ag for file searching
  let g:unite_source_rec_async_command = ['pt', '-i', '--nocolor', '--nogroup', '--ignore "tmp"', '--ignore "log"',
        \ '--ignore ".hg"', '--ignore ".svn"', '--ignore ".git"', '--ignore ".bzr"', '--hidden', '-g', '']
  let g:unite_source_rec_async_command = ['pt', '-i', '--nocolor', '--nogroup', '--hidden', '-g', '']

  let g:unite_source_history_yank_enable=1
  " cache the results
  let g:unite_source_rec_max_cache_files=500000
endif
" set sorting
call unite#filters#sorter_default#use(['sorter_rank', ''])
call unite#custom#source('buffer', 'sorters', 'sorter_ftime,sorter_rank,sorter_reverse')
" custom bindings inside Unite window
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  nmap <buffer> <C-k>     <Plug>(unite_toggle_auto_preview)
  nmap <buffer> <C-r>     <Plug>(unite_narrowing_input_history)
  imap <buffer> <C-r>     <Plug>(unite_narrowing_input_history)
  imap <silent><buffer><expr> <C-s> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  imap <silent><buffer><expr> <C-t> unite#do_action('tabopen')
  nmap <silent><buffer><expr> s unite#do_action('split')
  nmap <silent><buffer><expr> v unite#do_action('vsplit')
  nmap <silent><buffer><expr> t unite#do_action('tabopen')
endfunction

" Unite, main interface
nnoremap <LEADER>u :Unite -start-insert<CR>
" Unite, file search
nnoremap <LEADER>a:Unite -start-insert file_rec/async<CR>
" Unite, buffer and file search
map <C-p> :Unite -start-insert buffer file_rec/async<CR>
" Unite, buffer file search
nnoremap <LEADER>b :Unite -start-insert buffer<CR>
" Unite, grep in all files
nnoremap <LEADER>g :Unite grep:<CR>


" added
set noshowmatch         " Don't match parentheses/brackets
set nocursorline        " Don't paint cursor line
set nocursorcolumn      " Don't paint cursor column
set lazyredraw          " Wait to redraw
set scrolljump=8        " Scroll 8 lines at a time at bottom/top
let html_no_rendering=1 " Don't render italic, bold, links in HTML
