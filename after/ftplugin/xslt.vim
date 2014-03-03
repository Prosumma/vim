" Vim filetype plugin file
" Language:	xslt
" Maintainer:	Gregory Higley <code at revolucent dot net>
" Last Changed: 04 Sep 2013

if exists("b:did_ftafterplugin") | finish | endif
let b:did_ftafterplugin = 1

function! s:Tidy(start, end)
	exec a:start . "," . a:end . "! tidy -xml -indent -wrap 1000 % 2> /dev/null"
endfunction

command -buffer -range=% Tidy call <SID>Tidy(<line1>, <line2>)
nn <buffer> <silent> <localleader>t :Tidy<cr>
