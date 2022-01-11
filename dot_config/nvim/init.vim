"
" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=400

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When this option is enabled, vi will use spaces instead of tabs
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab
set autoindent

set smartcase

" Shift to the next round tab stop. 
set shiftround  
" Set auto indent spacing.
set shiftwidth=4

set path+=**

if exists('g:vscode')
    " todo 
else
    lua require('plugins')
    let g:rainbow_active = 1

    "set guifont=JetBrains\ Mono\ Nerd\ Font,DejaVu\ Sans\ Mono,Iosevka:h18
    "set guifont=JetBrains\ Mono:h8
    set guifont=Monospace:h10
    let g:airline_powerline_fonts = 1

    let g:rustfmt_autosave = 1

    let g:neovide_refresh_rate=60
    "let g:neovide_transparency=1
    let g:neovide_cursor_antialiasing=v:true


    hi Comment cterm=italic
    let g:onedark_terminal_italics=1
    let g:onedark_termcolors=256

    " checks if your terminal has 24-bit color support
    if (has("termguicolors"))
        set termguicolors
        hi LineNr ctermbg=NONE guibg=NONE
    endif

    if (has("nvim"))
      "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
      let $NVIM_TUI_ENABLE_TRUE_COLOR=1
      let $NeovideMultiGrid =1
    endif

    " Set internal encoding of vim, not needed on neovim, since coc.nvim using some
    " unicode characters in the file autoload/float.vim
    set encoding=UTF-8

    " TextEdit might fail if hidden is not set.
    "set hidden

    " Give more space for displaying messages.
    set cmdheight=2


    set number
    set relativenumber
    set signcolumn=yes
    "set cursorSurroundingLines=10
    set scrolloff=5

    set linebreak
    set showbreak=...


    syntax on

    colorscheme onedark

    "nmap <silent> gt :lua require('dap-go').debug_test()<CR>
    tnoremap <Esc> <C-\><C-n>

    "autocmd VimEnter * NERDTree
    "autocmd TabNew * NERDTree
    "autocmd VimEnter * Telescope fd 
    autocmd TabNew * Telescope fd  
    "autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()

    function! CleverTab()
        if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
            return "\<Tab>"
        else
            return "\<C-x>\<C-o>"
        endif
    endfunction
    "inoremap <Tab> <C-R>=CleverTab()<CR>
endif


"  ----------------------------------
"  KEYBOAD SHORTCUTS
"  --------------------------------
"
let mapleader=' '

noremap <silent> <ALT-h> <ESC>
noremap <silent> <ALT-j> <ESC>
noremap <silent> <ALT-k> <ESC>
noremap <silent> <ALT-l> <ESC>
inoremap <silent> <ALT-h> <ESC>
inoremap <silent> <ALT-j> <ESC>
inoremap <silent> <ALT-k> <ESC>
inoremap <silent> <ALT-l> <ESC>

" tabs
nnoremap <silent> <leader>ta :tabnew<CR>
nnoremap <silent> <leader>tt :tabnext<CR>
nnoremap <silent> <tab> :tabnext<CR>
nnoremap <silent> <leader>tn :tabnext<CR>
nnoremap <silent> <leader>tp :tabprev<CR>
nnoremap <silent> <leader>tc :tabclose<CR>

" repet . comment over a range
xmap <silent> . :normal .<CR>

nnoremap B ^
nnoremap E $
noremap <silent> <leader><cr> :noh<cr>
inoremap jk <esc>

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


if exists('g:vscode')
    " todo 
else
"    map <silent> s :lua require'hop'.hint_char1({ current_line_only = false })<cr>
"    map <silent> S :lua require'hop'.hint_words({ current_line_only = false })<cr>
"    map <silent> <Leader>j :lua require'hop'.hint_lines({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>
"    map <silent> <Leader>k :lua require'hop'.hint_lines({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>
"
    " easy motion
    "let g:EasyMotion_do_mapping = 0 " Disable default mappings

    " Jump to anywhere you want with minimal keystrokes, with just one key
    " binding.
    " `s{char}{label}`
    " nmap s <Plug>(easymotion-overwin-f)
    " or
    " `s{char}{char}{label}`
    " Need one more keystroke, but on average, it may be more comfortable.
    "nmap s <Plug>(easymotion-overwin-f)

    " Turn on case-insensitive feature
    "let g:EasyMotion_smartcase = 1

    " JK motions: Line motions
    "map <Leader>j <Plug>(easymotion-j)
    "map <Leader>k <Plug>(easymotion-k)
endif

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
    nmap <silent> <Leader>fr :lua require("telescope").extensions.file_browser.file_browser({hidden=true, cwd=[[%:p:h]]})<CR>
endif


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
    " todo 
else
    " aerial
    map <silent> <leader>aa :AerialToggle<CR>
endif



function Newscratch()
    execute 'new'
    setlocal buftype=nofile
    setlocal bufhidden=hide
    setlocal noswapfile
    file Scratch 
endfunction

command! Scratch call Newscratch()

