let s:p=expand('<sfile>:p:h')
function! gitignore#execute(...)
    let cmd="sh " . s:p . "/gitignore.sh"
    let output = system(cmd ." -t " . join(a:000, ','))
    vsplit .gitignore
    normal! ggdG
    call append(0, split(output, '\v\n'))
endfunction
