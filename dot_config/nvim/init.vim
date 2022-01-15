"
" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu set completeopt=menuone,noinsert,noselect
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

set ignorecase
set smartcase

" Shift to the next round tab stop. 
set shiftround  
" Set auto indent spacing.
set shiftwidth=4

set path+=**

lua require('plugins')
runtime keybindings.vim
runtime commands.vim

if !exists('g:vscode')

    "set guifont=JetBrains\ Mono\ Nerd\ Font,DejaVu\ Sans\ Mono,Iosevka:h18
    "set guifont=JetBrains\ Mono:h8
    set guifont=Monospace:h10


    let g:rainbow_active = 1

    let g:airline_powerline_fonts = 1

    let g:rustfmt_autosave = 1

    let g:neovide_refresh_rate=60
    let g:neovide_transparency=0.95
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

    " line number
    set number
    set relativenumber

    set signcolumn=yes

    "set cursorSurroundingLines=10
    set scrolloff=5

    "line break
    set linebreak
    set showbreak=...

    syntax on

    colorscheme onedark
endif

