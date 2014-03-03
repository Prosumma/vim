" Vim filetype plugin file
" Language:	j
" Maintainer:	Gregory Higley <code at revolucent dot net>
" Last Changed: 04 Sep 2013

if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

setl ai
nn <buffer> <F5> :! j %<cr>
ino <buffer> <F5> <esc>:! j %<cr>
