" Let's make it pretty

set guifont=Source\ Code\ Pro:h16

" ir_black looks beautiful when editing all languages but Ruby.
set transparency=10
colo ir_black

if filereadable(".lgvimrc")
  so .lgvimrc
end

" codeschool looks great when editing Ruby.
" For all other languages I find it looks like ass.
" set transparency=3
" colo codeschool
