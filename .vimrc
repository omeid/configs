set nocompatible               " be iMproved
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


Plugin 'altercation/vim-colors-solarized'


"Syntastic options
let g:syntastic_cpp_checkers = ['gcc']    " Use gcc as default syntax checker
let g:syntastic_cpp_check_header = 1
let g:syntastic_check_on_open = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_auto_jump = 1

" C++11
"let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'


"  " Better :sign interface symbols
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
"
let syntastic_less_options="-ru --include-path ../bower_components/"

Plugin 'scrooloose/syntastic'

"Taglist
let Tlist_Auto_Highlight_Tag=1
let Tlist_Auto_Update=1
let Tlist_Highlight_Tag_On_BufEnter = 1
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_Auto_Highlight_Tag=1
let Tlist_Highlight_Tag_On_BufEnter=1




Plugin 'taglist.vim'
nnoremap <silent> <F12> :TlistToggle<CR>
" My Plugins here:

" Switch to alternate file
Plugin 'scrooloose/nerdtree'
nnoremap <silent> <F11> :NERDTreeToggle<CR>

Plugin 'jistr/vim-nerdtree-tabs'


Plugin 'pangloss/vim-javascript'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-jade'

Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'vim-stylus'
Plugin 'https://gist.github.com/omeid/726b71f78e56383a833f'

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
let g:vim_json_syntax_conceal=0

Plugin 'moll/vim-node'

Plugin 'Valloric/YouCompleteMe'

" 
""YouCompleteMe options
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_seed_identifiers_with_syntax = 0 "Feed YCM identifier with syntax keywords
"let g:ycm_cache_omnifunc = 0           " Don't cache omnifunc but requiery omnifunc everytime
"let g:ycm_register_as_syntastic_checker = 0 "Don't use ycm for Syntastic
"let g:ycm_complete_in_comments = 0      " Also use completion in comments
"let g:ycm_max_diagnostics_to_display = 60 " Increase items to display
"
let g:ycm_key_list_select_completion = ['<C-n>']
let g:ycm_key_list_previous_completion = ['<C-p>']


Plugin 'fatih/vim-go'
"let g:go_fmt_command="goimports"
let g:go_fmt_fail_silently = 1
au Filetype go nnoremap <C-]> :GoDef<CR> 

Bundle 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = '<C-n>'

" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


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


let g:bufferline_echo=0
let g:bufferline_show_bufnr = 1
let g:bufferline_modified = '*'
let g:bufferline_rotate = 1
let g:bufferline_fixed_index =  -1
 autocmd VimEnter *
      \ let &statusline='%{bufferline#refresh_status()}' . bufferline#get_status_string()

Plugin 'bling/vim-bufferline'


let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#bufferline#enabled = 1

let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ }

let g:airline#extensions#syntastic#enabled = 1

Plugin 'bling/vim-airline'
let g:airline_theme='serene'


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
set tabstop=2 shiftwidth=2
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
"easy buffer switchuUnnoremap <C-Right> :bnext<CR> 
nnoremap <C-Right> :bNext<CR> 
"nnoremap <silent> <S-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
"easy tab organization :D

"easy tab organization
"--- Ends navigation commands

" Better wq and w.
cnoremap <silent> wq<CR> w<bar>bd<CR>
cnoremap <silent> q<CR>  bd<CR>



"--- The following adds a sweet menu, press F4 to use it.
source $VIMRUNTIME/menu.vim
set wildmenu
set cpo-=<
set wcm=<C-Z>
map <F4> :emenu <C-Z>
"--- End sweet menu

ima <C-Return> <CR><CR><C-o>k<Tab> What is this?
set tags=./tags;/

set nobackup
set backupcopy=no
set nowritebackup
set noswapfile
set completeopt-=preview
set nohlsearch
set hidden

" highlight Pmenu ctermbg=238 gui=bold
" highlight Pmenu guibg=brown gui=bold
 highlight Pmenu ctermfg=cyan ctermbg=black

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
""}
