require('djentd.options')
require('djentd.keymaps')
require('djentd.neovide')

-- Plugins {{{
vim.cmd [[
call plug#begin()
" Various utils
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'preservim/tagbar'
Plug 'mattn/emmet-vim'
Plug 'AndrewRadev/splitjoin.vim'

" Statusbar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Unix commands
Plug 'tpope/vim-eunuch'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Start screen
Plug 'mhinz/vim-startify'

" Highlight/indent
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'Yggdroot/indentLine'

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'folke/trouble.nvim'

" LSP
Plug 'dense-analysis/ale'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-emoji'
Plug 'hrsh7th/nvim-cmp'

" Highlight
Plug 'RRethy/vim-illuminate'
" Plug 'ap/vim-css-color'

" ultisnips
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" vsnip
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'hrsh7th/cmp-vsnip'
Plug 'rafamadriz/friendly-snippets'

" Keybinds
Plug 'folke/which-key.nvim'

" Icons
Plug 'ryanoasis/vim-devicons'

" Themes
Plug 'morhetz/gruvbox'
Plug 'jacoborus/tender.vim'
Plug 'tiagovla/tokyodark.nvim'
Plug 'rebelot/kanagawa.nvim'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/gruvbox-material'
Plug 'akinsho/bufferline.nvim'
call plug#end()
]]
-- }}}

require('djentd.plugins.lsp')
require('djentd.plugins.cmp')
require('djentd.plugins.which-key')
require('djentd.plugins.nvim-treesitter')
require('djentd.plugins.bufferline')
require('djentd.plugins.todo-comments')
require('djentd.plugins.trouble')

-- Plugins configs
require('djentd.plugins.airline')
require('djentd.plugins.ale')
require('djentd.plugins.emmet')
require('djentd.plugins.nerdtree')
require('djentd.plugins.startify')
-- TODO
-- require('djentd.plugins.ultrasnips')
-- TODO
require('djentd.plugins.vsnip')
require('djentd.plugins.rust')

-- Colorschemes configs
require('djentd.colorschemes.kanagawa')
require('djentd.colorschemes.gruvbox')
require('djentd.colorschemes.sonokai')
require('djentd.colorschemes.tokyodark')
require('djentd.colorschemes.gruvbox-material')

-- Colorscheme picker
require('djentd.colorscheme')
