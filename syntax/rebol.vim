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

syn match rebSheBang "\%^#!.*" display

" Numbers
syn match rebInteger "\<[+-]\=\d\+\('\d*\)*\>"
" syn match       rebDecimal    "[+-]\=\(\d\+\('\d*\)*\)\=[,.]\d\=\(e[+-]\=\d\+\)\="
" syn match       rebDecimal    "[+-]\=\d\+\('\d*\)*\(e[+-]\=\d\+\)\="

" Tuples
" syn match	rebTuple	"\(\d\+\.\)\{2,}"

" Words predefined by REBOL at startup.
syn keyword rebPredefined about abs absolute action action? add ajoin all also alter and~ any any-block? any-function? any-object? any-path? any-string? any-word? append apply aqua arccosine arcsine arctangent array as-pair ascii? ask assert at attempt
syn keyword rebPredefined back backslash backspace base-color beige binary? bind bind? bitset? black block? blue body-of boot-print bound? break brick brown browse bs bugs
syn keyword rebPredefined call case catch cause-error cd change change-dir changes char? charset chat check checksum clean-path clear clos close closure closure? coal coffee collect collect-words command? comment complement compose compress confirm construct context continue copy cosine cr create crimson crlf cyan
syn keyword rebPredefined datatype? datatypes date? debase decimal? decloak decode decode-url decompress default dehex delect delete delete-dir deline delta-profile delta-time demo detab difference dir? dirize divide do do-callback do-codec do-commands docs does dp ds dt dump dump-obj
syn keyword rebPredefined echo eighth either email? empty? enbase encloak encode encoding? enline entab equal? equiv? error? escape even? event? evoke exclude exists? exit exp extend extract
syn keyword rebPredefined fifth file-type? file? find find-all find-script first first+ for forall foreach forest forever form format forskip found? fourth frame? func funco funct function function?
syn keyword rebPredefined get get-env get-path? get-word? gob? gold gray greater-or-equal? greater? green
syn keyword rebPredefined halt handle? has head head? help
syn keyword rebPredefined if image? import in in-dir index? info? input insert integer? intern intersect invalid-utf? issue? ivory
syn keyword rebPredefined join
syn keyword rebPredefined khaki
syn keyword rebPredefined last last? latin1? launch leaf length? lesser-or-equal? lesser? lf lib library? license limit-usage linen list-dir list-env lit-path? lit-word? load load-extension load-gui log-10 log-2 log-e logic? loop loud-print lowercase ls
syn keyword rebPredefined magenta make make-banner make-dir map map-each map-event map-gob-offset map? maroon max maximum maximum-of min minimum minimum-of mint mkdir mod modified? modify module module? modulo mold mold64 money? more move multiply
syn keyword rebPredefined native native? navy negate negative? new-line new-line? newline newpage next ninth none none? not not-equal? not-equiv? now null number?
syn keyword rebPredefined object object? odd? offset? oldrab olive op? open open? orange or~
syn keyword rebPredefined pair? papaya paren? parse past? path? pending percent? pewter pi pick pink poke port? positive? power prin print printf probe protect purple pwd
syn keyword rebPredefined q query quit quote
syn keyword rebPredefined REBOL random read rebcode? reblue rebol.com rebolor recycle red reduce refinement? reflect reform rejoin remainder remold remove remove-each rename repeat repend replace request-file resolve return reverse reword rm round
syn keyword rebPredefined same? save say-browser scalar? script? second secure select selfless? series? set set-env set-path? set-scheme set-word? seventh shift sienna sign? silver sine single? sixth size? skip sky slash snow sort source sp space spec-of speed? split split-path square-root stack stats strict-equal? strict-not-equal? string? struct? subtract suffix? swap switch sys system
syn keyword rebPredefined t tab tag? tail tail? take tan tangent task task? teal tenth third throw time? title-of to to-binary to-bitset to-block to-char to-closure to-command to-datatype to-date to-decimal to-email to-error to-event to-file to-function to-get-path to-get-word to-gob to-hex to-image to-integer to-issue to-lit-path to-lit-word to-local-file to-logic to-map to-module to-money to-object to-pair to-paren to-path to-percent to-port to-rebol-file to-refinement to-relative-file to-set-path to-set-word to-string to-tag to-time to-tuple to-typeset to-url to-vector to-word trace transcode trim true? try tuple? type? types-of typeset?
syn keyword rebPredefined unbind undirize union unique unless unprotect unset unset? until update upgrade uppercase url? usage use utf? utype?
syn keyword rebPredefined value? values-of vector? violet
syn keyword rebPredefined wait wake-up water what what-dir wheat while white why? word? words-of write
syn keyword rebPredefined xor~
syn keyword rebPredefined yello yellow
syn keyword rebPredefined zero zero?
syn keyword rebOperator ! != !== & * ** + ++ - -- --- / // < <= <> = == =? > >= ? ?? and or xor |
syn keyword rebSpecial false off on no none rebol self true yes

" Basics
syn match rebType "\K\k*!\>"
syn match rebComment ";.*$"
syn match rebRefinementWord "\K\k*" contained
syn match rebRefinement "\/" nextgroup=rebRefinementWord
syn match rebGetWord "\K\k*" contained
syn match rebGet ":" nextgroup=rebGetWord
syn match rebLitWord "\K\k*" contained
syn match rebLit "'" nextgroup=rebLitWord
syn match rebLocal "\/local\>"
syn match rebSet "\K\k*:"

" Strings
syn match rebString "\a\+:\/\/[^[:space:]]*" 
syn match rebString "%[^[:space:]]*"
syn region rebString oneline start=+%\="+ skip=+^"+ end=+"+ contains=rebSpecialCharacter
syn region rebString start=+[^#]{+ end=+}+ skip=+{[^}]*}+ contains=rebSpecialCharacter
syn match rebSpecialCharacter contained "\^[^[:space:][]"
syn match rebSpecialCharacter contained "%\d\+"

com! -nargs=+ RebHi hi def link <args>

RebHi rebComment Comment
RebHi rebSheBang Comment
RebHi rebOperator Operator
RebHi rebLocal Special
RebHi rebRefinementWord Constant
RebHi rebRefinement Constant
RebHi rebSpecial Special
RebHi rebLitWord Constant
RebHi rebLit Constant
RebHi rebPredefined Keyword
RebHi rebInteger Number
RebHi rebDecimal Number
RebHi rebTuple Number
RebHi rebSpecialCharacter Special
RebHi rebString String
RebHi rebType Type
RebHi rebGet Identifier
RebHi rebGetWord Identifier
RebHi rebSet Identifier

delc RebHi

syn sync fromstart
let b:current_syntax = "rebol"

" vim: ts=8
