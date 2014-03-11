" Vim filetype plugin file
" Language:	vim
" Maintainer:	Gregory Higley <code at revolucent dot net>
" Last Changed: 06 Mar 2014

if exists("b:did_ftafterplugin") | finish | endif
let b:did_ftafterplugin = 1

setl ai expandtab sw=2 ts=2

nno <buffer> <F5> :source %<CR>
