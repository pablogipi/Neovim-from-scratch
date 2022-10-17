-- User config overrides.
-- User config override must be in $HOME/myinit.lua in UNIX
-- or in %USERPROFILE%\myinit.lua in Windows
local env = vim.env
local cmd = vim.cmd
local fn = vim.fn

-- Set my color scheme
vim.cmd "colorscheme darkplus"
