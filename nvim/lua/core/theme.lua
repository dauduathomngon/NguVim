require('onedark').setup {
  style = 'dark',
  transparent = false,
  toggle_style_key = '<leader>ts',
  toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'},
  code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'bold',
        strings = 'none',
        variables = 'italic'
  },
}
require('onedark').load()
