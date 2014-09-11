" Vim filetype plugin file
" Language:	mysql
" Maintainer:	Gregory Higley <code at revolucent dot net>
" Last Changed: 31 Oct 2013

if exists("b:did_ftafterplugin") | finish | endif
let b:did_ftafterplugin = 1

" Unless you have access to my local development machine, knowing this password won't help
" you much.
nn <buffer> <F5> :! mysql -u root --password=TMD^123 mobile10_carservice < %<cr>
