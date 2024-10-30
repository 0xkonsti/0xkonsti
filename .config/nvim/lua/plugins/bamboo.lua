return {
    -- Using lazy.nvim
    {
        'ribru17/bamboo.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('bamboo').setup {
                transparent = true,


                -- lualine = {
                -- 	transparent = false, -- lualine center bar transparency
                -- },
            }
            require('bamboo').load()
        end,
    },
}
