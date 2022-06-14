" General Config
let mapleader=","
au FocusGained,BufEnter * :silent! !
set backspace=indent,eol,start
set history=100
set showcmd
set ignorecase
set mouse=a
set autoread
set clipboard=unnamed

" Folding
set foldmethod=indent
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Key maps
nmap <leader>q :q!<CR>
nmap <leader>w :w!<CR>

so ~/.config/nvim/conf.d/dracula.vim            " dracula theme configs
so ~/.config/nvim/plugs.vim                     " Vundle Initialization
so ~/.config/nvim/conf.d/ale.vim                " ale configs
so ~/.config/nvim/conf.d/appearance.vim         " appearance configs
so ~/.config/nvim/conf.d/completions.vim        " completions configs
so ~/.config/nvim/conf.d/golang.vim             " golang configs
so ~/.config/nvim/conf.d/indent-guides.vim      " indent-guides configs
so ~/.config/nvim/conf.d/lightline.vim          " lightline configs
so ~/.config/nvim/conf.d/navigation.vim         " navigation configs
so ~/.config/nvim/conf.d/nerdcommenter.vim      " nerdcommenter configs
so ~/.config/nvim/conf.d/nerdtree.vim           " nerdtree configs
so ~/.config/nvim/conf.d/nvim-lsp.vim           " nvim-lsp configs
so ~/.config/nvim/conf.d/nvim-treesitter.vim    " treesitter configs
so ~/.config/nvim/conf.d/noswap.vim             " Turn Off Swap Files
so ~/.config/nvim/conf.d/persistent-undo.vim    " persistent undo configs
so ~/.config/nvim/conf.d/search.vim             " search configs
so ~/.config/nvim/conf.d/vim-visual-multi.vim   " vim-visual-multi configs
so ~/.config/nvim/conf.d/terminal.vim           " terminal emulation configs
so ~/.config/nvim/conf.d/ysiw.vim               " ysiw configs
so ~/.config/nvim/conf.d/startify.vim           " Startify configs
so ~/.config/nvim/conf.d/nvim-notify.lua        " vim-notify configs

autocmd VimEnter *
\   if !argc()
\ |   Startify
\ |   NERDTree
\ |   wincmd p
\ | endif
