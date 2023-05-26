" Settings

syntax on

set number
set hidden                              " Required to keep multiple buffers open multiple buffers
set relativenumber
set nohlsearch
set autoindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set background=dark
set noshowmode
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set noswapfile
set nobackup
set termguicolors
set scrolloff=8
set iskeyword+=-                      	" treat dash separated words as a word text object
set encoding=UTF-8

let mapleader = " "

" End Settings


call plug#begin()

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'tiagovla/tokyodark.nvim'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'gruvbox-community/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lualine/lualine.nvim'
Plug 'hrsh7th/nvim-cmp' " The completion plugin
Plug 'hrsh7th/cmp-buffer' " Buffer completions
Plug 'hrsh7th/cmp-path' " Path completions
Plug 'williamboman/mason.nvim', { 'do': ':MasonUpdate' }
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'AlphaTechnolog/pywal.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'numToStr/Comment.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

call plug#end()

" Config Files
luafile ~/.config/nvim/mason.lua
luafile ~/.config/nvim/cmp.lua
luafile ~/.config/nvim/lsp.lua
luafile ~/.config/nvim/treesitter.lua
luafile ~/.config/nvim/telescope.lua
luafile ~/.config/nvim/lualine.lua
luafile ~/.config/nvim/toggleterm.lua
luafile ~/.config/nvim/autopairs.lua
luafile ~/.config/nvim/comment.lua
luafile ~/.config/nvim/nvim-tree.lua

" Mappings

" Alternate way to save
nnoremap <C-s> :w<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Consistency
nnoremap Y y$

nnoremap <leader>e :NvimTreeToggle<CR>

nnoremap <leader>f :Telescope find_files<CR>
nnoremap <leader>b :Telescope buffers<CR>
nnoremap <leader>s :Telescope live_grep<CR>

" Better buffer management
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l


" End Mappings

set background=dark
try
   colorscheme tokyonight
   " colorscheme catppuccin
   " colorscheme gruvbox
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
endtry

highlight Normal guibg=None ctermbg=NONE

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 80})
augroup END
