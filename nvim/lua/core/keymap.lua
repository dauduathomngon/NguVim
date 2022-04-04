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
