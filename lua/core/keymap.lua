local function map(mode, lhs, rhs, opts)
    local options = {noremap = true, silent = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

-- Nvim-tree
map("n", "<C-n>", ":NvimTreeToggle<CR>", opt)

-- Nvim-comment
map("n", "<leader>gc", ":CommentToggle<CR>", opt)
map("v", "<leader>gc", ":CommentToggle<CR>", opt)

-- Toggle-term
map("n", "<F2>", ":ToggleTerm<CR>", opt)

-- Vista-vim
map("n", "<leader>tb", ":Vista!!<CR>", opt)

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", opt)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opt)
map("n", "<leader>ft", ":Telescope help_tags<CR>", opt)

-- BufferLine
map("n", "b]", ":BufferLineCycleNext<CR>",opt)
map("n", "[b", ":BufferLineCyclePrev<CR>",opt)
map("n", "bc", ":BufferLinePickClose<CR>",opt)
