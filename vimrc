if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set spr

nn <F2> :w<CR>
ino <F2> <ESC>:w<CR>a
nn <C-T> :NERDTreeToggle<CR>
nn <C-B> :b#<CR>

set ai
set wrapscan
set ch=2
set vb
set backspace=2
set cpoptions=ces$
set stl=%f\ (%Y)\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ %=%{fugitive#statusline()}
set laststatus=2
set mousehide
set guioptions=ac
set timeoutlen=500
set history=100
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
set scrolloff=8
set virtualedit=all
set incsearch
set listchars=tab:▸\ ,eol:¬
set showcmd
" let g:NERDTreeShowHidden=1

let mapleader=' '
map <LEADER>f :NERDTreeFind<CR>
map <LEADER>l :set list!<CR>

autocmd BufNewFile,BufRead *.podspec set syntax=ruby

function! GetSyntaxFile()
  for path in pathogen#split(&rtp)
    let l:synpath = path . "/syntax/" . &l:filetype . ".vim"
    if filereadable(l:synpath)
      return l:synpath
    endif
  endfor
  return ""
endfunction

function! OpenSyntaxFile()
  let l:synpath = GetSyntaxFile()
  if l:synpath != ""
    exec "e " . l:synpath
  else
    echoerr "No syntax file found."
  endif
endfunction

command! -nargs=0 OpenSyntaxFile call OpenSyntaxFile()

function! StepColorSchemes()
  let l:colorschemes = split(globpath(&rtp, "colors/*.vim"), "\n")
  for l:colorscheme in l:colorschemes
    silent! exe 'so ' . l:colorscheme
    redraw
    echo l:colorscheme
    sleep 2
  endfor
endfunction

command! -nargs=0 StepColorSchemes call StepColorSchemes()

map Y y$

runtime! vimrc.d/*.vim

if filereadable(".lvimrc")
  so .lvimrc
end

