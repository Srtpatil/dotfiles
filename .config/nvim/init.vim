source ~/.config/nvim/settings.vim
source ~/.config/nvim/mappings.vim

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'dylanaraps/wal.vim' " pywal colorscheme
Plug 'neovim/nvim-lspconfig' " Language Server
Plug 'hrsh7th/nvim-compe' " Autocomplete stuff
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'junegunn/fzf.vim'

call plug#end()

nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>p :Files<CR>

" Language Servers
luafile ~/.config/nvim/plug-config/python-lsp.lua
luafile ~/.config/nvim/plug-config/ccls-lsp.lua
luafile ~/.config/nvim/plug-config/go-lsp.lua

" Configs
source ~/.config/nvim/plug-config/lsp-config.vim
luafile ~/.config/nvim/plug-config/compe-config.lua


set colorcolumn=80

" air-line
let g:airline_powerline_fonts = 1

colorscheme wal
highlight ColorColumn ctermbg=0 guibg=lightgrey
