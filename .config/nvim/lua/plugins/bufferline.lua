vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        custom_filter = function(buf_number)
        if vim.bo[buf_number].filetype ~= "neo-tree" then
            return true
        end
            return false
        end,
    
        offsets = {
            {
                filetype = "neo-tree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true 
            }
        }
    }
}
