syntax enable
hi Normal guibg=NONE ctermbg=NONE

set number
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set nowrapscan
set autoindent
set noswapfile

autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

" Disable parentheses matching depends on system. This way we should address all cases (?)
set noshowmatch
" NoMatchParen " This doesnt work as it belongs to a plugin, which is only loaded _after_ all files are.
" Trying disable MatchParen after loading all plugins
"
function! g:FckThatMatchParen ()
    if exists(":NoMatchParen")
        :NoMatchParen
    endif
endfunction

augroup plugin_initialize
    autocmd!
    autocmd VimEnter * call FckThatMatchParen()
augroup END

" Nix tabs.
autocmd BufRead,BufNewFile *.nix set shiftwidth=2 tabstop=2
