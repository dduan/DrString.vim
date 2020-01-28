if !exists("g:drstring_command")
    let g:drstring_command = "drstring"
endif

function! DrString#Format()
    let buf = bufname("%")
    if buf ==# ""
        echom "Save buffer to a file first."
        return
    endif

    silent w
    let line = line(".")
    silent execute "!" . g:drstring_command . " format --add-placeholder -i " . bufname("%") . " --start-line " . line . " --end-line " . line
    e
endfunction

function! DrString#Check()
    let buf = bufname("%")
    if buf ==# ""
        echom "Save buffer to a file first."
        return
    endif

    let line = line(".")
    silent w
    execute "!" . g:drstring_command . " check -i " . bufname("%")
    e
endfunction
