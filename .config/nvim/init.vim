source ~/.config/nvim/settings.vim

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'dylanaraps/wal.vim' " pywal colorscheme
Plug 'neovim/nvim-lspconfig' " Language Server
Plug 'hrsh7th/nvim-compe' " Autocomplete stuff
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

source ~/.config/nvim/mappings.vim

nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>p :Files<CR>

nnoremap <leader>u :UndotreeShow<CR>

" Language Servers
luafile ~/.config/nvim/plug-config/python-lsp.lua
luafile ~/.config/nvim/plug-config/ccls-lsp.lua
luafile ~/.config/nvim/plug-config/web-dev-lsp.lua
" luafile ~/.config/nvim/plug-config/go-lsp.lua

" Treesitter
luafile ~/.config/nvim/plug-config/treesitter.lua

" Configs
source ~/.config/nvim/plug-config/lsp-config.vim
luafile ~/.config/nvim/plug-config/compe-config.lua

set colorcolumn=120

" air-line
let g:airline_powerline_fonts = 1

colorscheme onedark
highlight Normal guibg=none
" highlight ColorColumn ctermbg=0 guibg=lightgrey

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 80})
augroup END
