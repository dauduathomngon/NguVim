local ok, comment = pcall(require, 'nvim_comment')

if not ok then
  print("something wrong with nvim-comment")
  return false
end

comment.setup{
  marker_padding = true,
  comment_empty = true,
  comment_empty_trim_whitespace = true,
  create_mappings = true,
  hook = nil
}
