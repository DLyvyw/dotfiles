"  ----------------------------------
"  KEYBOAD SHORTCUTS
"  --------------------------------
"
let mapleader=' '

" nicer defaults
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J m`J``

inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

inoremap <C-j> <esc>:m .+1<CR>==a
inoremap <C-k> <esc>:m .-2<CR>==a

" tabs
nnoremap <silent> <leader>ta :tabnew<CR>
nnoremap <silent> <leader>tt :tabnext<CR>
nnoremap <silent> <tab> :tabnext<CR>
nnoremap <silent> <leader>tn :tabnext<CR>
nnoremap <silent> <leader>tp :tabprev<CR>
nnoremap <silent> <leader>tc :tabclose<CR>

" repet . comment over a range
xmap <silent> . :normal .<CR>

" start/end line
nnoremap B ^
nnoremap E $

" no highlight
noremap <silent> <leader><cr> :noh<cr>

" quick escape
inoremap jk <esc>
noremap <silent> <ALT-h> <ESC>
noremap <silent> <ALT-j> <ESC>
noremap <silent> <ALT-k> <ESC>
noremap <silent> <ALT-l> <ESC>
inoremap <silent> <ALT-h> <ESC>
inoremap <silent> <ALT-j> <ESC>
inoremap <silent> <ALT-k> <ESC>
inoremap <silent> <ALT-l> <ESC>

" Switch between tabs
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt

"terminal
tnoremap <Esc> <C-\><C-n>

" file
if exists('g:vscode')
    nmap <silent> <Leader>fh <Cmd>call VSCodeNotify('workbench.action.openPreviousEditorFromHistory')<CR>
    nmap <silent> <Leader>ff <Cmd>call VSCodeNotify('breadcrumbs.focusAndSelect')<CR>
    nmap <silent> <Leader>ft <Cmd>call VSCodeNotify('workbench.action.showCommands')<CR>
    nmap <silent> <Leader>fe <Cmd>call VSCodeNotify('workbench.files.action.focusFilesExplorer')<CR>
    nmap <silent> <Leader>fb <Cmd>call VSCodeNotify('workbench.action.showAllEditorsByMostRecentlyUsed')<CR>
    "nmap <silent> <Leader>fs :Telescope lsp_document_symbols<CR>
    nmap <silent> <Leader>fg <Cmd>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})<CR>
    nmap <silent> <Leader>fr <Cmd>call VSCodeNotify('revealInExplorer')<CR>
else
    " telescope
    nmap <silent> <Leader>fh :Telescope oldfiles<CR>
    nmap <silent> <Leader>ff :Telescope find_files<CR>
    nmap <silent> <Leader>ft :Telescope<CR>
    nmap <silent> <Leader>fe :Telescope file_browser<CR>
    nmap <silent> <Leader>fb :Telescope buffers<CR>
    nmap <silent> <Leader>fs :Telescope lsp_document_symbols<CR>
    nmap <silent> <Leader>fg :Telescope live_grep<CR>
    nmap <silent> <Leader>f/ :Telescope current_buffer_fuzzy_find<CR>
    nmap <silent> <Leader>fr :lua require("telescope").extensions.file_browser.file_browser({hidden=true, cwd=[[%:p:h]]})<CR>
    nmap <silent> <Leader>fc :lua require('telescope.builtin').live_grep({additional_args = function(opts) return { '-g', '*.c', '-g', '*.h'} end })<CR> 
    nmap <silent> <Leader>f] :lua require('telescope.builtin').tags({ctags_file='tags'})<CR>
endif


" explore
if exists('g:vscode')
    nmap <silent> <Leader>nn <Cmd>call VSCodeNotify('workbench.explorer.fileView.toggleVisibility')<CR>
    nmap <silent> <Leader>nf <Cmd>call VSCodeNotify('revealInExplorer')<CR>
else
    " nerdtree
    nnoremap <silent> <leader>nn :NvimTreeToggle<CR>
    nnoremap <silent> <leader>nf :NvimTreeFindFile<CR>
endif

" buffers
if exists('g:vscode')
    " todo 
else
    nnoremap <silent> <leader>bn :bn<CR>
    nnoremap <silent> <C-l> :bn<CR>
    nnoremap <silent> <leader>bp :bp<CR>
    nnoremap <silent> <C-h> :bp<CR>
    nnoremap <silent> <leader>bb :bn<CR>
    nnoremap <silent> <leader>bf :bf<CR>
    nnoremap <silent> <leader>bl :bl<CR>
    nnoremap <silent> <leader>bd :bd<CR>
endif


" buffers
if exists('g:vscode')
"    noremap K <Cmd>call VSCodeNotify('editor.action.showHover')<CR>
"    nnoremap gh <Cmd>call VSCodeNotify('editor.action.showHover')<CR>
"    nnoremap gf <Cmd>call <SID>vscodeGoToDefinition('revealDeclaration')<CR>
"    nnoremap gd <Cmd>call <SID>vscodeGoToDefinition('revealDefinition')<CR>
"    nnoremap <C-]> <Cmd>call <SID>vscodeGoToDefinition('revealDefinition')<CR>
"    nnoremap gO <Cmd>call VSCodeNotify('workbench.action.gotoSymbol')<CR>
"    nnoremap gF <Cmd>call VSCodeNotify('editor.action.peekDeclaration')<CR>
"    nnoremap gD <Cmd>call VSCodeNotify('editor.action.peekDefinition')<CR>
"    nnoremap gH <Cmd>call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>

"    xnoremap K <Cmd>call VSCodeNotify('editor.action.showHover')<CR>
"    xnoremap gh <Cmd>call VSCodeNotify('editor.action.showHover')<CR>
"    xnoremap gf <Cmd>call <SID>vscodeGoToDefinition('revealDeclaration')<CR>
"    xnoremap gd <Cmd>call <SID>vscodeGoToDefinition('revealDefinition')<CR>
"    xnoremap <C-]> <Cmd>call <SID>vscodeGoToDefinition('revealDefinition')<CR>
"    xnoremap gO <Cmd>call VSCodeNotify('workbench.action.gotoSymbol')<CR>
"    xnoremap gF <Cmd>call VSCodeNotify('editor.action.peekDeclaration')<CR>
"    xnoremap gD <Cmd>call VSCodeNotify('editor.action.peekDefinition')<CR>
"    xnoremap gH <Cmd>call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>

    " <C-w> gf opens definition on the side
"    nnoremap <C-w>gf <Cmd>call VSCodeNotify('editor.action.revealDefinitionAside')<CR>
"    nnoremap <C-w>gd <Cmd>call VSCodeNotify('editor.action.revealDefinitionAside')<CR>
"    xnoremap <C-w>gf <Cmd>call VSCodeNotify('editor.action.revealDefinitionAside')<CR>
"    xnoremap <C-w>gd <Cmd>call VSCodeNotify('editor.action.revealDefinitionAside')<CR>

    " open quickfix menu for spelling corrections and refactoring
    " only keyboard arrows can be used to navigate, for a solution, see https://github.com/asvetliakov/vscode-neovim#keyboard-quickfix
"    nnoremap z= <Cmd>call VSCodeNotify('editor.action.quickFix')<CR>

    " workaround for calling command picker in visual mode
"    xnoremap <C-S-P> <Cmd>call VSCodeNotifyVisual('workbench.action.showCommands', 1)<CR>
"    xnoremap <C-S-F> <Cmd>call VSCodeNotifyVisual('workbench.action.findInFiles', 0)<CR>
else
    " lsp
    nnoremap <silent> gf :lua vim.lsp.buf.declaration()<CR>
    nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR>
    nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>
    nnoremap <silent> <leader><space> :lua vim.lsp.buf.hover()<CR>
    nnoremap <silent> gi :lua vim.lsp.buf.implementation()<CR>
    nnoremap <silent> <C-k> :lua vim.lsp.buf.signature_help()<CR>
    nnoremap <silent> <leader>wa :lua vim.lsp.buf.add_workspace_folder()<CR>
    nnoremap <silent> <leader>wr :lua vim.lsp.buf.remove_workspace_folder()<CR>
    nnoremap <silent> <leader>wl :lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
    nnoremap <silent> <leader>D :lua vim.lsp.buf.type_definition()<CR>
    nnoremap <silent> <leader>rn :lua vim.lsp.buf.rename()<CR>
    nnoremap <silent> <leader>ca :lua vim.lsp.buf.code_action()<CR>
    nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>
    nnoremap <silent> <leader>e :lua vim.diagnostic.open_float()<CR>
    nnoremap <silent> [d :lua vim.diagnostic.goto_prev()<CR>
    nnoremap <silent> ]d :lua vim.diagnostic.goto_next()<CR>
    nnoremap <silent> <leader>q :lua vim.diagnostic.setloclist()<CR>
    nnoremap <silent> <leader>f :lua vim.lsp.buf.formatting()<CR>
    inoremap <silent> <C-space> <C-x><C-o>
endif

if exists('g:vscode')
else
    nnoremap <silent> <leader>dc :lua require'dap'.continue()<CR>
    nnoremap <silent> <leader>dn :lua require'dap'.step_over()<CR>
    nnoremap <silent> <leader>di :lua require'dap'.step_into()<CR>
    nnoremap <silent> <leader>do :lua require'dap'.step_out()<CR>
    nnoremap <silent> <leader>db :lua require'dap'.toggle_breakpoint()<CR>
"    nnoremap <silent> <leader>dB :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
"    nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
    nnoremap <silent> <leader>dr :lua require'dap'.repl.open()<CR>
    nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>

    vnoremap <M-k> <Cmd>lua require("dapui").eval()<CR>
    noremap <M-k> <Cmd>lua require("dapui").eval()<CR>
end
