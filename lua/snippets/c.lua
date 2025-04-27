local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("c", {
    -- コード補完の無効化
    s("else", t({"else", ""})),
    s("else if", t({"else if", ""})),
})

