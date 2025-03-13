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


lspconfig.rust_analyzer.setup({
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true, -- すべての feature を有効にする
        loadOutDirsFromCheck = true, -- `OUT_DIR` の設定を `cargo check` から取得する
        runBuildScripts = true, -- ビルドスクリプトを実行する
      },
      procMacro = {
        enable = true, -- マクロ展開を有効化
      },
      check = {
        command = "clippy", -- `clippy` を使って保存時にコードをチェック
        -- enable = false, -- 保存時チェック機能を無効化
      },
      diagnostics = {
        disabled = { "unresolved-proc-macro" }, -- `proc_macro` の未解決エラーを無効化
      },
      completion = {
        postfix = { enable = true }, -- `dbg`, `.unwrap()`, `.if` などの補完を有効化
      },
      hover = {
        actions = {
          references = true, -- ホバー時に参照情報を表示
        },
      },
      inlayHints = {
        enable = true, -- インレイヒントを有効化
        parameterHints = true, -- 関数の引数ヒントを表示
        chainingHints = true, -- メソッドチェーンの型ヒントを表示
        closingBraceHints = {
          enable = true, -- ブロックの閉じ括弧の位置を補助するヒントを表示
          minLines = 2, -- 指定行以上のブロックに適用
        },
      },
      lens = {
        enable = true, -- コードレンズ（テスト実行ボタンなど）を有効化
      },
    },
  },
})

