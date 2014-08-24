set nocompatible               " be iMproved
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"Syntastic options
let g:syntastic_check_on_open=1         " Always check when buffers are opened
let g:syntastic_cpp_checkers = ['gcc']    " Use gcc as default syntax checker
let g:syntastic_cpp_check_header = 1
let g:syntastic_auto_jump = 1

" C++11
"let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'


"  " Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
"
let syntastic_less_options="-ru --include-path ../bower_components/"
" 
""YouCompleteMe options
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_seed_identifiers_with_syntax = 0 "Feed YCM identifier with syntax keywords
"let g:ycm_cache_omnifunc = 0           " Don't cache omnifunc but requiery omnifunc everytime
"let g:ycm_register_as_syntastic_checker = 0 "Don't use ycm for Syntastic
"let g:ycm_complete_in_comments = 0      " Also use completion in comments
"let g:ycm_max_diagnostics_to_display = 60 " Increase items to display
"

"Taglist
let Tlist_Auto_Highlight_Tag=1
let Tlist_Auto_Update=1
let Tlist_Highlight_Tag_On_BufEnter = 1
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_Auto_Highlight_Tag=1
let Tlist_Highlight_Tag_On_BufEnter=1
" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'



Plugin 'taglist.vim'
nnoremap <silent> <F12> :TlistToggle<CR>
" My Plugins here:
Plugin 'bling/vim-bufferline'
" Switch to alternate file

Plugin 'scrooloose/nerdtree'
nnoremap <silent> <F11> :NERDTreeToggle<CR>

Plugin 'jistr/vim-nerdtree-tabs'

"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'

Plugin 'pangloss/vim-javascript'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-jade'

Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'vim-stylus'

Plugin 'vim-cpp-enhanced-highlight'
Plugin 'cpp.vim'
Plugin 'mileszs/ack.vim'

" Plugin 'bsandrow/vim-typewriter'
" Plugin 'othree/coffee-check.vim'

" Plugin 'davidhalter/jedi-vim.git'
" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-repeat'
"  Plugin 'Lokaltog/vim-easymotion'
"  Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"  Plugin 'tpope/vim-rails.git'
" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'rstacruz/sparkup'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'elzr/vim-json'
Plugin 'moll/vim-node'

Plugin 'omeid/vim-go'
let g:go_fmt_quickfix = 0
Plugin 'smancill/conky-syntax.vim'
Plugin 'lilydjwg/colorizer'
Plugin 'majutsushi/tagbar'
nmap <F10> :TagbarToggle<CR>

" non github repos
"Plugin 'git://git.wincent.com/command-t.git' "TODO: WHAT IS THE SEGGMENT
"FAULT FOR ?
" ...
Plugin 'cakebaker/scss-syntax.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on

set nocompatible "This fixes the problem where arrow keys do not function properly on some systems.

syntax on  "Enables syntax highlighting for programming languages
set mouse=a  "Allows you to click around the text editor with your mouse to move the cursor
set showmatch "Highlights matching brackets in programming languages
set autoindent  "If you're indented, new lines will also be indented
set smartindent  "Automatically indents lines after opening a bracket in programming languages
set backspace=2  "This makes the backspace key function like it does in other programs.
set tabstop=4  "How much space Vim gives to a tab
set number  "Enables line numbering
set smarttab  "Improves tabbing
set shiftwidth=2  "Assists code formatting
set showbreak=... "Put ... when line is broke :D
set smartcase " ignore case on search unless specified
"setlocal spell  "Enables spell checking (CURRENTLY DISABLED because it's kinda annoying). Make sure to uncomment the next line if you use this.
"set spellfile=~/.vimwords.add  "The location of the spellcheck dictionary. Uncomment this line if you uncomment the previous line.
set expandtab
set ruler "Always show the current position

"set foldmethod=manual  "Lets you hide sections of code SLOW!!!

"--- The following commands make the navigation keys work like standard editors
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk

"easy buffer switch
nnoremap <C-Left> :bprevious<CR> 
"easy buffer switch
nnoremap <C-Right> :bnext<CR> 
set hidden "Don't warn about unsaved buffer.

cnoremap <silent> wq<CR> w<bar>bd<CR>
cnoremap <silent> q<CR>  bd<CR>




nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
"easy tab organization :D
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>
"easy tab organization
"--- Ends navigation commands

"--- The following adds a sweet menu, press F4 to use it.
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>
map <F4> :emenu <C-Z>
"--- End sweet menu

imap <C-Return> <CR><CR><C-o>k<Tab> What is this?
set tags=./tags;/

set nobackup
set backupcopy=no
set nowritebackup
set noswapfile
set completeopt-=preview
highlight Pmenu ctermbg=238 gui=bold
highlight Pmenu guibg=brown gui=bold

"Status Line {  
  set laststatus=2                             " always show statusbar  
  set statusline=  
  set statusline+=%-10.3n\                     " buffer number  
  set statusline+=%F\                          " filename   
  set statusline+=%h%m%r%w                     " status flags  
  set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type  
  set statusline+=%=                           " right align remainder  
  set statusline+=0x%-8B                       " character value  
  set statusline+=%-14(%l,%c%V%)               " line, character  
  set statusline+=%<%P                         " file position  
"}
