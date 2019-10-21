" Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'rhysd/vim-grammarous'
" colot scheams
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'dpelle/vim-LanguageTool'

Plug 'neomake/neomake'
 
" Initialize plugin system
call plug#end()

if (has("termguicolors"))
	set termguicolors
endi

" Theme
syntax enable
colorscheme one
set background=dark " for the dark version
"set background=light " for the light version
let g:airline_theme='one'

"colorscheme OceanicNext    
"let g:airline_theme='oceanicnext'

let g:deoplete#enable_at_startup = 1

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" When writing a buffer (no delay), and on normal mode changes (after 750ms).
" call neomake#configure#automake('nw', 750)

set number relativenumber

augroup numbertoggle
  autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
      autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" spelllang enable
setlocal spell spelllang=en_us
