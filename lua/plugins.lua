-- lua/plugins.lua
return {
  'tpope/vim-sensible',  -- sensicalな設定を提供するプラグイン
  'junegunn/fzf.vim',    -- Fuzzy Finder


--  'windwp/nvim-autopairs',  -- 括弧やクオートの自動補完-------------
  -- nvim-autopairs（自動カッコ補完）
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({
       enable_check_bracket_line = false, -- 行内での括弧確認を無効にする（任意）
    })  end,
  },


  -- LSPの設定--------------------------------------------------------
  'neovim/nvim-lspconfig',  -- LSP 設定用のプラグイン
  'hrsh7th/nvim-cmp',       -- 補完エンジン
  'hrsh7th/cmp-nvim-lsp',   -- LSP 補完ソース
  'hrsh7th/cmp-buffer',     -- バッファ補完ソース
  'hrsh7th/cmp-path',       -- パス補完ソース
  'saadparwaiz1/cmp_luasnip',  -- LuaSnip と連携する補完ソース
  'L3MON4D3/LuaSnip', -- LuaSnip スニペットエンジン


  -- One Monokai カラースキーム---------------------------------------
  {
    "cpea2506/one_monokai.nvim",
    lazy = false,
    priority = 1000, -- 読み込み優先度を高くする
    config = function()
      vim.cmd.colorscheme("one_monokai") -- テーマを適用
    end,
  },


  -- nvim-tree の設定--------------------------------------------------
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        -- 自動リロード
        auto_reload_on_write = true,

        -- netrwの無効化
        disable_netrw = true,
        hijack_netrw = true,

        -- レンダラー（アイコンやファイル表示の設定）
        renderer = {
          icons = {
            show = {
              file = true,
              folder = true,
              folder_arrow = true,
              git = true,
            },
            glyphs = {
              default = "",
              symlink = "",
              git = {
                unstaged = "✗",
                staged = "✓",
                unmerged = "≠",
                renamed = "➜",
                untracked = "★",
                deleted = "",
                ignored = "◌",
              },
            },
          },
        },

        -- ファイルツリーのビュー設定
        view = {
          width = 30,                -- 幅
          side = "left",             -- 左側に表示
          -- auto_resize = true,        -- 自動リサイズ<-これを使うとエラーっが出る
        },

        -- Gitの設定
        git = {
          enable = true,             -- gitの状態表示
          ignore = false,            -- .gitignoreされているファイルも表示
        },

        -- フィルター設定（例：node_modulesを非表示にする）
        filters = {
          dotfiles = false,         -- 隠しファイルの表示
          custom = { "node_modules" },
        },

        -- キーマッピング設定（最新版では異なる形式）
        hijack_cursor = false,      -- カーソルの位置変更を無効に
        update_focused_file = {
          enable = true,            -- フォーカスしたファイルの状態を更新
          update_cwd = true,        -- カレントディレクトリの更新
        },
      })
    end,
  },

  -- ターミナルをnvimの中でターミナルを開けるプラグイン-------------------
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
  },

  -- git管理--------------------------------------------------------------
  -- gitsigns
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end
  },
  -- vim-fugitive
  {
    "tpope/vim-fugitive",
    config = function()
      -- 必要に応じて設定を追加
    end
  }

}
