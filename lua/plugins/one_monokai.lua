-- One Monokai カラースキーム設定
return {
  "cpea2506/one_monokai.nvim",
  lazy = false,
  priority = 1000, -- 読み込み優先度を高くする
  config = function()
    vim.cmd.colorscheme("one_monokai")

    -- 少し遅延させて確実に上書き
    vim.defer_fn(function()
      vim.api.nvim_set_hl(0, "Comment", {
        fg = "#858557",
        italic = true,
        cterm = { italic = true },
      })
    end, 10)
  end,
}

