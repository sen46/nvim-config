-- lua/lspconfig.lua

local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason.setup()
mason_lspconfig.setup({
  ensure_installed = {"clangd", "pyright", "rust_analyzer"},
})

local on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })
  end,

  -- clangd のカスタム設定
  ["clangd"] = function()
    lspconfig.clangd.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      flags = {
        debounce_text_changes = 150,
      },
    })
  end,

  -- rust_analyzer のカスタム設定
  ["rust_analyzer"] = function()
    lspconfig.rust_analyzer.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        ["rust-analyzer"] = {
          cargo = {
            allFeatures = true,
            loadOutDirsFromCheck = true,
            runBuildScripts = true,
          },
          procMacro = { enable = true },
          check = { command = "clippy" },
          diagnostics = { disabled = { "unresolved-proc-macro" } },
          completion = { postfix = { enable = true } },
          hover = { actions = { references = true } },
          inlayHints = {
            enable = true,
            parameterHints = true,
            chainingHints = true,
            closingBraceHints = { enable = true, minLines = 2 },
          },
          lens = { enable = true },
        },
      },
    })
  end,
})

