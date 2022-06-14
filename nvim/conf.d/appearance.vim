
set background=dark
set hlsearch
set incsearch
set smartcase
set noshowmode
set visualbell
set cursorline
set colorcolumn=80
set number
set hidden
set list listchars=tab:┊\ ,trail:·,precedes:«,extends:»,eol:¬
set statusline+=%#warningmsg#
set statusline+=%*
set ttyfast
set scrolloff=5
set sidescrolloff=5
set sidescroll=5
syntax on
colorscheme dracula
filetype on
filetype plugin on
filetype indent on


call wilder#setup({'modes': [':', '/', '?']})
call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
      \ 'highlights': {
      \   'border': 'Normal',
      \ },
      \ 'border': 'rounded',
      \ })))
