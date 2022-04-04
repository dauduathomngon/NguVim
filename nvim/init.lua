local impatient,_ = pcall(require, "impatient")

if impatient then
  require('impatient').enable_profile()
end

require("core.settings")
require("core.pluginInstall")
require("core.keymap")
