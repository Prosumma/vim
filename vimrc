execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme xoria256
set number
set spr

nn <F2> :w<CR>
ino <F2> <ESC>:w<CR>a

set wrapscan
set ch=2
set vb
set backspace=2
set cpoptions=ces$
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]
set laststatus=2
set mousehide
set guioptions=ac
set timeoutlen=500
set history=100
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
set scrolloff=8
set virtualedit=all
set incsearch
