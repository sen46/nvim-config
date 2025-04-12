local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("python", {
  -- `def` でPythonの関数定義
  s("def", {
    t({
      "def function_name():",
      "    \"\"\"Docstring\"\"\"",
      "    pass",
    }),
  }),
  s("print", { t("print("), i(1), t(")") }),

  s("ml", {
    t({
      "import numpy as np",
      "import matplotlib.pyplot as plt",
    }),
  }),
})

