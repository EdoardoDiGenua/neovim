return {
  "tris203/precognition.nvim",

  config = function()
    require("precognition").setup({
    })
    vim.keymap.set("n", "<C-h>", "::Precognition toggle<CR>", {})
  end,
}
