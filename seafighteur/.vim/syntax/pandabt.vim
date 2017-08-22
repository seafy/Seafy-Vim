if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syntax region pandabtString start=/"/ skip=/\\./ end=/"/
syntax region pandabtComment start=/\/\// end=/$/ keepend

highlight link pandabtString String
highlight link pandabtComment Comment

let b:current_syntax = "pandabt"
