-- lua/lspconfig.lua

local lspconfig = require("lspconfig")

lspconfig.clangd.setup({
  on_attach = function(client, bufnr)
    -- LSPサーバーがアタッチされたときの設定
    local opts = { noremap = true, silent = true, buffer = bufnr }

    -- キーマッピングを設定（よりシンプルな方法）
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- 定義ジャンプ
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- 変数のリネーム
  end,

  flags = {
    debounce_text_changes = 150,
  },

  capabilities = require("cmp_nvim_lsp").default_capabilities(), -- cmpと連携
})

lspconfig.pyright.setup({})
