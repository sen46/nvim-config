-- lua/options.lua
local opt = vim.opt

opt.number = true          -- 行番号を表示
opt.relativenumber = true  -- 相対行番号を表示
opt.ignorecase = true      -- 検索時に大文字小文字を無視
opt.smartcase = true       -- 大文字を含む場合は区別する
vim.opt.mouse = 'a' -- マウス操作を有効化（全モードでマウス使用可能）
vim.opt.title = true -- タイトルバーにファイル名を表示
vim.opt.autoindent = true -- 自動インデントを有効化
vim.opt.smartindent = true -- スマートインデント（C言語などの構造を考慮）
vim.opt.hlsearch = true -- 検索時に一致するテキストをハイライト
vim.opt.backup = false -- バックアップファイルを作成しない
vim.opt.showcmd = true -- コマンド入力中にコマンドを表示
vim.opt.cmdheight = 2 -- コマンドラインの高さを2行に設定
vim.opt.laststatus = 2 -- ステータスラインを常に表示
-- 42tokyo用はfalse
vim.opt.expandtab = true -- タブをスペースに変換
vim.opt.scrolloff = 10 -- カーソルの上下に最低10行の余白を確保
vim.opt.shell = 'zsh' -- シェルに `zsh` を使用
vim.opt.inccommand = 'split' -- 置換時に結果をリアルタイムでプレビュー（分割表示）
vim.opt.ignorecase = true -- 検索時に大文字小文字を区別しない
vim.opt.smarttab = true -- インデント時に `shiftwidth` を考慮したタブ動作をする
vim.opt.breakindent = true -- 折り返し時にインデントを保持
vim.opt.shiftwidth = 4 -- 自動インデント時のスペース数
vim.opt.tabstop = 4 -- タブ文字の幅を4スペースに設定
vim.opt.wrap = true -- 端までコードが届いた際に折り返す
vim.opt.helplang = 'ja', 'en' -- ヘルプの言語を日本語、英語の順で適用
vim.opt.updatetime = 300 -- イベントの更新間隔を短縮（デフォルト: 4000ms）
vim.opt.showtabline = 2 -- タブラインを常に表示
vim.opt.clipboard = 'unnamedplus' -- クリップボードとレジスタを共有（システムクリップボード使用）
vim.opt.termguicolors = true -- 24ビットカラーを有効化
vim.opt.signcolumn = 'yes' -- 行番号の横に余白を確保（警告やGitの変更表示用）
vim.opt.hidden = true -- 未保存のバッファを切り替え可能にする
vim.opt.swapfile = false -- スワップファイルを生成しない
vim.opt.cursorline = true -- 現在の行をハイライトにする
vim.opt.winblend = 20 -- ウィンドウの不透明度
vim.opt.pumblend = 20 -- ポップアップメニューの不透明度


-- vim.opt.linebreak = false -- 単語単位で折り返すかどうか

--vim.opt.list = true
--vim.opt.listchars = { tab = "»-", trail = "·", extends = "→", precedes = "←", space = "·" }
