local group = vim.api.nvim_create_augroup("VisualList", {})
vim.api.nvim_create_autocmd("ModeChanged", {
  group = group,
  pattern = { "n:v", "i:v", "c:v", "o:v" }, -- より確実にVisualモードへ入る遷移を指定
  callback = function()
    vim.opt.list = true
    vim.opt.listchars = { tab = "» ", trail = "·", extends = "→", precedes = "←", space = "·" }
  end,
})

vim.api.nvim_create_autocmd("ModeChanged", {
  group = group,
  pattern = { "v:n", "v:i", "v:c", "v:o" }, 
  callback = function()
    vim.opt.list = false
  end,
})

