if exists("b:current_syntax")
    finish
endif


syntax keyword potionKeyword to times loop while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return

syntax keyword potionFunction print join string

syntax match potionComment "\v#.*$"

syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\="
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="

syntax match potionVariable "\v/\w+"

" Numbers such as 1 2 3
syntax match potionNumber "\v[0-9]+"
" Numbers such as 2.5 4.5 6.5
syntax match potionNumber "\v[0-9]+\.[0-9]+"
" Numbers such as 0xff
syntax match potionNumber "\v0x[0-9a-fA-F]+"
" Numbers such as 2e-2 5e+5
syntax match potionNumber "\v[0-9]+e[\+\-][0-9]+"
" Numbers such as 2.424e-2 2.53434e+6"
syntax match potionNumber "\v[0-9]+\.[0-9]+e[\+\-][0-9]+"

syntax region potionString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region potionString start=/\v'/ skip=/\v\\./ end=/\v'/

highlight link potionKeyword Keyword
highlight link potionFunction Function
highlight link potionComment Comment
highlight link potionOperator Operator
highlight link potionVariable Identifier
highlight link potionNumber Number
highlight link potionString String


let b:current_syntax = "potion"
