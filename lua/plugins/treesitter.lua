return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = { "c", "lua", "vim", "javascript", "html", "cpp" },
            sync_install = false,
            highlight = { enable = false },
            indent = { enable = false },
            fold = { enable = true } -- フォールディングを有効化
        })

        -- Neovimのフォールディング設定
        vim.opt.foldmethod = "expr"
        vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
        vim.opt.foldenable = true -- デフォルトで折りたたみを有効化
        vim.opt.foldlevel = 99 -- 起動時にすべて展開
    end
}

