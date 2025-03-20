return
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")
      configs.setup({
          ensure_installed = { "c", "lua", "vim", "javascript", "html", "cpp" },
          sync_install = false,
          highlight = { enable = false },
          indent = { enable = false },  
        })
    end
 }
