" Vim filetype plugin file
" Language:	rebol
" Maintainer:	Gregory Higley <code at revolucent dot net>
" Last Changed: 04 Sep 2013

if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

setl ai
nn <buffer> <F5> :! rebol -qs %<cr>
ino <buffer> <F5> <esc>:! rebol -qs %<cr>
