"""""""""""""""""""""""""""""""""""""
" starcat's Vimrc configuration 
"""""""""""""""""""""""""""""""""""""
if !has("gui_running")
    :source $VIMRUNTIME/menu.vim 
    :set wildmenu                        
    :set cpoptions-=<
    :set wildcharm=<C-Z>
    :map <F4> :emenu <C-Z>
endif

set nocompatible
syntax on
set nowrap
set encoding=utf8
set backup
" Vundle for managing plugins
" Before using it need to be cloned from Git
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


"""" START Vundle Configuration 

" Disable file type for vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"""" Plugins to be used

" NerdTree for 
Plugin 'scrooloose/nerdtree'

"Nine info line
Plugin 'itchyny/lightline.vim'

" Themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'chriskempson/base16-vim'
Plugin 'daylerees/colour-schemes'
Plugin 'ajh17/Spacegray.vim'
Plugin 'colepeters/spacemacs-theme.vim'

" Auto paste mode enable
Plugin 'ConradIrwin/vim-bracketed-paste'

call vundle#end()            " required
filetype plugin indent on    " required

"""" END Vundle Configuration 

" Show linenumbers
set number
set ruler

" Set Proper Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Always display the status line
set laststatus=2

" Enable highlighting of the current line
"set cursorline
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white

" Theme and Styling 
set t_Co=256
set background=dark

" disabled for putty
"if (has("termguicolors"))
"  set termguicolors
"endif

let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme spacegray

" colorscheme spacemacs-theme
 
let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1


"Vim-Airline Configuration
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1 
"let g:airline_theme='hybrid'
"let g:hybrid_custom_term_colors = 1
"let g:hybrid_reduced_contrast = 1 

"""""""""""""""""""""""""""""""""""""
" Mappings configurationn
"""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
