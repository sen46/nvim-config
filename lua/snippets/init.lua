local luasnip = require("luasnip")

-- 各言語のスニペットをロード
require("snippets.cpp")
require("snippets.python")

-- スニペットを更新するコマンド
vim.api.nvim_create_user_command("LuaSnipReload", function()
  luasnip.cleanup()
  package.loaded["snippets.cpp"] = nil
  package.loaded["snippets.python"] = nil
  require("snippets.cpp")
  require("snippets.python")
  print("LuaSnip snippets reloaded!")
end, {})

