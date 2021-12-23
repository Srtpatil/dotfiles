source ~/.config/nvim/settings.vim
source ~/.config/nvim/mappings.vim

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'dylanaraps/wal.vim' " pywal colorscheme
Plug 'neovim/nvim-lspconfig' " Language Server
Plug 'hrsh7th/nvim-compe' " Autocomplete stuff
Plug 'https://github.com/vim-airline/vim-airline' " Status bar

call plug#end()

" Language Servers
luafile ~/.config/nvim/plug-config/python-lsp.lua
luafile ~/.config/nvim/plug-config/ccls-lsp.lua

" Configs
source ~/.config/nvim/plug-config/lsp-config.vim
luafile ~/.config/nvim/plug-config/compe-config.lua

set colorcolumn=80

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_theme='dark'

colorscheme wal
highlight ColorColumn ctermbg=0 guibg=lightgrey
