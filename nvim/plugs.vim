call plug#begin('~/.config/nvim/plugged')
  Plug 'AndrewRadev/splitjoin.vim'
  Plug 'Raimondi/delimitMate'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'airblade/vim-gitgutter'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'dense-analysis/ale'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'dstein64/vim-startuptime'
  Plug 'dyng/ctrlsf.vim'
  Plug 'ervandew/supertab'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'gelguy/wilder.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'itchyny/lightline.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'mengelbrecht/lightline-bufferline'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'mhinz/vim-startify'
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'preservim/nerdcommenter'
  Plug 'preservim/nerdtree'
  Plug 'qpkorr/vim-bufkill'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'maximbaz/lightline-ale'
  Plug 'rcarriga/nvim-notify'
call plug#end()
