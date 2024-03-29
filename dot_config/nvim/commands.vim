
function Newscratch()
    execute 'new'
    setlocal buftype=nofile
    setlocal bufhidden=hide
    setlocal noswapfile
    file Scratch 
endfunction

" user commands
command! Scratch call Newscratch()
command! CD :cd %:h
command! CtagsUpdate :!ctags -R --totals --languages=C,C++ *  
command! EditVimInit :e $MYVIMRC
command! LoadVimInit :so $MYVIMRC
command! EditPlugins :e ~/.config/nvim/lua/plugins.lua


" auto commands
if !exists('g:vscode')
   autocmd TabNew * Telescope fd  
end

"autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()
