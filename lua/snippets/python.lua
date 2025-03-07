local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

ls.add_snippets("python", {
  -- `def` でPythonの関数定義
  s("def", {
    t({
      "def function_name():",
      "    \"\"\"Docstring\"\"\"",
      "    pass",
    }),
  }),
})

