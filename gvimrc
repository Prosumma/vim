" Let's make it pretty

set guifont=Source\ Code\ Pro:h16

" ir_black looks beautiful when editing all languages but Ruby.
set transparency=4
colo ir_black

if filereadable(".lgvimrc")
  so .lgvimrc
end

