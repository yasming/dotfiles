lua << EOF
  local default_on_attach = function(client, bufnr)
    -- use lsp omnicompletion if it's available
    vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

    -- use lsp powered indentation for gqq and = formatting when available
    if client.resolved_capabilities.document_formatting then
      vim.api.nvim_buf_set_option(bufnr, "formatexpr", "v:lua.vim.lsp.formatexpr()")
    end
  end

  local default_opts = { on_attach = default_on_attach }
  local lsp_installer = require("nvim-lsp-installer")

  lsp_installer.on_server_ready(function(server)

    local name = server.name
    local opts = default_opts

    if name == "gopls" then
      opts = {}
    end

    if name == "yamlls" then
      -- Wrapping the "default" function like this is important.
      opts.on_attach = function(client, bufnr)
        default_on_attach(client, bufnr)
        if vim.bo[bufnr].buftype ~= "" or vim.bo[bufnr].filetype == "helm" then
          vim.diagnostic.disable()
        end
      end
    end

    server:setup(opts)
  end)
EOF

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
au FileType make set noexpandtab " Makefile configs
au FileType sh setlocal autoindent " Bash configs
augroup filetypedetect
  autocmd BufRead,BufNewFile Jenkinsfile set filetype=groovy
augroup END
