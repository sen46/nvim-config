local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("cpp", {
  s("kyopuro", {
    t({
      "#include <bits/stdc++.h>",
      "using namespace std;",
      "",
      "#define rep(i,m,n) for(int i=m; i<(int)(n); i++)",
      "#define pb emplace_back",
      "#define all(x) x.begin(), x.end()",
      "#define rall(x) x.rbegin(), x.rend()",
      "#define INF 1001001001",
      "#define INFF 1001001001001001001",
      "using ll = long long;",
      "using ull = unsigned long long;",
      "using ld = long double;",
      "using vi = vector<int>;",
      "using vvi = vector<vector<int>>;",
      "using vl = vector<ll>;",
      "using vvl = vector<vector<ll>>;",
      "using vs = vector<string>;",
      "using vvs = vector<vector<string>>;",
      "using vc = vector<char>;",
      "using vvc = vector<vector<char>>;",
      "using vb = vector<bool>;",
      "using vvb = vector<vector<bool>>;",
      "using pii = pair<int, int>;",
      "using pll = pair<ll, ll>;",
      "using Graph = vector<vector<int>>;",
      "using Node = pair<int, int>;",
      "",
      "",
      "int main()",
      "{",
      "    "
    }),
    i(0), -- ここにカーソルを移動
    t({
      "",
      "    return (0);",
      "}"
    }),
  }),
  -- dxdyのスニペット
  s("dxdy", {
    t({
      "const int dx[4] = {1, 0, -1, 0};",
      "const int dy[4] = {0, 1, 0, -1};",
      })
  }),

  -- else, else ifのスニペットを空白に置換
  s("else", t({"else", ""})),
  s("else if", t({"else if", ""}))
})

