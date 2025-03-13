local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("rust", {
  -- `fn` 関数宣言スニペット
  s("main", {
    t({"fn main()", "{"}),
    t({"", "    "}), i(1),  -- 4スペースインデントの後にカーソル
    t({"", "}"}),
  }),

  -- `let` 変数宣言スニペット
  s("let", {
    t("let "), i(1, "variable_name"), t(" = "), i(2, "value"), t(";")
  }),

  -- let mut のスニペット
  s("let mut", {
      t("let mut ")
  }),

  -- `match` ステートメントスニペット
  s("match", {
    t("match "), i(1, "value"), t(" {"), 
    t({ "", "    " }), i(2, "arm"), t({ "", "}" })
  }),

  -- `mod` モジュール宣言スニペット
  s("mod", {
    t("mod "), i(1, "module_name"), t(" {"), 
    t({ "", "    " }), i(2, "body"), t({ "", "}" })
  }),

  -- `struct` 構造体宣言スニペット
  s("struct", {
    t("struct "), i(1, "StructName"), t(" {"), 
    t({ "", "    " }), i(2, "fields"), t({ "", "}" })
  }),

    s("println!", {
        t('println!("'), i(1), t('"'), i(2), t(');')
    })
})

