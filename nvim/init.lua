require('vitoso.base')
require('vitoso.highlights')
require('vitoso.maps')
require('vitoso.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('vitoso.macos')
end
if is_win then
  require('vitoso.windows')
end
