if !exists("g:drstring_command")
    let g:drstring_command = "drstring"
endif

function! DrString#Format() range
    let buf = bufname("%")
    if buf ==# ""
        echom "Save buffer to a file first."
        return
    endif

    silent w
    silent execute "!" . g:drstring_command . " format --add-placeholder -i " . buf . " --start-line " . (a:firstline - 1) . " --end-line " . (a:lastline - 1)
    e
endfunction

function! DrString#FormatAll()
    let buf = bufname("%")
    if buf ==# ""
        echom "Save buffer to a file first."
        return
    endif

    silent w
    silent execute "!" . g:drstring_command . " format --add-placeholder -i " . buf
    e
endfunction

function! DrString#Check()
    let buf = bufname("%")
    if buf ==# ""
        echom "Save buffer to a file first."
        return
    endif

    silent w
    cexpr system(g:drstring_command . " check -x '' -i " . buf)
    e
endfunction

function! DrString#Version()
    echom systemlist(g:drstring_command . " version")[0]
endfunction
