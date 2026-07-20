-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.clipboard = {
  name = "WslClipboard",
  copy = {
    ["+"] = { "clip.exe" },
    ["*"] = { "clip.exe" },
  },
  paste = {
    ["+"] = {
      "powershell.exe",
      "-NoProfile",
      "-Command",
      '[Console]::Out.Write((Get-Clipboard -Raw).ToString().Replace("`r", ""))',
    },
    ["*"] = {
      "powershell.exe",
      "-NoProfile",
      "-Command",
      '[Console]::Out.Write((Get-Clipboard -Raw).ToString().Replace("`r", ""))',
    },
  },
  cache_enabled = 0,
}

vim.opt.clipboard = "unnamedplus"
