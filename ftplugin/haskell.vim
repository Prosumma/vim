" Vim filetype plugin file
" Language:	Haskell
" Maintainer:	Gregory Higley <code at revolucent dot net>
" Last Changed: 05 Mar 2015

if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

setl ai
nn <buffer> <F5> :! runhaskell %<cr>
ino <buffer> <F5> <esc>:! runhaskell %<cr>
