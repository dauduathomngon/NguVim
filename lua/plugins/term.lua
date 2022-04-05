local ok, term = pcall(require, "toggleterm")

if not ok then
  print("Đã có lỗi xảy ra với ToggleTerm, vui lòng check file term.lua")
  return false
end

term.setup{
  size = function(term)
    if term.direction == "horizontal" then
      return 10
    elseif term.direction == "vertical" then
      return vim.o.colums * 0.3
    end
  end,
  hide_numbers = true,
  shade_terminals = true,
  start_in_insert = true,
  insert_mappings = true,
  persis_size = true,
  direction = 'horizontal',
  close_on_exit = true,
}
