return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")

    -- codelldb の設定
    dap.adapters.lldb = {
      type = "server",
      port = 12345,
      executable = {
        command = "codelldb",
        args = { "--port", "12345" },
      },
    }

    -- C/C++ のデバッグ設定
    dap.configurations.cpp = {
      {
        name = "Launch with codelldb",
        type = "lldb",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopAtEntry = true,
      },
    }
    dap.configurations.c = dap.configurations.cpp
  end
}
