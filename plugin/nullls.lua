require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.stylua,
        require("null-ls").builtins.formatting.prettier,
        require("null-ls").builtins.formatting.clang_format,
        require("null-ls").builtins.formatting.dart_format,
    },
})
