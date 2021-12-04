set number
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set nowrap
set showmatch
set hlsearch
syntax enable
set clipboard+=unnamedplus
filetype plugin on
set mouse=a

call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'

Plug 'lervag/vimtex'
let g:vimtex_view_method = 'zathura'
"set conceallevel=1
"let g:tex_conceal='abdmg'
Plug 'morhetz/gruvbox'
let g:gruvbox_italic = 1
let g:gruvbox_termcolors = 16
let g:gruvbox_contrast_dark='hard'
Plug 'mangeshrex/uwu.vim'
Plug 'ayu-theme/ayu-vim' 
set termguicolors
let ayucolor='dark'
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'xuyuanp/nerdtree-git-plugin'
let g:NERDTreeGitStatusUseNerdFonts = 1
Plug 'majutsushi/tagbar'

Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['java','javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
call plug#end()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

colorscheme ayu

map <C-n> :NERDTreeToggle<CR>
nmap <C-m> :TagbarToggle<CR>
unmap <cr>
