set guicursor=
set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=4
set signcolumn=yes
set colorcolumn=80
set smartcase
set ignorecase

call plug#begin('~/.vim/plugged')
" Linting for now...?
Plug 'dense-analysis/ale'

" LSP Stuff
Plug 'neovim/nvim-lspconfig'          
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Snippets
Plug 'rafamadriz/friendly-snippets'

" telescope stuff
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" gruvy
Plug 'gruvbox-community/gruvbox'

" etc
Plug 'terrortylor/nvim-comment'
Plug 'tpope/vim-surround'
Plug 'osyo-manga/vim-over'
Plug 'christoomey/vim-tmux-navigator'
Plug 'thinca/vim-qfreplace'
Plug 'windwp/nvim-autopairs'
call plug#end()

colorscheme gruvbox

let mapleader = " "

lua << EOF

require('nvim_comment').setup({comment_empty = false})
require('nvim-autopairs').setup{}
require("lua_modules")

EOF

let g:ale_fix_on_save = 1

" Visually move text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Only yank from cursor to end of line
nnoremap Y yg$

" Keep cursor centered when doing next/prev
nnoremap n nzzzv
nnoremap N Nzzzv

" Keeps curson in place when doing J
nnoremap J mzJ`z

"create vim splits
nnoremap <Leader>\ :vsplit<CR>
nnoremap <Leader>- :split<CR>

" Move between vim splits
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-l> :wincmd l<CR>

" Use space to go back to previous buffer
nnoremap <Leader><Space> <C-^><CR>

" Run alefix with flick of the wrist
nnoremap <Leader>af :ALEFix<CR>
