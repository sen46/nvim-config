local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

ls.add_snippets("rust", {
  s("fn", {
    t("fn "), i(1, "function_name"), t("("), i(2, "args"), t(") -> "), i(3, "ReturnType"), t(" {"), 
    t({ "", "    " }), i(4, "body"), t({ "", "}" })
  }),

  -- `let` キーワードで変数宣言を補完するスニペット
  s("let", {
    t("let "), i(1, "variable_name"), t(" = "), i(2, "value"), t(";")
  }),

  -- `for` ループのスニペット
  s("for", {
    t("for "), i(1, "item"), t(" in "), i(2, "iterable"), t(" {"), 
    t({ "", "    " }), i(3, "body"), t({ "", "}" })
  }),

  -- `if` 文のスニペット
  s("if", {
    t("if "), i(1, "condition"), t(" {"), 
    t({ "", "    " }), i(2, "body"), t({ "", "}" })
  }),

  -- `match` ステートメントのスニペット
  s("match", {
    t("match "), i(1, "value"), t(" {"), 
    t({ "", "    " }), i(2, "arm"), t({ "", "}" })
  }),

  -- `mod` 宣言のスニペット
  s("mod", {
    t("mod "), i(1, "module_name"), t(" {"), 
    t({ "", "    " }), i(2, "body"), t({ "", "}" })
  }),

  -- `struct` 宣言のスニペット
  s("struct", {
    t("struct "), i(1, "StructName"), t(" {"), 
    t({ "", "    " }), i(2, "fields"), t({ "", "}" })
  }),
})
