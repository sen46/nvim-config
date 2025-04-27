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
