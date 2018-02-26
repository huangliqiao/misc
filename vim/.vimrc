set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " alternatively, pass a path where Vundle should install plugins
  "call vundle#begin('~/some/path/here')

  " color scheme
  Plugin 'dracula/vim'
  Plugin 'altercation/vim-colors-solarized'

  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'

  " The following are examples of different formats supported.
  " Keep Plugin commands between vundle#begin/end.
  " plugin on GitHub repo
  Plugin 'tpope/vim-fugitive'
  " plugin from http://vim-scripts.org/vim/scripts.html
  " Plugin 'L9'
  " Git plugin not hosted on GitHub
  "Plugin 'git://git.wincent.com/command-t.git'
  " git repos on your local machine (i.e. when working on your own plugin)
  "Plugin 'file:///home/gmarik/path/to/plugin'
  " The sparkup vim script is in a subdirectory of this repo called vim.
  " Pass the path to set the runtimepath properly.
  Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
  " Install L9 and avoid a Naming conflict if you've already installed a
  " different version somewhere else.
  " Plugin 'ascenator/L9', {'name': 'newL9'}

  " You complete me
  Bundle 'Valloric/YouCompleteMe'
  Bundle 'davidhalter/jedi-vim'
  Bundle 'ervandew/supertab'

  Plugin 'scrooloose/nerdtree'

  Bundle 'taglist.vim'


  " All of your Plugins must be added before the following line
  call vundle#end()            " required
  filetype plugin indent on    " required
  " To ignore plugin indent changes, instead use:
  "filetype plugin on
  "
  " Brief help
  " :PluginList       - lists configured plugins
  " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
  " :PluginSearch foo - searches for foo; append `!` to refresh local cache
  " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
  "
  " see :h vundle for more details or wiki for FAQ
  " Put your non-Plugin stuff after this line

" autoload _vimrc
autocmd! bufwritepost _vimrc source %

" Enable color 256
set t_Co=256
let g:solarized_termcolors=256

" Set color scheme
colorscheme dracula
"colorscheme solarized

"set background=dark

" Enable syntax highlight
syntax enable
 
" Show line number
"set nu
" show matching bracets
set showmatch
set clipboard+=unnamed 
" Basic editing options
set expandtab
set shiftwidth=2
 
au FileType html,python,vim,javascript setl shiftwidth=2
au FileType html,python,vim,javascript setl tabstop=2
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4
 
set smarttab
set lbr
set tw=0
 
"Auto indent
set ai
 
" Smart indent
set si
 
" C-style indenting
set cindent
 
" Wrap lines
set wrap

" Sets how many lines of history VIM har to remember
set history=400
 
" Set to auto read when a file is changed from the outside
set autoread
 
" Have the mouse enabled all the time:
set mouse=v
 
" Do not redraw, when running macros.. lazyredraw
set lz
 
" set 7 lines to the curors - when moving vertical..
set so=7
 
" The commandbar is 2 high
set cmdheight=2
 
" Change buffer - without saving
set hid
 
" Ignore case when searching
" set ignorecase
set incsearch
 
" Set magic on
set magic
 
" No sound on errors.
set noerrorbells
set novisualbell
set t_vb=
 
" How many tenths of a second to blink
set mat=4
 
" Highlight search things
set hlsearch
 
" Turn backup off
set nobackup
set nowb
set noswapfile
 
" smart backspace
set backspace=start,indent,eol
"set showcmd
" switch buffers with Tab
map <C-Tab> :bn<CR>
map <S-Tab> :bp<CR>


" NERDTree
map <F10> :NERDTreeToggle<CR>
map <F2> :TlistToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" taglist
let Tlist_Auto_Highlight_Tag = 1
"let Tlist_Auto_Open = 1
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1 
let Tlist_File_Fold_Auto_Close = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Use_Right_Window = 1
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = 'name'
let Tlist_Ctags_Cmd = '/usr/bin/ctags'

inoremap { {<CR>}<ESC>kA<CR>

"YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
" 自动补全配置  
"set completeopt=longest,menu "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)  
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口  
"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>" 

"Clang configuration
let g:clang_library_path='/usr/lib/llvm-3.8/lib/'

let g:SuperTabDefaultCompletionType = "context"  
let g:jedi#popup_on_dot = 1
