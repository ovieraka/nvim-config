return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        dartls = {
          settings = {
            dart = {
              completeFunctionCalls = true,
              showTodos = true,
              lineLength = 100,
              enableSdkFormatter = true,

              analysisExcludedFolders = {
                vim.fn.expand("$HOME/.pub-cache"),
                vim.fn.expand("$HOME/flutter"),
              },
            },
            analysis = {
              excluded = {
                "**/*.g.dart",
                "**/*.gen.dart",
                "**/*.gr.dart",
                "**/*.freezed.dart",
                "**/*.config.dart",
                "**/*.module.dart",

                "feature_template/__brick__/**",

                "**/build",
                "**/.dart_tool",
                "**/.melos_tool",
                "**/.git",
                "**/coverage",
                "**/node_modules",

                "**/android/.gradle",
                "**/android/app/build",

                "**/ios/Pods",
                "**/ios/.symlinks",

                "**/macos/Pods",

                "*/linux/*/gen",
                "*/windows/*/Generated",

                "**/web/.dart_tool",

                "*/packages/*/example",
              },
            },
          },
        },
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      format = {
        format_on_save = {
          pattern = { "*.dart" },
        },
      },
    },
  },
}
