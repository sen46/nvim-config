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
vim.keymap.set("n","<leader>e",":Neotree toggle<CR>")

-- "cpl"で全選択コピー
vim.keymap.set("n", "cpal", ":%y<CR>") -- copy all
-- clear で空にする
vim.keymap.set("n", "clr", ":%d<CR>") -- clear



-- debug関係
    -- キーバインド設定
    local dap = require("dap")
    local dapui = require("dapui")

    -- キーバインド設定
    vim.keymap.set("n", "<F5>", function() dap.continue() end, { desc = "デバッグ開始/継続" })
    vim.keymap.set("n", "<F10>", function() dap.step_over() end, { desc = "ステップオーバー" })
    vim.keymap.set("n", "<F11>", function() dap.step_into() end, { desc = "ステップイン" })
    vim.keymap.set("n", "<F12>", function() dap.step_out() end, { desc = "ステップアウト" })
    vim.keymap.set("n", "<Leader>b", function() dap.toggle_breakpoint() end, { desc = "ブレークポイントの切り替え" })
    vim.keymap.set("n", "<Leader>B", function() dap.set_breakpoint(vim.fn.input("Condition: ")) end, { desc = "条件付きブレークポイント" })
    vim.keymap.set("n", "<Leader>dr", function() dap.repl.open() end, { desc = "デバッグ用REPLを開く" })
    vim.keymap.set("n", "<Leader>du", function() dapui.toggle() end, { desc = "DAP UIの切り替え" })
