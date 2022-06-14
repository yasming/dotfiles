set expandtab
set nowrap
set linebreak
set shiftwidth=2
set softtabstop=2
set tabstop=4

lua << EOF
vim.cmd [[highlight IndentBlanklineIndent1 guibg=#B6B6B6 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guibg=#B6B6B6 gui=nocombine]]
require("indent_blankline").setup {
  char = "",
  space_char_blankline = " ",
  show_trailing_blankline_indent = false,
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    },
  space_char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    },
  }
EOF
let g:indent_blankline_filetype_exclude = ['dashboard',  'startify', 'floaterm', 'nerdtree', 'lspinfo', 'lsp-installer' ]
let g:indent_blankline_use_treesitter = v:true
