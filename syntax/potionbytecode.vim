if exists("b:current_syntax")
    finish
endif


syntax keyword potionBytecodeKeyword getlocal move loadk bind loadpn call
            \ getupval self setlocal msg proto return setupval mult

syntax match potionBytecodeComment '\v;.*$'

highlight link potionBytecodeComment Comment
highlight link potionBytecodeKeyword Keyword

let b:current_syntax = "potionbytecode"
