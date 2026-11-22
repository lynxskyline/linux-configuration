return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      -- Tab: snippet terlebih dahulu, lalu terima suggestion
      opts.keymap["<Tab>"] = {
        "snippet_forward",
        "select_and_accept",
        "fallback",
      }

      -- Enter: jangan menerima suggestion
      opts.keymap["<CR>"] = {
        "fallback",
      }
    end,
  },
}
