--Does anyone use something else as leader?
vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
--just because i'm mentally healthy
vim.cmd("set relativenumber")
--Just to reduce the max number of old files on pressing <Leader>of
vim.cmd("set shada=!,'5,<50,s10,h")
--Remap <C-c> to <Esc> or the LSP diagnostic will not work properly
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>")

vim.cmd([[
  if executable('rg')
    set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
    set grepformat^=%f:%l:%c:%m
  endif
]])

--Close quickFix after selecting, really annoying
vim.api.nvim_create_autocmd(
  "FileType", {
    pattern = { "qf" },
    command = [[nnoremap <buffer> <CR> <CR>:cclose<CR>]]
  })
