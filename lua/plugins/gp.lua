return {
  {
    "robitx/gp.nvim",
    config = function()
      require("gp").setup({
        providers = {
          openai = {
            endpoint = "https://api.openai.com/v1/chat/completions",
            model = "gpt-4.1", -- ändra om du vill
            api_key = os.getenv("OPENAI_API_KEY"),
          },
        },
      })
    end,
    cmd = { "GpChatNew", "GpChatToggle" },
  },
}
