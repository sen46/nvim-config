--- キーマップ設定
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true, silent = true })

-- 画面分割
vim.keymap.set('n', 'ss', ':split<Return><C-w>w')
vim.keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- アクティブウィンドウの移動
vim.keymap.set('n', 'sh', '<C-w>h')
vim.keymap.set('n', 'sk', '<C-w>k')
vim.keymap.set('n', 'sj', '<C-w>j')
vim.keymap.set('n', 'sl', '<C-w>l')

-- Emacs風
vim.keymap.set('i', '<C-f>', '<Right>')

-- jkでEscする
vim.keymap.set('i', 'jk', '<Esc>')

-- 設定ファイルを開く
vim.keymap.set('n', '<F1>', ':edit $MYVIMRC<CR>')

-- "\e"でファイルツリーを開く
vim.keymap.set("n","<leader>e",":NvimTreeToggle<CR>")

-- "cpl"で全選択コピー
vim.keymap.set("n", "cpal", "ggVGy")
-- clear で空にする
vim.keymap.set("n", "clear", ":%d<CR>")
