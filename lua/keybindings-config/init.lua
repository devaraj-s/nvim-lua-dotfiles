
vim.g.mapleader = ' '

local wk = require("which-key")
wk.setup {
  plugins = {
    marks = false,
    registers = false,
    spelling = { enabled = false, suggestions = 20 },
    presets = {
      operators = false,
      motions = false,
      text_objects = false,
      windows = false,
      nav = false,
      z = false,
      g = false
    }
  }
}

local mappings = {
  q = { ":q<cr>", "Quit" },
  Q = { ":wq<cr>", "Save & Quit" },
  w = { ":w<cr>", "Save" },
  x = { ":bdelete<cr>", "Close" },
  E = { ":e ~/.config/nvim/init.lua<cr>", "Edit config" },
  f = { ":Telescope find_files<cr>", "Telescope Find Files" },
  r = { ":Telescope live_grep<cr>", "Telescope Live Grep" },
  z = {
    name = "Focus",
    z = { ":ZenMode<cr>", "Toggle Zen Mode" },
    t = { ":Twilight<cr>", "Toggle Twilight" }
  },
  p = {
    name = "Packer",
    r = { ":PackerClean<cr>", "Remove Unused Plugins" },
    c = { ":PackerCompile profile=true<cr>", "Recompile Plugins" },
    i = { ":PackerInstall<cr>", "Install Plugins" },
    p = { ":PackerProfile<cr>", "Packer Profile" },
    s = { ":PackerSync<cr>", "Sync Plugins" },
    S = { ":PackerStatus<cr>", "Packer Status" },
    u = { ":PackerUpdate<cr>", "Update Plugins" }
  }
}

local opts = { prefix = '<leader>' }
wk.register(mappings, opts)

-- setup commenter
require('Comment').setup({})

-- setup autopairs 
require('nvim-autopairs').setup{}

