local ok, buffer = pcall(require, "bufferline")

if not ok then
  print("something wrong with bufferline")
  return false
end

buffer.setup{
  options = {
    mode = "buffers",
    numbers = "none",
    diagnostics = false, -- Có thể sửa thành "nvim_lsp" và gỡ comment hàng dưới, nhưng hiệu năng sẽ bị giảm.
    --diagnostics_indicator = function(count, level, diagnostics_dict, context)
    --  local s = " "
    --  for e, n in pairs(diagnostics_dict) do
    --  local sym = e == "error" and " "
    --  or (e == "warning" and " " or "" )
    --  s = s .. n .. sym
    --  end
    --  return s
    --  end,
    color_icons = true,
    show_buffer_icons = true,
    offsets = {
      {
	filetype = "NvimTree", 
	text = " File Explorer",
	text_align = "left",
      },
    },
    always_show_bufferline = false,
  },
}
