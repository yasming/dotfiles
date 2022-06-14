let g:lightline = { 'colorscheme': 'darcula', }

let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_infos = "\uf129"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

let g:lightline.active = {
      \ 'left': [[ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ]],
      \ 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ]]
      \ }

let g:lightline.tabline = {
      \ 'left': [ ['buffers'] ],
      \ }

let g:lightline.separator = {
      \ 'left': '',
      \ 'right': ''
      \ }

let g:lightline.component_function = {
      \ 'lineinfo': 'LightlineLineinfo',
      \ }

let g:lightline.component_raw = {
      \ 'buffers': '1',
      \ }

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \  'buffers': 'lightline#bufferline#buffers',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \     'buffers': 'tabsel',
      \ }

let g:lightline#bufferline#enable_devicons  = 1
let g:lightline#bufferline#enable_nerdfont  = 1
let g:lightline#bufferline#unicode_symbols  = 1
let g:lightline#bufferline#min_buffer_count = 2
let g:lightline#bufferline#clickable        = 1
let g:lightline#bufferline#min_tab_count    = 2
let g:lightline#bufferline#show_number      = 1
let g:lightline#bufferline#shorten_path     = 0
let g:lightline#bufferline#unnamed          = '[Untitled]'

function! LightlineLineinfo() abort
    if winwidth(0) < 86
        return ''
    endif
    let l:current_line = printf('%-3s', line('.'))
    let l:max_line = printf('%-3s', line('$'))
    let l:lineinfo = ' ' . l:current_line . '/' . l:max_line
    return l:lineinfo
endfunction
