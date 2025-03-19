-- hlchunk.nvim プラグインの設定
return {
  "shellRaining/hlchunk.nvim",
  event = { "UIEnter" },
  config = function()
    require("hlchunk").setup({
      chunk = {
        enable = true,
        use_treesitter = true,  -- Treesitter を使用
        notify = true, -- notify if some situation (like disabling chunk mod twice)
        exclude_filetypes = {
          aerial = true,
          dashboard = true,
        },
        support_filetypes = { 
            "lua", 
            "cpp",
            "h", 
        }, -- サポートするファイルタイプ
        chars = {
          horizontal_line = "─",
          vertical_line = "│",
          left_top = "╭",
          left_bottom = "╰",
          right_arrow = ">",
        },
        style = {
          { fg = "#806d9c" },
        },
      },
    })
  end,
}

