set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite,.DS_Store
let NERDTreeGitStatusUseNerdFonts = 1
let NERDTreeGitStatusIndicatorMapCustom = {
\   'Modified'  :'✹',
\   'Staged'    :'✚',
\   'Untracked' :'✭',
\   'Renamed'   :'➜',
\   'Unmerged'  :'═',
\   'Deleted'   :'✖',
\   'Dirty'     :'~',
\   'Ignored'   :'☒',
\   'Clean'     :'✔︎',
\   'Unknown'   :'?',
\ }
let NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', '\.DS_Store']
let NERDTreeMinimalUI=1
let NERDTreeMarkBookmarks=0
let NERDTreeHijackNetrw=1
let NERDTreeShowHidden=1
nmap <silent> <leader>m :NERDTreeToggle<cr>%
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd VimEnter * NERDTree | wincmd p
