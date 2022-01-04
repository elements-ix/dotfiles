map <Space> <Leader>

" Code action on <leader>a
vmap <leader>a <Plug>(coc-codeaction-selected)<CR>
nmap <leader>a <Plug>(coc-codeaction-selected)<CR>

" Format action on <leader>f
vmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

" Goto definition
nmap <silent> gd <Plug>(coc-definition)

" Open definition in a split window
nmap <silent> gv :vsp<CR><Plug>(coc-definition)<C-W>L

" NerdTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Split windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

filetype plugin indent on
syntax on
colorscheme nord
set mouse=a
set number relativenumber
set clipboard=unnamed

" Python format on save with Black
autocmd BufWritePre *.py execute ':Black'

" Automatically format .md files to 80 chars
au BufRead,BufNewFile *.md setlocal textwidth=80
