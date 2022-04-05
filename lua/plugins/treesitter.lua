local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then
  print("Đã có lỗi xảy ra với Treesitter, vui lòng check file treesitter.lua")
  return false
end

treesitter.setup{
  ensure_installed = {"python", "cpp", "html", "css", "lua", "javascript"},
  ignore_install = {"vim"},
  highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
      use_languagetree = true
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  },
  matchup = {
    enable = true,
  },
}
