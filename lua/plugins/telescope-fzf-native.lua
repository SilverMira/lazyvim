return {
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = (function(_)
      local build_command =
        "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build"
      local shell = vim.fn.has("win32") == 1 and "cmd /c" or "sh -c"
      return shell .. ' "' .. build_command .. '"'
    end)(),
    enabled = vim.fn.executable("cmake") == 1,
    optional = true,
  },
}
