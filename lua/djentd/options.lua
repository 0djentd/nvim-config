local options = {
    completeopt="menu,menuone,noselect",
    compatible = false,
    history = 200,
    ruler = true,
    showcmd = true,
    wildmenu = true,
    number = true,
    mouse='a',
    foldmethod='marker',
    -- foldopen-='block',
    ttimeout = true,
    ttimeoutlen=100,
    -- splitbelow = 'splitright',
    display='truncate',
    termguicolors = true,

    -- Tabs and spaces
    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,

    signcolumn = 'yes',
    wrap = true,
    -- linebreak = true,
    -- scrolloff = 8,
    sidescrolloff = 8,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
