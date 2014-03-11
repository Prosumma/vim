" Vim filetype plugin file
" Language:	pgsql
" Maintainer:	Gregory Higley <code at revolucent dot net>
" Last Changed: 06 Mar 2014

if exists("b:did_ftafterplugin") | finish | endif
let b:did_ftafterplugin = 1

setl ai expandtab sw=2 ts=2

function! PGRunScript(database, user, password, file)
	if strlen(a:file) == 0 | throw "No file specified!" | endif
	let l:args = ["psql"]
	if strlen(a:database) > 0
		call add(l:args, a:database)
		if strlen(a:user) > 0
			call add(l:args, a:user)
			if strlen(a:password) > 0
				call insert(l:args, printf("PGPASSWORD='%s'", a:password))
			endif
		endif
	endif
	call add(l:args, printf("< '%s'", a:file))
	exec "norm! :!" . join(l:args, " ") . "\n"
endfunction

function s:PGExec()
  let l:database = exists("b:pgdb") ? b:pgdb : ""
  let l:user = exists("b:pguser") ? b:pguser : ""
  let l:password = exists("b:pgpassword") ? b:pgpassword : ""
  call PGRunScript(l:database, l:user, l:password, expand("%"))
endfunction

nno <buffer> <F5> :call <SID>PGExec()<CR>

