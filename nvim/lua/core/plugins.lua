local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",		
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ 'phaazon/hop.nvim' },
    
    {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker"
	}
    },
	
    { 'nvim-treesitter/nvim-treesitter', branch = 'master', lazy = false, build = ":TSUpdate"},
	{ 'neovim/nvim-lspconfig' },
	
    { 'joshdick/onedark.vim' },
    
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },

    { 
        "williamboman/mason.nvim",
        build = ":MasonUpdate"
    },

    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = {'nvim-lua/plenary.nvim'}
    }
})
