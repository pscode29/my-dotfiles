### To add a new language support

- Install the language server Mason
- Update the `lsp-config.lua` and add configuration for new language server
- Update the `null-ls.lua` and add the formatter for the new language
- Update the `nvim-treesitter.lua` and update the parser for the new language

Note - Some LSPs provide snippets as auto completion suggestion. If you do not have a snippet engine installed
then selecting the snippet messes up the auto completion. Restart Neovim if that happens.

