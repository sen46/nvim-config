-- init.lua

-- Lazy.nvim のパスを設定
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Lazy.nvim をロード
require("lazy").setup({

  -- nvim-autopairs（自動カッコ補完）
--  {
--    "windwp/nvim-autopairs",
--    config = function()
--      require("nvim-autopairs").setup({
--       enable_check_bracket_line = false, -- 行内での括弧確認を無効にする（任意）
--    })  end,
--  },

  -- LSP の設定
--  { 'NEOVIM/NVIM-LSPCONFIG' },
--  { 'HRSH7TH/NVIM-CMP' },
--  { 'HRSH7TH/CMP-NVIM-LSP' },
--  { 'HRSH7TH/CMP-BUFFER' },
--  { 'HRSH7TH/CMP-PATH' },
--  { 'SAADPARWAIZ1/CMP_LUASNIP' },
--  { 'l3mon4d3/lUAsNIP' },

  require("plugins")
})

-- lspconfig.luaを読み込む
require('lsp')

-- cmpconfig.luaを読み込む
require('cmpconfig')

-- スニペットの設定をロード
require("snippets")

-- ==============================================================
-- 基本オプションの設定
require('options')

-- キーマップの設定
require('keymaps')


-- Node.js のパスを設定
vim.g.coc_node_path = '/usr/bin/node'

-- pythonの補完や機能を必要としない場合はこれを書く
-- let g:loaded_python3_provider = 0
