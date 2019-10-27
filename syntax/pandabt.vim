if exists("b:current_syntax")
    finish
endif

syntax keyword pandabtKeyword sequence fallback repeat while
syntax keyword pandabtKeyword not parallel random mute race
syntax keyword pandabtFunction tree Wait WaitRandom RealtimeWait Succeed Fail Running
syntax keyword pandabtFunction DebugLog DebugLogError DebugLogWarning DebugBreak
syntax region pandabtString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region pandabtString start=/\v'/ skip=/\v\\./ end=/\v'/
syntax match pandabtComment "\v//.*$"
syntax keyword pandabtTodo contained TODO FIXME XXX NOTE

highlight link pandabtKeyword Keyword
highlight link pandabtFunction Function
highlight link pandabtString String
highlight link pandabtComment Comment
highlight link pandabtTodo Todo

let b:current_syntax = "pandabt"
