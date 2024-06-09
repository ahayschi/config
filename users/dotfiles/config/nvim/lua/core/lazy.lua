-- Bootstrap lazy on the host
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Remap space as leader key
-- Must be before lazy
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "

-- disable netrw before plugins to avoid flashing
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Setup plugins
require("lazy").setup("core.plugins", {
  -- defaults = { lazy = true },
  install = {
    -- install missing plugins on startup. This doesn't increase startup time.
    missing = true,
  },
  change_detection = {
    -- automatically check for config file changes and reload the ui
    enabled = true,
    notify = true, -- get a notification when changes are found
  },
  debug = false,
})

-- TODO
-- X1. LSP support
-- X2. LSP management (mason?)
-- X3. Completions
-- !4. File tree
-- !5. Fuzzy search for files (telescope?)
-- 6. Git extension
-- 7. nix, go, python
-- 8. Diagnostics keybindings
-- 9. Learn windows, panes, buffers lol
-- 10. Comment shortcuts
-- 11. Global file search / replace