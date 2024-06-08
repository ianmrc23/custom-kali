local options = {
  formatters_by_ft = {
    ["lua"] = { "stylua" },
    ["javascript"] = { "prettier" },
    ["javascriptreact"] = { "prettier" },
    ["typescript"] = { "prettier" },
    ["typescriptreact"] = { "prettier" },
    ["css"] = { "prettier" },
    ["scss"] = { "prettier" },
    ["less"] = { "prettier" },
    ["html"] = { "prettier" },
    ["json"] = { "prettier" },
    ["jsonc"] = { "prettier" },
    ["yaml"] = { "prettier" },
    ["markdown"] = { "prettier" },
    ["markdown.mdx"] = { "prettier" },
    ["graphql"] = { "prettier" },
    ["handlebars"] = { "prettier" },
    ["ini"] = { "prettier" },
    ["rasi"] = { "prettier" },
    ["conf"] = { "prettier" },
    ["sh"] = { "prettier" },
  },
}

require("conform").setup(options)
