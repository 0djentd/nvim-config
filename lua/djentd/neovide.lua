if vim.g.neovide then
    -- Fonts
    vim.opt['guifont'] = 'JetBrains Mono:h12'
    vim.opt['linespace'] = 0

    -- FPS
    vim.g.neovide_refresh_rate = 60
    vim.g.neovide_refresh_rate_idle = 5

    -- Various
    vim.g.neovide_scale_factor = 1.0
    vim.g.neovide_floating_blur_amount_x = 2.0
    vim.g.neovide_floating_blur_amount_y = 2.0
    vim.g.neovide_transparency = 1
    vim.g.neovide_scroll_animation_length = 0.3
    vim.g.neovide_hide_mouse_when_typing = true

    -- Cursor
    vim.g.neovide_cursor_animation_length = 0.05
    vim.g.neovide_cursor_trail_size = 0.5
    vim.g.neovide_cursor_antialiasing = true
    vim.g.neovide_cursor_animate_in_insert_mode = false
    vim.g.neovide_cursor_animate_command_line = false
    vim.g.neovide_cursor_unfocused_outline_width = 0.1

    -- Trail
    vim.g.neovide_cursor_vfx_mode = ""
end
