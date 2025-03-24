-- lua/plugins.lua
return {
  'tpope/vim-sensible',  -- sensicalな設定を提供するプラグイン
  'junegunn/fzf.vim',    -- Fuzzy Finder


  require("plugins.autopairs"),
  require("plugins.lsp"),
  require("plugins.nvim-neo-tree"),
  require("plugins.one_monokai"),
  require("plugins.toggleterm"),
  require("plugins.gitsigns"),
  require("plugins.lualine"),
  require("plugins.hlchunk"),
  require("plugins.treesitter"),
  require("plugins.mason"),
  require("plugins.nvim-dap"),
  require("plugins.dap-gdb"),

  -- git管理--------------------------------------------------------------
  -- vim-fugitive
  {
    "tpope/vim-fugitive",
    config = function()
      -- 必要に応じて設定を追加
    end
  }

}
