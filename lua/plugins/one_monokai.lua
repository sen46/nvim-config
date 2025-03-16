
  -- One Monokai カラースキーム---------------------------------------
  return 
  {
    "cpea2506/one_monokai.nvim",
    lazy = false,
    priority = 1000, -- 読み込み優先度を高くする
    config = function()
      vim.cmd.colorscheme("one_monokai") -- テーマを適用
    end,
  }

