" Vim filetype plugin file
" Language:	Rust
" Maintainer:	Gregory Higley <code at revolucent dot net>
" Last Changed: 16 May 2016

if exists("b:did_ftafterplugin") | finish | endif
let b:did_ftafterplugin = 1

setl ai sw=2 ts=2 et

nno <buffer> <F5> :! ruby %<CR>
