"===============================================================================
" Plugin source
"===============================================================================
"'osyo-manga/vim-over'

"===============================================================================
" Plugin Configurations
"===============================================================================
function! VisualFindAndReplace()
    :OverCommandLine%s/
    :w
endfunction

function! VisualFindAndReplaceWithSelection() range
    :'<,'>OverCommandLine s/
    :w
endfunction

"===============================================================================
" Plugin Keymappings
"===============================================================================
nnoremap <Leader>fr :call VisualFindAndReplace()<CR>
xnoremap <Leader>fr :call VisualFindAndReplaceWithSelection()<CR>
