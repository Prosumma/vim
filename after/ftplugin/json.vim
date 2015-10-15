" Vim filetype plugin file
" Language:	JSON
" Maintainer:	Gregory Higley <code at revolucent dot net>
" Last Changed: 08 Aug 2015

if exists("b:did_ftafterplugin") | finish | endif
let b:did_ftafterplugin = 1

nno <leader>r :%! python -m json.tool<CR>
