lua require('plugins')

let mapleader=' '

let g:rainbow_active = 1

set guifont=JetBrains\ Mono\ Nerd\ Font,DejaVu\ Sans\ Mono,Iosevka:h18
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



let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline_left_sep=''
"let g:airline_right_sep=''
let g:airline#extensions#tabline#buffer_idx_mode = 0
let g:airline#extensions#tabline#buffer_nr_show = 1


function! AirlineInit()
"let g:airline_symbols.linenr = ' L:'
"let g:airline_symbols.colnr = ' C:'
	let g:airline_section_z = "%p%%%#__accent_bold# %l%#__restore__#%#__accent_bold#,%v%#__restore__#"
endfunction

autocmd VimEnter * call AirlineInit()



" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect


" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=UTF-8

" TextEdit might fail if hidden is not set.
"set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=400

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set tabstop=4
set number
set relativenumber
"set cursorSurroundingLines=10
set scrolloff=5
set linebreak
set showbreak=...


syntax on

colorscheme onedark

"let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" `s{char}{label}`
" nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" telescope
nmap <Leader>th :Telescope oldfiles<CR>
nmap <Leader>tf :Telescope find_files<CR>
nmap <Leader>tt :Telescope<CR>
nmap <Leader>te :Telescope file_browser<CR>
nmap <Leader>tb :Telescope buffers<CR>
nmap <Leader>ts :Telescope lsp_document_symbols<CR>
nmap <Leader>tg :Telescope live_grep<CR>
"nmap <Leader>tr :lua require("telescope.builtin").file_browser({hidden=true, cwd=[[utils.buffer_dir()]]})<CR>
nmap <Leader>tr :lua require("telescope.builtin").file_browser({hidden=true, cwd=[[%:p:h]]})<CR>



" nerdtree
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>nc :NERDTreeCWD<CR>

" buffers
nnoremap <leader>bn :bn<CR>
nnoremap <C-l> :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <C-h> :bp<CR>
nnoremap <leader>bb :bn<CR>
nnoremap <leader>bf :bf<CR>
nnoremap <leader>bl :bl<CR>
nnoremap <leader>bd :bd<CR>

" tabs
nnoremap <leader>Tt :tabnew<CR>
nnoremap <leader>Tn :tabnext<CR>
nnoremap <leader>Tp :tabprev<CR>
nnoremap <leader>Tc :tabclose<CR>

" lsp
nnoremap gD :lua vim.lsp.buf.declaration()<CR>
nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap K :lua vim.lsp.buf.hover()<CR>
nnoremap gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <C-k> :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>wa :lua vim.lsp.buf.add_workspace_folder()<CR>
nnoremap <leader>wr :lua vim.lsp.buf.remove_workspace_folder()<CR>
nnoremap <leader>wl :lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nnoremap <leader>D :lua vim.lsp.buf.type_definition()<CR>
nnoremap <leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>ca :lua vim.lsp.buf.code_action()<CR>
nnoremap gr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>e :lua vim.diagnostic.open_float()<CR>
nnoremap [d :lua vim.diagnostic.goto_prev()<CR>
nnoremap ]d :lua vim.diagnostic.goto_next()<CR>
nnoremap <leader>q :lua vim.diagnostic.setloclist()<CR>
nnoremap <leader>f :lua vim.lsp.buf.formatting()<CR>
inoremap <C-space> <C-x><C-o>

"
"autocmd VimEnter * NERDTree
"autocmd TabNew * NERDTree
"autocmd VimEnter * Telescope fd 
autocmd TabNew * Telescope fd  
autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()

function! CleverTab()
    if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
        return "\<Tab>"
    else
        return "\<C-x>\<C-o>"
    endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>
