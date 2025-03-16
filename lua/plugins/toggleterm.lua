  -- ターミナルをnvimの中でターミナルを開けるプラグイン-------------------
  return
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup{
        open_mapping = [[<c-\>]],  -- ターミナルの開くショートカット
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 2,  -- ターミナルの陰影の強さ
        start_in_insert = true,
        persist_size = true,
        direction = "horizontal",  -- 水平にターミナルを表示
        close_on_exit = true,
      }
    end
  }
