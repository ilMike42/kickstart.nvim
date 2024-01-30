local function change_nvim_tree_dir()
	local nvim_tree = require("nvim-tree")
	nvim_tree.change_dir(vim.fn.getcwd())
end

return {
    'rmagatti/auto-session',
    config = function()
        require("auto-session").setup {
            log_level = "error",
            auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},

            auto_session_create_enabled = true,

            auto_save_enabled = true,
            auto_restore_enabled = true,


            post_restore_cmds = { change_nvim_tree_dir, "NvimTreeOpen" },
            pre_save_cmds = { "NvimTreeClose" },
        }
    end
}

-- TODO: To remove - other session managers


--[[ return
    {
        "olimorris/persisted.nvim",
        config = true,
        init = function ()
            require("persisted").setup({ })
        end
} ]]

--[[ return {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    opts = {
        -- add any custom options here
    }
} ]]




--[[ return {
    "gennaro-tedesco/nvim-possession",
    dependencies = {
        "ibhagwan/fzf-lua",
    },
    config = true,
    init = function()
        local possession = require("nvim-possession")
        vim.keymap.set("n", "<leader>sl", function()
            possession.list()
        end)
        vim.keymap.set("n", "<leader>sn", function()
            possession.new()
        end)
        vim.keymap.set("n", "<leader>su", function()
            possession.update()
        end)
        vim.keymap.set("n", "<leader>sd", function()
            possession.delete()
        end)
    end,
} ]]
