local function coc_status()
    local info = vim.b.coc_diagnostic_info or {}
    local str = ''
    if next(info) ~= nil then
        if info.error then
            str = str .. ' ' .. info.error .. ' '
        end
        if info.warning then
            str = str .. ' ' .. info.warning .. ' '
        end
        if info.hint then
            str = str .. ' ' .. info.hint .. ' '
        end
    end
    return str
end

local function nearest_method_or_function()
    return vim.b.vista_nearest_method_or_function or ''
end

local function codeium_status()
    return vim.fn['codeium.virtual_text'].status_string()
end

vim.opt.showtabline = 2

vim.g.lightline = {
    colorscheme = 'edge',
    separator = { left = '', right = '' },
    subseparator = { left = '', right = '' },
    tabline_separator = { left = '', right = '' },
    tabline_subseparator = { left = '', right = '' },
    bufferline = {
        show_number = 1,
    },
    active = {
        left = { { 'mode', 'paste' }, { 'readonly', 'filename', 'modified', 'method' }, { 'cocStatus' } },
    },
    tabline = {
        left = { { 'buffers' } },
        right = { { 'gitBranch', 'close' } },
    },
    component = {},
    component_function = {
        gitBranch = 'FugitiveHead',
        cocStatus = coc_status,
        method = nearest_method_or_function,
        codeiumStatus = codeium_status,
    },
    component_expand = {
        buffers = 'lightline#bufferline#buffers',
    },
    component_type = {
        buffers = 'tabsel',
    },
}

vim.g.lightline_bufferline_show_number = 2
vim.g.lightline_bufferline_enable_devicons = 1
vim.g.lightline_bufferline_icon_position = 'first'
