local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("cpp", {
    s("kyopuro", {
        t({
            "#include <bits/stdc++.h>",
            "",
            "using namespace std;",
            "",
            "#define rep(i,n) for(int i=0; i<(int)(n); i++)",
            "#define repp(i,m,n) for (int i=m; i<(int)(n); i++)",
            "#define pb emplace_back",
            "#define all(x) x.begin(), x.end()",
            "#define rall(x) x.rbegin(), x.rend()",
            "#define INF 1001001001",
            "#define INFF 1001001001001001001",
            "#define YES cout << \"Yes\" << endl",
            "#define NO cout << \"No\" << endl ",
            "using ll = long long;",
            "using ull = unsigned long long;",
            "using ld = long double;",
            "using vi = vector<int>;",
            "using vvi = vector<vi>;",
            "using vl = vector<ll>;",
            "using vvl = vector<vl>;",
            "using vs = vector<string>;",
            "using vvs = vector<vs>;",
            "using vc = vector<char>;",
            "using vvc = vector<vc>;",
            "using vb = vector<bool>;",
            "using vvb = vector<vb>;",
            "using pii = pair<int, int>;",
            "using pil = pair<int, ll>;",
            "using pli = pair<ll, int>;",
            "using pll = pair<ll, ll>;",
            "using Graph = vector<vector<int>>;",
            "using Node = pair<int, int>;",
            "",
            "",
            "int main()",
            "{",
            "    cin.tie(nullptr);",
            "    ios_base::sync_with_stdio(false);",
            "    ",
            "    "
        }),
        i(0),
        t({
            "",
            "    return (0);",
            "}"
        }),
    }),
    
    s("dxdy", {
        t({
            "const int dx[4] = {1, 0, -1, 0};",
            "const int dy[4] = {0, 1, 0, -1};",
        })
    }),
    
    s("else", t({"else", ""})),
    s("else if", t({"else if", ""})),
    s("do", t({"do", ""})),
    
    s("rep", { 
        t("rep("), i(1, "i"), t(", "), i(2, "start"), t(", "), i(3, "end"), t(")")
    }),
    
    s("uf", {
        t({
            "struct UnionFind",
            "{",
            "    vector<int> par, rank, siz;",
            "",
            "    UnionFind(int n) : par(n, -1), rank(n, 0), siz(n, 1)",
            "    {}",
            "",
            "    int root(int x)",
            "    {",
            "        if (par[x] == -1) return x;",
            "        else return par[x] = root(par[x]);",
            "    }",
            "",
            "    bool same(int x, int y)",
            "    {",
            "        return root(x) == root(y);",
            "    }",
            "",
            "    bool merge(int x, int y)",
            "    {",
            "        int rx = root(x), ry = root(y);",
            "        if (rx == ry) return false;",
            "        ",
            "        if (rank[rx] < rank[ry]) swap(rx, ry);",
            "        par[ry] = rx;",
            "        if (rank[rx] == rank[ry]) rank[rx]++;",
            "        siz[rx] += siz[ry];",
            "        ",
            "        return true;",
            "    }",
            "",
            "    int size(int x)",
            "    {",
            "        return siz[root(x)];",
            "    }",
            "};",
            "",
        })
    })
})

