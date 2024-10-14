return {
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',

        seperator_style = "slant",

        config = function()
            require("bufferline").setup({
                options = {
                    offsets = {
                        {
                            filetype = "neo-tree",
                            text = "Neo-tree",
                            highlight = "Directory",
                            text_align = "left",
                        },
                    },
                    numbers = "ordinal",
                    diagnostics = "nvim_lsp",
                    diagnostics_indicator = function(count, level, diagnostics_dict, context)
                        local s = " "
                        for e, n in pairs(diagnostics_dict) do
                            if e == "error" then
                                s = s .. " " .. n
                            elseif e == "warning" then
                                s = s .. " " .. n
                            end
                        end
                        return s
                    end,
                }
            })
        end,
    }
}
