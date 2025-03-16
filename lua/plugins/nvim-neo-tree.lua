return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- アイコン表示
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        follow_current_file = true, -- 現在開いているファイルにフォーカス
        hijack_netrw_behavior = "open_default", -- netrwの代わりにneo-treeを使う
        filtered_items = {
          visible = false, -- trueにすると .gitignore されたものも表示
          hide_dotfiles = false, -- 隠しファイルを表示
          hide_gitignored = false, -- gitignoreされたファイルを表示
          hide_by_name = { "node_modules" }, -- node_modulesを非表示
        },
      },
      window = {
        position = "left", -- 左側に表示
        width = 30, -- ウィンドウ幅
        mappings = {
          ["<CR>"] = "open", -- Enter で開く
          ["o"] = "open",
          ["s"] = "open_vsplit", -- 垂直分割で開く
          ["i"] = "open_split", -- 水平分割で開く
          ["R"] = "refresh", -- `R` でリフレッシュ
          ["q"] = "close_window", -- `q` で閉じる
        },
      },
      git_status = {
        symbols = {
          added     = "✚",
          modified  = "",
          deleted   = "✖",
          renamed   = "➜",
          untracked = "★",
          ignored   = "◌",
          unstaged  = "✗",
          staged    = "✓",
          conflict  = "",
        },
      },
    })
  end,
}

