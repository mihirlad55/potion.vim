echom "Autoloading..."

function! potion#running#PotionCompileAndRunFile()
    write
    silent !clear
    execute "!" . g:potion_command . " " . bufname("%")
endfunction

function! potion#running#PotionShowBytecode()
    write
    " Get the bytecode
    let bytecode = system(g:potion_command . " -c -V " . bufname("%"))   

    if v:shell_error != 0
        echom bytecode
        return
    endif

    let bufnum = bufwinnr("__Potion_Bytecode__")

    if bufnum == -1
        " Open a new split and set it up
        vsplit __Potion_Bytecode__
        setlocal filetype=potionbytecode
        setlocal buftype=nofile
    else
        execute bufnum . "wincmd w"
        normal! ggdG
    endif

    " Insert the bytecode
    call append(0, split(bytecode, '\v\n'))
endfunction
