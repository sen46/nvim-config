local luasnip = require("luasnip")

-- 各言語のスニペットをロード
require("snippets.cpp")
require("snippets.python")
require("snippets.rust")

-- スニペットを更新するコマンド
vim.api.nvim_create_user_command("LuaSnipReload", function()
  luasnip.cleanup()
  package.loaded["snippets.cpp"] = nil
  package.loaded["snippets.python"] = nil
  package.loaded["snippets.rust"] = nil
  require("snippets.cpp")
  require("snippets.python")
  require("snippets.rust")
  print("LuaSnip snippets reloaded!")
end, {})

