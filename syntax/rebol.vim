" Vim syntax file
" Language:	REBOL
" Maintainer:	Gregory Higley <code@revolucent.net>
" Filenames:	*.reb
" Last Change:	2014-09-19
"

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Rebol is case insensitive
syn case ignore

" As per current users documentation
if version < 600
  set isk=@,48-57,?,!,.,',+,-,*,&,\|,=,_,~,^
else
  setlocal isk=@,48-57,?,!,.,',+,-,*,&,\|,=,_,~,^
endif

" Numbers
syn match       rebInteger    "\<[+-]\=\d\+\('\d*\)*\>"
" syn match       rebDecimal    "[+-]\=\(\d\+\('\d*\)*\)\=[,.]\d\=\(e[+-]\=\d\+\)\="
" syn match       rebDecimal    "[+-]\=\d\+\('\d*\)*\(e[+-]\=\d\+\)\="

" Tuples
" syn match	rebTuple	"\(\d\+\.\)\{2,}"

" Words predefined by REBOL at startup.
syn keyword rebOperator + - * !
syn keyword rebPredefined ajoin any append apply
syn keyword rebPredefined bind block?
syn keyword rebPredefined compose copy
syn keyword rebPredefined default do
syn keyword rebPredefined either equal?
syn keyword rebPredefined false first for foreach func funct
syn keyword rebPredefined if import
syn keyword rebPredefined length?
syn keyword rebPredefined make
syn keyword rebPredefined none
syn keyword rebPredefined object op?
syn keyword rebPredefined parse print probe
syn keyword rebPredefined reduce rejoin repend
syn keyword rebPredefined same? second set
syn keyword rebPredefined to true
syn keyword rebSelf self
syn keyword rebRebol rebol

" Basics
" syn match rebGet ":elem"
syn match rebSet "\K\k*:"
syn match rebGet ":\K\k*"
syn match rebRefinement "\/\K\k*"
syn match rebLocal "\/local\>"
syn match rebType "\K\k*!\>"
syn match rebLit "'\K\k*"
syn match rebComment ";.*$"

" Strings
syn region      rebString     oneline start=+"+ skip=+^"+ end=+"+ contains=rebolSpecialCharacter
syn region      rebString     start=+[^#]{+ end=+}+ skip=+{[^}]*}+ contains=rebolSpecialCharacter
syn match       rebSpecialCharacter contained "\^[^[:space:][]"
syn match       rebSpecialCharacter contained "%\d\+"

com! -nargs=+ RebHi hi def link <args>

RebHi rebComment Comment
RebHi rebOperator Operator
RebHi rebLocal Special
RebHi rebRefinement Constant
RebHi rebSelf Special
RebHi rebRebol Special
RebHi rebLit Constant
RebHi rebPredefined Keyword
RebHi rebInteger Number
RebHi rebDecimal Number
RebHi rebTuple Number
RebHi rebSpecialCharacter Special
RebHi rebString String
RebHi rebType Type
RebHi rebGet Identifier
RebHi rebSet Identifier

delc RebHi

syn sync fromstart
let b:current_syntax = "rebol"

" vim: ts=8
