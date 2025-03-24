return {
  -- nvim-dap (デバッガ本体)
  "mfussenegger/nvim-dap",
  -- nvim-nio (非同期処理をサポート)
  "nvim-neotest/nvim-nio",

  -- nvim-dap-ui (デバッグ用UI)
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-lua/plenary.nvim", "nvim-nio" },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup({
        icons = {
            expanded = "",   -- 展開された状態のアイコン
            collapsed = "",   -- 折りたたまれた状態のアイコン
            breakpoint = "",  -- ブレークポイントのアイコン
            breakpoint_rejected = "",  -- 拒否されたブレークポイントのアイコン
            log_point = "",  -- ログポイントのアイコン
    stopped = "",    -- 停止状態のアイコン
  }      })

      -- DAPイベントに応じてUIを開閉
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },

}

