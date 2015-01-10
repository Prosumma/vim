" ir_black looks beautiful when editing all languages but Ruby.
set transparency=4
colo ir_black

runtime! gvimrc.d/*.vim

if filereadable(".lgvimrc")
  so .lgvimrc
end

