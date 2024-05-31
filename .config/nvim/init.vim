 :set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
" :set softtabstop=4
" :set mouse=a

call plug#begin()
Plug 'https://github.com/tpope/vim-surround' " for surround ysw
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting fcc and gc
Plug  'https://github.com/ap/vim-css-color' " Css Colors Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' "Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Dev Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple courors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim' " Auto Completion
Plug 'https://github.com/junegunn/fzf.vim'
call plug#end()
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
let g:neoformat_try_node_exe = 1

nmap <F8> :TagbarToggle<CR>
:set completeopt-=preview " for no preview
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeToggle<CR>
              inoremap <silent><expr> <tab>
                    \ coc#pum#visible() ? coc#pum#confirm()
                    \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nnoremap <silent> <C-r> :undo<CR>
nnoremap <silent> <F>  
nnoremap <silent> <C-p> :Files<CR> ⁠
