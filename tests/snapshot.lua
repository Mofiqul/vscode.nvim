-- Prints every highlight group the colorscheme sets for one background.

local background = arg[1] or 'dark'

-- Must happen before the theme loads: assigning `background` afterwards
-- re-sources the active colorscheme and runs the theme a second time.
vim.o.background = background

local highlights = {}

-- `nvim_get_hl` also returns Neovim's own default highlights and thus can 
-- corrupt the snapshots on every Neovim upgrade if the defaults are changed in
-- Neovim. Here we override the function to our own function to only capture
-- highlights that vscode.nvim sets.
local real_set_hl = vim.api.nvim_set_hl
vim.api.nvim_set_hl = function(ns, name, val)

    -- Last definition wins, same as Neovim.
    highlights[name] = val

    -- We actually set the highlight so nothing about the theme's behavior
    -- changes.
    return real_set_hl(ns, name, val)
end

require('vscode').load(background)

-- A dictionary in Lua has no guaranteed order, so we need this for determinism.
local function sorted_keys(tbl)
    local keys = vim.tbl_keys(tbl)
    table.sort(keys)
    return keys
end

for _, name in ipairs(sorted_keys(highlights)) do
    local parts = {}

    for _, attr in ipairs(sorted_keys(highlights[name])) do
        local value = highlights[name][attr]
        table.insert(parts, string.format('%s=%s', attr, tostring(value)))
    end

    io.write(string.format('%s, %s\n', name, table.concat(parts, ', ')))
end