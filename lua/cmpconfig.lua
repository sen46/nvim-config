local cmp = require'cmp'
local luasnip = require'luasnip' -- LuaSnip を require して変数に格納

require("snippets.init")  -- スニペットを読み込む

cmp.setup({
  preselect = cmp.PreselectMode.None, -- 最初の候補が選択されるようにした

  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body) -- ここでスニペットを展開
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),

    -- Tab キーでスニペット展開・補完リスト移動
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end,
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp', priority = 5 }, -- デフォの補完
    { name = 'luasnip', priority = 10 }, -- スニペット補完の追加
    { name = 'buffer' },
    { name = 'path' },
  }),

})

