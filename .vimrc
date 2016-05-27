set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'alfredodeza/coveragepy.vim'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
set number
set encoding=utf-8
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let python_highlight_all=1
syntax on
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
set clipboard=unnamed
" only use jedi completion with ctrl-space, not after '.'
" let g:jedi#goto_assignments_command = "<Leader>g"
let g:jedi#goto_definitions_command = "<Leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<Leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<Leader>r"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
