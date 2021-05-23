set clipboard=unnamedplus
set expandtab ts=4 sw=4 ai
        

call plug#begin('~/.vim/plugged')

Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bfrg/vim-cpp-modern'
Plug 'preservim/nerdtree'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }

call plug#end()


set termguicolors     " enable true colors support
colorscheme purify
syntax on
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
:set number
let g:airline_theme='transparent'
set encoding=utf-8 

let g:airline#extensions#whitespace#enabled = 0

" air-line :)
"let g:airline_powerline_fonts = 1

" mappings
map <C-n> :NERDTreeToggle<CR>
"let NERDTreeMapOpenInTab='<ENTER>'


inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

if has("autocmd")

    " If the filetype is Makefile then we need to use tabs
    " So do not expand tabs into space.
    autocmd FileType make   set noexpandtab

endif
