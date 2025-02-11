return {
  {
    "sphamba/smear-cursor.nvim",
    optional = true,
    cond = os.getenv("SSH_TTY") ~= nil,
    opts = {
      stiffness = 0.9,
      trailing_stiffness = 0.6,
      distance_stop_animating = 0.5,
    },
  },
}
