return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    cmd = { "CopilotChat", "CopilotChatOpen", "CopilotChatClose" },
    opts = {
      debug = false,
      window = {
        layout = "float",
      },
    },
  },
}
