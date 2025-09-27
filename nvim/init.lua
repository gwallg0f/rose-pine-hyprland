vim.cmd [[packadd packer.nvim]]

require("packer").startup(function(use)
  use { "wbthomason/packer.nvim" }
  use { "rose-pine/neovim", as = "rose-pine" }
  use { "goolord/alpha-nvim", requires = { "nvim-tree/nvim-web-devicons" } }
end)

-- Set colorscheme
pcall(vim.cmd, "colorscheme rose-pine-moon")

-- Setup alpha-nvim dashboard
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Header (ASCII art or text)
dashboard.section.header.val = {
  "         ⠀⠀⠀⡄⡀⠀⠀⠀⠀⠀",
  "    ⠀⠀⣼⣿⠇⠀⠀⠈⢿⣿⣦⠀   ",
  "    ⠀⢰⣿⣿⠀⠀⠀⠀⠀⢿⣿⡇   ",
  "    ⠀⠸⣿⣿⣷⣶⣿⣿⣿⣿⣿⡇   ",
  "  ⠀  ⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⡆   ",
  "  ⠀  ⠀⡾⢿⣿⣿⠛⢿⣿⣿⣿⣿   ",
  "    ⠀⠀⢷⡈⣿⣿⣆⢘⣿⣿⣿⡟   ",
  "  ⠀  ⠀⠘⢿⣿⣿⣿⣿⣿⣿⡟⠁   ",
  "  ⠀  ⣀⡄⣰⣿⣿⣿⣿⣿⣿⣿⠀   ",
  "    ⠈⠛⢸⣿⣿⣿⣿⣿⣿⣿⣿⡇   ",
  "⠀    ⠀⠈⠿⣿⣿⣿⣿⣿⣿⣿⡇   ",
  "⠀⠀    ⠀⠀⢻⣿⣿⣿⣿⣿⣿⠇   ",
  "⠀⠀⠀    ⠀⠸⣿⠁⠙⠃⢿⠟⠀   ",
}

-- Buttons
dashboard.section.buttons.val = {
  dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("f", "󰈞  Find file", ":Telescope find_files<CR>"),
  dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
  dashboard.button("q", "  Quit", ":qa<CR>"),
}

-- Footer
dashboard.section.footer.val = "Welcome back 🌙"

-- Apply setup
alpha.setup(dashboard.opts)



