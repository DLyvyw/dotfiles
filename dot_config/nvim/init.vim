call plug#begin(stdpath("data") . '/plugged')
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'

call plug#end()

lua require('plugins')

set guifont=JetBrains\ Mono\ Nerd\ Font,DejaVu\ Sans\ Mono,Iosevka:h14
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


let g:rainbow_active = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_left_sep=''
let g:airline_right_sep=''
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
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c


"let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" `s{char}{label}`
" nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


autocmd VimEnter * NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

au FileType go nmap <leader>t <Plug>(go-test)


syntax on
set tabstop=4
set number
colorscheme onedark
