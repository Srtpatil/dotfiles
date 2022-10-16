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

Plug 'tiagovla/tokyodark.nvim'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'gruvbox-community/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lualine/lualine.nvim'
Plug 'hrsh7th/nvim-cmp' " The completion plugin
Plug 'hrsh7th/cmp-buffer' " Buffer completions
Plug 'hrsh7th/cmp-path' " Path completions
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

" Config Files
luafile ~/.config/nvim/cmp.lua
luafile ~/.config/nvim/lsp.lua
luafile ~/.config/nvim/telescope.lua
luafile ~/.config/nvim/lualine.lua


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

nnoremap <leader>f :Telescope find_files<CR>
nnoremap <leader>b :Telescope buffers<CR>
nnoremap <leader>s :Telescope live_grep<CR>

" End Mappings

set background=dark
colorscheme tokyodark
let g:lightline = {'colorscheme' : 'tokyonight'}


augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 80})
augroup END
