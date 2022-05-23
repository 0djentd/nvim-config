set nocompatible
set history=200		        " keep 200 lines of command line history
set ruler		            " show the cursor position all the time
set showcmd		            " display incomplete commands
set wildmenu		        " display completion matches in a status line
set number		            " display numbers
set mouse=a                 " mouse
set foldmethod=marker	    " fold by markers
set foldopen-=block	        " dont open folds when moving
set ttimeout		        " time out for key codes
set ttimeoutlen=100	        " wait up to 100ms after Esc for special key
set splitbelow splitright   " splits
set display=truncate        " Show @@@ in the last line if it is truncated.
set termguicolors           " termguicolors
syntax on
let mapleader = ","

" Indent
set expandtab
set shiftwidth=4
set tabstop=4

" Plugins {{{
call plug#begin()
" Various
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

" Git
Plug 'tpope/vim-fugitive'

" Start screen
Plug 'mhinz/vim-startify'

" Highlight/indent
Plug 'nvim-treesitter/nvim-treesitter'

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
" }}}

" Folds
" set foldmethod=expr
" set foldexpr=nvim_treesitter#foldexpr()
set foldminlines=5
set foldnestmax=2

" Colorscheme settings {{{
" other
lua require('simple-theme-config')

" gruvbox
set background=dark
let g:gruvbox_italic=1
let g:gruvbox_bold=1

" gruvbox-material
set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_enable_bold = 1

" tokyodark
let g:tokyodark_transparent_background=0
let g:tokyodark_enable_italic_comment=1
let g:tokyodark_enable_italic=1
let g:tokyodark_color_gamma="1.0"

" sonokai
let g:sonokai_style='default'
let g:sonokai_transparent_background=0
let g:sonokai_diagnostics_text_highlight=1
" let g:sonokai_diagnostic_line_highlight=0
" }}}

colorscheme sonokai

" Keymaps {{{
" nnoremap <Space> <nop>
" :imap ii <Esc>
" :map <F6> :!cargo clippy<CR>
" :map <F7> :!cargo r<CR>
"
" :nnoremap <F6> :NERDTreeToggle<CR>
" :nnoremap <F7> :TagbarToggle<CR>
" :nnoremap <F8> :Telescope<CR>

:nnoremap <F7> :NERDTreeToggleVCS<CR>
:nnoremap <F8> :TagbarToggle<CR>

:nnoremap TS :Telescope<CR>

" Bufferline
" These commands will navigate through buffers in order regardless of which mode you are using
" e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
nnoremap <silent>[b :BufferLineCyclePrev<CR>
nnoremap <silent>]b :BufferLineCycleNext<CR>
" }}}

" Plugins settings {{{
" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,js EmmetInstall

" Rust
let g:rust_fold=1

" NERDTree
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
" let NERDTreeWinSize=26
let NERDTreeNaturalSort=1
let NERDTreeMinimalUI=1

" airline settings
let g:airline#extensions#tagbar#enabled=1
let g:airline#extensions#keymap#enabled = 1
" let g:airline#extensions#lsp#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#nvimlsp#enabled = 1
let g:airline#extensions#nerdtree_statusline = 1
let g:airline_powerline_fonts = 1
let g:airline_exclude_preview = 0
" let g:airline#extensions#bufferline#enabled = 1
"
" ALE
let g:ale_completion_enabled = 0
let g:ale_disable_lsp = 1

" Startify
let g:startify_session_persistence = 0
let g:startify_change_to_vcs_root = 1

" Snippets
" " UltiSnips
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsEditSplit="vertical"

" vsnip
" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" " Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" " See https://github.com/hrsh7th/vim-vsnip/pull/50
" nmap        s   <Plug>(vsnip-select-text)
" xmap        s   <Plug>(vsnip-select-text)
" nmap        S   <Plug>(vsnip-cut-text)
" xmap        S   <Plug>(vsnip-cut-text)
" }}}

" LSP
lua require('simple-lsp-config')
set completeopt=menu,menuone,noselect
lua require('simple-cmp-config')
lua require('simple-wk-config')
lua require('simple-ts-config')
lua require('simple-bufferline-config')
lua require('simple-tc-config')
lua require('simple-tb-config')
