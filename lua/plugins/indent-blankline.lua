return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    scope = { enabled = { false } }
  },
  config = function()
    require("ibl").setup()
  end
}
