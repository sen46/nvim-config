
--  'windwp/nvim-autopairs',  -- 括弧やクオートの自動補完-------------
  -- nvim-autopairs（自動カッコ補完）
return {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({
       enable_check_bracket_line = false, -- 行内での括弧確認を無効にする（任意）
    })  end,
}
  
