vim.cmd("packadd packer.nvim")

local ok, packer = pcall(require,"packer")
local fn = vim.fn
local get_name = vim.loop.os_uname().sysname

if not ok then
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

  -- Xem hệ điều hành của máy 
  if self.is_windows then 
	  self.is_windows = get_name == "Windows"
  else 
	  self.is_linux = get_name == "Linux"
  end

  -- Clone packer dựa trên hệ điều hành của máy
  if get_name == "Windows" then
	  install_path = "$env:LOCALAPPDATA/nvim-data/site/pack/packer/start/packer.nvim"
	  fn.system({"git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
  else 
	  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  end

  -- Check xem packer đã cài đặt chưa 
  if ok then
	  print("ok")
  else
	  print("error somewhere in your stupid code")
  end
end

return packer.init {
  display = {
    open_fn = function()
	    return require("packer.util").float {border = "single"}
    end
  },
}
