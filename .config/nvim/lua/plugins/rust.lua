return {
    "rust-lang/rust.vim",
    "ron-rs/ron.vim",
    "simrat39/rust-tools.nvim",
    {
        'saecki/crates.nvim',
        tag = 'stable',
        event = { "BufRead Cargo.toml" },
        config = function()
            require('crates').setup()
        end,
    },
}
