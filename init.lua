-- ====================================================================
-- THE ULTIMATE HYBRID EDITOR (init.lua) - 60 MEGA ULTRA FEATURES
-- Gabungan: Neovim + VS Code + Helix + Emacs + Kakoune
-- Custom: WELCOME TO NEOVIM MODIF MR.NAGIRYU (15 THEMES & 60 FEATURES)
-- ====================================================================

local opt = vim.opt
local g = vim.g
local keymap = vim.keymap.set
local cmd = vim.cmd

-- ====================================================================
-- 1. DISABLE BLOATWARE (KECUALI NETRW)
-- ====================================================================
local builtins = {
    "gzip", "matchit", "matchparen", "tarPlugin",
    "tohtml", "tutor", "zipPlugin",
}
for _, plugin in ipairs(builtins) do g["loaded_" .. plugin] = 1 end

-- ====================================================================
-- 2. SETTING DASAR & UI CORE
-- ====================================================================
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.hidden = true
opt.updatetime = 50
opt.belloff = "all"
opt.wildmenu = true
opt.wildmode = "longest:full,full"
opt.foldmethod = "syntax"
opt.foldlevel = 99
opt.foldenable = false
opt.history = 1000
opt.clipboard:append("unnamedplus")
g.mapleader = " "

-- UI Fillchars
opt.fillchars = { eob = " ", vert = "│", fold = "·", diff = "⣿" }

-- Visual & Scrolling
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.wrap = false
opt.colorcolumn = "80"
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
opt.pumheight = 10
opt.showmode = false

-- Search Engine
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = true

-- Persistent Undo
local undodir = vim.fn.stdpath("data") .. "/undo"
if vim.fn.isdirectory(undodir) == 0 then vim.fn.mkdir(undodir, "p") end
opt.undodir = undodir
opt.undofile = true
opt.swapfile = false
opt.backup = false
opt.writebackup = false

-- ====================================================================
-- 3. REAL BLACKARCH BANNER
-- ====================================================================
cmd([[
    highlight SamuraiWelcome guifg=#ff1a1a gui=bold
    highlight CyberDarkRedArt guifg=#8b0000
    augroup SamuraiWelcomeBanner
        autocmd!
        autocmd VimEnter * if argc() == 0 | call append(0, [
            \ "",
            \ "   ===================================================",
            \ "      WELCOME TO NEOVIM MODIF MR.NAGIRYU",
            \ "   ===================================================",
            \ "                    .o+   +o.",
            \ "                   `ooo/ \\ooo` ",
            \ "                  `+oooo: :oooo+` ",
            \ "                 `+oooooo: :oooooo+` ",
            \ "                 -+oooooo: :oooooo+- ",
            \ "                 `/:--++o : o++:-/` ",
            \ "                `/++++/++ : ++/++++` ",
            \ "               `/+++++++++ : ++/++++` ",
            \ "              `/+++ooooooo : ooooooo+++` ",
            \ "             ./ooossssso++ : ++ossssssoo/. ",
            \ "            .oossssso-`   :    `-osssssso. ",
            \ "           -osssssso.     :      .osssssso- ",
            \ "          :ssssssso/      :       /osssssss: ",
            \ "         /osssssss/       :        /ssssssss/ ",
            \ "        `/ossssso+/:-     :     -:/+ossssso/` ",
            \ "         `+sso+:-`        :        `:-+oss+` ",
            \ "           `++:.          :          .:++` ",
            \ "             `            V            ` ",
            \ "",
            \ "      [ LEVEL: 60 MEGA ULTRA FEATURES & 15 THEMES ]",
            \ "   ---------------------------------------------------",
            \ ""]) | normal! 27G | endif
    augroup END
    match SamuraiWelcome /WELCOME TO NEOVIM MODIF MR.NAGIRYU/
]])

-- ====================================================================
-- 4. 15 TEMA WARNA LATAR BELAKANG & TRANSPARANSI
-- ====================================================================
g.cyber_theme = 0
g.is_transparent = false

cmd([[
    function! ApplyCyberTheme()
        if g:cyber_theme == 0
            highlight Normal guibg=#2a0505 guifg=#ff4d4d
            highlight StatusLine guibg=#8b0000 guifg=#120202
            highlight CursorLine guibg=#3d0a0a
            highlight Visual guibg=#5a0f0f
            let l:msg = "🔥 1. CYBER: DARK RED 🔥"
        elseif g:cyber_theme == 1
            highlight Normal guibg=#05052a guifg=#4d4dff
            highlight StatusLine guibg=#00008b guifg=#020212
            highlight CursorLine guibg=#0a0a3d
            highlight Visual guibg=#0f0f5a
            let l:msg = "❄️ 2. CYBER: DARK BLUE ❄️"
        elseif g:cyber_theme == 2
            highlight Normal guibg=#052a05 guifg=#4dff4d
            highlight StatusLine guibg=#008b00 guifg=#021202
            highlight CursorLine guibg=#0a3d0a
            highlight Visual guibg=#0f5a0f
            let l:msg = "☢️ 3. CYBER: MATRIX GREEN ☢️"
        elseif g:cyber_theme == 3
            highlight Normal guibg=#1d052a guifg=#d14dff
            highlight StatusLine guibg=#5c008b guifg=#0e0212
            highlight CursorLine guibg=#2d0a3d
            highlight Visual guibg=#480f5a
            let l:msg = "🔮 4. CYBER: NEON PURPLE 🔮"
        elseif g:cyber_theme == 4
            highlight Normal guibg=#002b36 guifg=#839496
            highlight StatusLine guibg=#073642 guifg=#93a1a1
            highlight CursorLine guibg=#073642
            highlight Visual guibg=#586e75
            let l:msg = "☀️ 5. SOLARIZED DARK ☀️"
        elseif g:cyber_theme == 5
            highlight Normal guibg=#1e1e1e guifg=#f8f8f2
            highlight StatusLine guibg=#75715e guifg=#f8f8f2
            highlight CursorLine guibg=#292929
            highlight Visual guibg=#49483e
            let l:msg = "⚡ 6. MONOKAI PRO ⚡"
        elseif g:cyber_theme == 6
            highlight Normal guibg=#2d051f guifg=#ff4de1
            highlight StatusLine guibg=#8b005c guifg=#12020e
            highlight CursorLine guibg=#3d0a2c
            highlight Visual guibg=#5a0f43
            let l:msg = "💖 7. NEON PINK 💖"
        elseif g:cyber_theme == 7
            highlight Normal guibg=#1a1b26 guifg=#7aa2f7
            highlight StatusLine guibg=#414868 guifg=#c0caf5
            highlight CursorLine guibg=#24283b
            highlight Visual guibg=#33467c
            let l:msg = "🌙 8. TOKYO NIGHT 🌙"
        elseif g:cyber_theme == 8
            highlight Normal guibg=#282828 guifg=#ebdbb2
            highlight StatusLine guibg=#504945 guifg=#fbf1c7
            highlight CursorLine guibg=#3c3836
            highlight Visual guibg=#665c54
            let l:msg = "🪵 9. GRUVBOX DARK 🪵"
        elseif g:cyber_theme == 9
            highlight Normal guibg=#05282a guifg=#4df6ff
            highlight StatusLine guibg=#00788b guifg=#021112
            highlight CursorLine guibg=#0a3b3d
            highlight Visual guibg=#0f565a
            let l:msg = "💎 10. EMERALD CYAN 💎"
        elseif g:cyber_theme == 10
            highlight Normal guibg=#2a1805 guifg=#ffab4d
            highlight StatusLine guibg=#8b4500 guifg=#120902
            highlight CursorLine guibg=#3d240a
            highlight Visual guibg=#5a370f
            let l:msg = "🌅 11. SUNSET ORANGE 🌅"
        elseif g:cyber_theme == 11
            highlight Normal guibg=#021018 guifg=#38bdf8
            highlight StatusLine guibg=#0369a1 guifg=#f0f9ff
            highlight CursorLine guibg=#0c2340
            highlight Visual guibg=#1e3a8a
            let l:msg = "🌊 12. DEEP OCEAN 🌊"
        elseif g:cyber_theme == 12
            highlight Normal guibg=#3b0000 guifg=#fca5a5
            highlight StatusLine guibg=#b91c1c guifg=#fff5f5
            highlight CursorLine guibg=#520505
            highlight Visual guibg=#7f1d1d
            let l:msg = "🩸 13. BLOOD MOON 🩸"
        elseif g:cyber_theme == 13
            highlight Normal guibg=#2b2800 guifg=#fef08a
            highlight StatusLine guibg=#a16207 guifg=#fefce8
            highlight CursorLine guibg=#3d3800
            highlight Visual guibg=#713f12
            let l:msg = "⚡ 14. NEON YELLOW ⚡"
        elseif g:cyber_theme == 14
            highlight Normal guibg=#0f172a guifg=#e2e8f0
            highlight StatusLine guibg=#334155 guifg=#f8fafc
            highlight CursorLine guibg=#1e293b
            highlight Visual guibg=#475569
            let l:msg = "❄️ 15. ARCTIC FROST ❄️"
        endif
        
        if g:is_transparent
            highlight Normal guibg=NONE ctermbg=NONE
            highlight LineNr guibg=NONE ctermbg=NONE
            highlight SignColumn guibg=NONE ctermbg=NONE
            echo l:msg . " (TRANSPARENT)"
        else
            echo l:msg
        endif
    endfunction
    function! ToggleCyberTheme()
        let g:cyber_theme = (g:cyber_theme + 1) % 15
        call ApplyCyberTheme()
    endfunction
    function! ToggleTransparency()
        let g:is_transparent = !g:is_transparent
        call ApplyCyberTheme()
    endfunction
    call ApplyCyberTheme()
]])
keymap("n", "<Leader>th", ":call ToggleCyberTheme()<CR>", { silent = true })
keymap("n", "<Leader>tt", ":call ToggleTransparency()<CR>", { silent = true })

-- ====================================================================
-- 5. KECERDASAN AUTO-SPASI & AUTO-CLOSE
-- ====================================================================
opt.autoindent = true
opt.smartindent = true
opt.cindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.softtabstop = 4

cmd([[
    autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
    autocmd FileType javascript,html,css,c,cpp,lua setlocal expandtab shiftwidth=4 softtabstop=4
    inoremap <expr> <CR> search('{\%#}', 'n') ? "\<CR>\<ESC>O" : pumvisible() ? "\<C-y>" : "\<CR>"
]])
keymap("i", '"', '""<LEFT>', { noremap = true })
keymap("i", "'", "''<LEFT>", { noremap = true })
keymap("i", "(", "()<LEFT>", { noremap = true })
keymap("i", "[", "[]<LEFT>", { noremap = true })
keymap("i", "{", "{}<LEFT>", { noremap = true })

-- ====================================================================
-- 6. SMART CODE RUNNER & ULTIMATE STATUSLINE
-- ====================================================================
cmd([[
    nnoremap <F5> :call RunMyCode()<CR>
    function! RunMyCode()
        exec "w"
        let l:ext = expand("%:e")
        botright split | resize 12
        if l:ext == 'py' | exec "terminal python3 %"
        elseif l:ext == 'js' | exec "terminal node %"
        elseif l:ext == 'sh' | exec "terminal bash %"
        elseif l:ext == 'cpp' | exec "terminal g++ % -o %< && ./%<"
        elseif l:ext == 'lua' | exec "terminal lua %"
        else | echo "Runner belum diatur!" | q | endif
    endfunction

    function! GetGitBranch()
        let l:branch = system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
        return strlen(l:branch) > 0 ? ' [  ' . l:branch . ' ] ' : ''
    endfunction
    
    function! GetWordCount()
        return ' 📝 ' . wordcount().words . ' W '
    endfunction

    set laststatus=2
    highlight StatusLine guibg=#8b0000 guifg=#120202 gui=bold
    highlight StatusLineNC guibg=#5e1414 guifg=#120202
    set statusline=%#StatusLine#\ SAMURAI\ \│\ %f\ %m\ %r\ %{GetGitBranch()}%=%{GetWordCount()}│\ %p%%\ │\ L:%l/%L\ 
]])

-- ====================================================================
-- 7. KEYBINDING SUPER MEGA PRO (SPASI / LEADER)
-- ====================================================================
keymap({ 'i', 'n' }, '<esc>', '<cmd>noh<cr><esc>', { desc = 'ESC matikan highlight' })
keymap("n", "<Leader>w", ":w<CR>", { silent = true })
keymap("n", "<Leader>q", ":q<CR>", { silent = true })
keymap("n", "vw", 'viw"', { noremap = true })
keymap("n", "vp", 'vip"', { noremap = true })

-- Buffer Navigation
keymap("n", "<Leader>bn", ":bnext<CR>", { silent = true })
keymap("n", "<Leader>bp", ":bprevious<CR>", { silent = true })
keymap("n", "<Leader>bd", ":bdelete<CR>", { silent = true })

-- Window Resizer
keymap("n", "<C-Up>", ":resize -2<CR>", { silent = true })
keymap("n", "<C-Down>", ":resize +2<CR>", { silent = true })
keymap("n", "<C-Left>", ":vertical resize -2<CR>", { silent = true })
keymap("n", "<C-Right>", ":vertical resize +2<CR>", { silent = true })

-- Auto-Center Nav
keymap("n", "<C-d>", "<C-d>zz", { noremap = true })
keymap("n", "<C-u>", "<C-u>zz", { noremap = true })
keymap("n", "n", "nzzzv", { noremap = true })
keymap("n", "N", "Nzzzv", { noremap = true })

-- LINE MOVER (Spasi + J / K)
keymap("n", "<Leader>j", ":m .+1<CR>==", { silent = true, desc = "Geser baris ke bawah" })
keymap("n", "<Leader>k", ":m .-2<CR>==", { silent = true, desc = "Geser baris ke atas" })
keymap("v", "<Leader>j", ":m '>+1<CR>gv=gv", { silent = true, desc = "Geser blok ke bawah" })
keymap("v", "<Leader>k", ":m '<-2<CR>gv=gv", { silent = true, desc = "Geser blok ke atas" })

-- Text Manipulation & Safe Paste
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")
keymap("x", "p", [["_dP]])
keymap("n", "Y", "y$")
keymap("n", "J", "mzJ`z")

-- MAGIC REPLACE (Spasi + R)
keymap("n", "<Leader>r", function()
    local cword = vim.fn.expand("<cword>")
    vim.ui.input({ prompt = "Ganti '" .. cword .. "' menjadi: " }, function(input)
        if input and input ~= "" then
            vim.cmd(string.format("%%s/\\<%s\\>/%s/gI", cword, input))
            print("Berhasil mengganti " .. cword .. " menjadi " .. input)
        end
    end)
end, { desc = "Magic Replace Word" })

-- Quick Macro Map
keymap("n", "Q", "q", { noremap = true })
keymap("n", "q", "<Nop>", { noremap = true })

-- ====================================================================
-- 8. KUMPULAN FITUR 1 - 40 SEBELUMNYA
-- ====================================================================
keymap("n", "<Leader>nn", function()
    if vim.opt.relativenumber:get() then
        vim.opt.relativenumber = false
        vim.opt.number = true
        print("Mode: Nomor Absolut")
    elseif vim.opt.number:get() then
        vim.opt.number = false
        vim.opt.relativenumber = false
        print("Mode: Nomor Dimatikan")
    else
        vim.opt.relativenumber = true
        vim.opt.number = true
        print("Mode: Nomor Relatif")
    end
end, { desc = "Toggle Line Numbers" })

keymap("n", "<Leader>tw", function()
    vim.opt.wrap = not vim.opt.wrap:get()
    print("Text Wrap: " .. tostring(vim.opt.wrap:get()))
end, { desc = "Toggle Text Wrap" })

keymap("n", "<Leader>ts", function()
    vim.opt.spell = not vim.opt.spell:get()
    print("Spell Check: " .. tostring(vim.opt.spell:get()))
end, { desc = "Toggle Spellcheck" })

keymap("n", "<Leader>yp", function()
    local filepath = vim.fn.expand("%:p")
    vim.fn.setreg("+", filepath)
    print("Copied path: " .. filepath)
end, { desc = "Copy File Path" })

keymap("n", "<Leader>cd", function()
    local dir = vim.fn.expand("%:p:h")
    vim.cmd("lcd " .. dir)
    print("Changed dir to: " .. dir)
end, { desc = "CD to current file directory" })

keymap("n", "<Leader>cl", function()
    local save_pos = vim.fn.getpos(".")
    vim.cmd([[keeppatterns %s/\s\+$//e]])
    vim.fn.setpos(".", save_pos)
    print("Trailing whitespace cleaned!")
end, { desc = "Clean trailing whitespaces" })

keymap("n", "<Leader>hl", function()
    vim.opt.hlsearch = not vim.opt.hlsearch:get()
    print("Highlight Search: " .. tostring(vim.opt.hlsearch:get()))
end, { desc = "Toggle Search Highlighting" })

keymap("n", "<Leader>bak", function()
    local filename = vim.fn.expand("%")
    if filename == "" then
        print("Simpan file terlebih dahulu!")
        return
    end
    local timestamp = os.date("%Y%m%d_%H%M%S")
    local backup_name = filename .. "." .. timestamp .. ".bak"
    vim.cmd("write " .. backup_name)
    print("Backup berhasil disimpan ke: " .. backup_name)
end, { desc = "Create Timestamped Backup" })

keymap("n", "<Leader>tc", function()
    vim.opt.cursorline = not vim.opt.cursorline:get()
    print("Cursorline: " .. tostring(vim.opt.cursorline:get()))
end, { desc = "Toggle Cursor Line" })

keymap("n", "<Leader>qq", function()
    local qf_exists = false
    for _, win in ipairs(vim.fn.getwininfo()) do
        if win.quickfix == 1 then
            qf_exists = true
            break
        end
    end
    if qf_exists then
        vim.cmd("cclose")
    else
        vim.cmd("copen")
    end
end, { desc = "Toggle Quickfix List" })

keymap("n", "<Leader>dup", "yyp", { desc = "Duplicate line" })
keymap("n", "<Leader>sa", "ggVG", { desc = "Select all content" })
keymap("n", "<Leader>da", "ggVGd", { desc = "Delete all content" })

keymap("n", "<Leader>id", function()
    local date_str = os.date("%Y-%m-%d")
    vim.api.nvim_put({date_str}, "c", true, true)
    print("Inserted Date: " .. date_str)
end, { desc = "Insert current date" })

keymap("n", "<Leader>it", function()
    local time_str = os.date("%H:%M:%S")
    vim.api.nvim_put({time_str}, "c", true, true)
    print("Inserted Time: " .. time_str)
end, { desc = "Insert current time" })

keymap("n", "<Leader>rc", function()
    vim.cmd("e ~/.config/nvim/init.lua")
    print("Opened init.lua config")
end, { desc = "Edit init.lua config" })

keymap("n", "<Leader>so", function()
    vim.cmd("source %")
    print("Configuration reloaded!")
end, { desc = "Source/Reload current file" })

keymap("n", "<Leader>ti", function()
    vim.opt.list = not vim.opt.list:get()
    print("List chars toggle: " .. tostring(vim.opt.list:get()))
end, { desc = "Toggle invisible chars/tabs" })

keymap("n", "<Leader>tcc", function()
    if vim.opt.colorcolumn:get()[1] == "80" then
        vim.opt.colorcolumn = ""
        print("Colorcolumn disabled")
    else
        vim.opt.colorcolumn = "80"
        print("Colorcolumn set to 80")
    end
end, { desc = "Toggle 80-char limit column" })

keymap("n", "<Leader>db", function()
    vim.cmd([[g/^$/d]])
    print("All blank lines deleted!")
end, { desc = "Delete all empty lines" })

keymap("n", "<Leader>srt", function()
    vim.cmd([[:%sort]])
    print("File lines sorted alphabetically!")
end, { desc = "Sort file lines" })

keymap("n", "<Leader>wqa", ":wqa<CR>", { silent = true, desc = "Save and quit all" })
keymap("n", "<Leader>qa", ":qa!<CR>", { silent = true, desc = "Force quit all" })
keymap("n", "<Leader>hlc", ":nohlsearch<CR>", { silent = true, desc = "Clear search highlight" })
keymap("n", "<Leader>info", function() vim.cmd("file") end, { desc = "Show file info details" })

keymap("n", "<Leader>cu", "gUiW", { desc = "Uppercase word" })
keymap("n", "<Leader>cll", "guiW", { desc = "Lowercase word" })
keymap("n", "<Leader>zz", "zz", { desc = "Center screen vertically" })

keymap("n", "<Leader>tm", function()
    if vim.opt.mouse:get() == "a" then
        vim.opt.mouse = ""
        print("Mouse support: OFF")
    else
        vim.opt.mouse = "a"
        print("Mouse support: ON (a)")
    end
end, { desc = "Toggle mouse support" })

keymap("n", "<Leader>tsyn", function()
    if vim.fn.exists("g:syntax_on") == 1 then
        vim.cmd("syntax off")
        print("Syntax highlighting: OFF")
    else
        vim.cmd("syntax on")
        print("Syntax highlighting: ON")
    end
end, { desc = "Toggle syntax highlighting" })

keymap("n", "<Leader>yaf", function()
    local content = table.concat(vim.api.nvim_buf_get_lines(0, 0, -1, false), "\n")
    vim.fn.setreg("+", content)
    print("Whole file content copied to clipboard!")
end, { desc = "Yank/Copy whole file" })

keymap("n", "<Leader>ths", ":split | terminal<CR>", { silent = true, desc = "Horizontal terminal split" })
keymap("n", "<Leader>tvs", ":vsplit | terminal<CR>", { silent = true, desc = "Vertical terminal split" })

keymap("n", "<Leader>stat", function()
    local words = wordcount().words
    local lines = vim.fn.line("$")
    print(string.format("📊 STATS -> Words: %d | Lines: %d", words, lines))
end, { desc = "Show buffer stats" })

keymap("n", "<Leader>tfc", function()
    if vim.opt.foldcolumn:get() == "0" then
        vim.opt.foldcolumn = "2"
        print("Foldcolumn: 2")
    else
        vim.opt.foldcolumn = "0"
        print("Foldcolumn: 0")
    end
end, { desc = "Toggle fold column" })

keymap("n", "<Leader>rv", function()
    vim.cmd("g/^/m0")
    print("All lines reversed!")
end, { desc = "Reverse all file lines" })

keymap("n", "<Leader>tbr", function()
    if vim.opt.background:get() == "dark" then
        vim.opt.background = "light"
        print("Background: LIGHT")
    else
        vim.opt.background = "dark"
        print("Background: DARK")
    end
end, { desc = "Toggle background theme" })

keymap("n", "<Leader>wrd", "viw<esc>a\"<esc>bi\"<esc>lel", { desc = "Wrap word in quotes" })
keymap("n", "<Leader>wrp", "viw<esc>a)<esc>bi(<esc>lel", { desc = "Wrap word in parentheses" })

keymap("n", "<Leader>tsc", function()
    if vim.opt.signcolumn:get() == "yes" then
        vim.opt.signcolumn = "no"
        print("Signcolumn: NO")
    else
        vim.opt.signcolumn = "yes"
        print("Signcolumn: YES")
    end
end, { desc = "Toggle sign column" })

-- ====================================================================
-- 9. 20 FITUR BARU TAMBAHAN (LIMIT BREAK LEVEL 60)
-- ====================================================================
-- 41. Toggle Diagnostics (<Leader>tdi)
keymap("n", "<Leader>tdi", function()
    vim.diagnostic.enable(not vim.diagnostic.is_enabled())
    print("Diagnostics toggled")
end, { desc = "Toggle diagnostics" })

-- 42. Toggle Auto-Save Simulation (<Leader>tas)
keymap("n", "<Leader>tas", function()
    if vim.g.auto_save_active then
        vim.g.auto_save_active = false
        print("Auto-save: OFF")
    else
        vim.g.auto_save_active = true
        print("Auto-save: ON (via InsertLeave/TextChanged)")
    end
end, { desc = "Toggle auto-save mode" })

-- 43. Insert Timestamp UUID v4 Mock (<Leader>uuid)
keymap("n", "<Leader>uuid", function()
    local template = "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx"
    local uuid = string.gsub(template, "[xy]", function(c)
        local v = (c == "x") and math.random(0, 15) or math.random(8, 11)
        return string.format("%x", v)
    end)
    vim.api.nvim_put({uuid}, "c", true, true)
    print("Inserted UUID: " .. uuid)
end, { desc = "Insert generated UUID" })

-- 44. Convert Tabs to Spaces (<Leader>t2s)
keymap("n", "<Leader>t2s", function()
    vim.cmd("set expandtab | retab")
    print("Converted tabs to spaces")
end, { desc = "Convert tabs to spaces" })

-- 45. Convert Spaces to Tabs (<Leader>s2t)
keymap("n", "<Leader>s2t", function()
    vim.cmd("set noexpandtab | retab!")
    print("Converted spaces to tabs")
end, { desc = "Convert spaces to tabs" })

-- 46. Delete All Trailing Spaces Explicitly (<Leader>dtw)
keymap("n", "<Leader>dtw", function()
    vim.cmd([[keeppatterns %s/\s\+$//e]])
    print("All trailing spaces deleted explicitly")
end, { desc = "Delete trailing spaces" })

-- 47. Copy File Name Only (<Leader>yfn)
keymap("n", "<Leader>yfn", function()
    local filename = vim.fn.expand("%:t")
    vim.fn.setreg("+", filename)
    print("Copied filename: " .. filename)
end, { desc = "Copy filename only" })

-- 48. Copy Relative File Path (<Leader>yrp)
keymap("n", "<Leader>yrp", function()
    local relpath = vim.fn.expand("%")
    vim.fn.setreg("+", relpath)
    print("Copied relative path: " .. relpath)
end, { desc = "Copy relative file path" })

-- 49. Toggle Virtual Text (<Leader>tvt)
keymap("n", "<Leader>tvt", function()
    local current = vim.diagnostic.config().virtual_text
    vim.diagnostic.config({ virtual_text = not current })
    print("Virtual text: " .. tostring(not current))
end, { desc = "Toggle virtual text diagnostics" })

-- 50. Open Scratchpad Buffer (<Leader>scr)
keymap("n", "<Leader>scr", function()
    vim.cmd("enew | setlocal buftype=nofile bufhidden=hide noswapfile")
    print("Opened new scratchpad buffer")
end, { desc = "Open scratch buffer" })

-- 51. Toggle Absolute Number Only Mode (<Leader>tnum)
keymap("n", "<Leader>tnum", function()
    vim.opt.relativenumber = false
    vim.opt.number = true
    print("Mode: Absolute Numbers Only")
end, { desc = "Set absolute number only" })

-- 52. Toggle Relative Number Only Mode (<Leader>trnum)
keymap("n", "<Leader>trnum", function()
    vim.opt.number = true
    vim.opt.relativenumber = true
    print("Mode: Relative Numbers Enabled")
end, { desc = "Set relative number mode" })

-- 53. Toggle Conceal Level (<Leader>tcon)
keymap("n", "<Leader>tcon", function()
    if vim.opt.conceallevel:get() == 0 then
        vim.opt.conceallevel = 2
        print("Conceallevel: 2")
    else
        vim.opt.conceallevel = 0
        print("Conceallevel: 0")
    end
end, { desc = "Toggle conceal level" })

-- 54. Maximize Current Split Window (<Leader>max)
keymap("n", "<Leader>max", "<C-w>_<C-w>|", { desc = "Maximize current split" })

-- 55. Balance Split Windows (<Leader>bal)
keymap("n", "<Leader>bal", "<C-w>=", { desc = "Balance split windows" })

-- 56. Open Terminal in Floating Window (<Leader>ftm)
local function open_floating_term_custom()
    local buf = vim.api.nvim_create_buf(false, true)
    local width, height = math.floor(vim.o.columns * 0.8), math.floor(vim.o.lines * 0.8)
    local col, row = math.floor((vim.o.columns - width) / 2), math.floor((vim.o.lines - height) / 2)
    vim.api.nvim_open_win(buf, true, { style = "minimal", relative = "editor", width = width, height = height, row = row, col = col, border = "double" })
    vim.cmd("terminal")
    vim.cmd("startinsert")
end
keymap("n", "<Leader>ftm", open_floating_term_custom, { silent = true, desc = "Open floating terminal" })

-- 57. Delete Current Line Without Yanking (<Leader>dd)
keymap("n", "<Leader>dd", '"_dd', { desc = "Delete line without yank" })

-- 58. Paste Over Visual Selection Without Overwriting Register (<Leader>p)
keymap("v", "p", '"_dP', { desc = "Safe paste over selection" })

-- 59. Clean All Blank Lines and Whitespaces (<Leader>clean)
keymap("n", "<Leader>clean", function()
    local save_pos = vim.fn.getpos(".")
    vim.cmd([[keeppatterns %s/\s\+$//e]])
    vim.cmd([[g/^$/d]])
    vim.fn.setpos(".", save_pos)
    print("Buffer cleaned: whitespaces & blank lines removed!")
end, { desc = "Deep clean buffer" })

-- 60. Show Version and Build Details (<Leader>ver)
keymap("n", "<Leader>ver", function()
    print("Neovim Modif Mr.Nagiryu - 60 Features Active & 15 Themes Ready")
end, { desc = "Show editor custom version info" })

-- ====================================================================
-- 10. FILE EXPLORER & TERMINAL TERPADU
-- ====================================================================
g.netrw_banner = 0
g.netrw_liststyle = 3
g.netrw_browse_split = 4
g.netrw_altv = 1
g.netrw_winsize = 25

keymap("n", "<Leader>e", ":Lexplore<CR>", { silent = true })
keymap("n", "<Leader>te", ":botright split | resize 10 | terminal<CR>", { silent = true })
keymap("t", "<Esc>", "<C-\\><C-n>", { silent = true })

-- ====================================================================
-- 11. AUTOCOMMANDS DEWA (LUA API)
-- ====================================================================
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function() vim.highlight.on_yank({ higroup = "Visual", timeout = 200 }) end,
})
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, { 
    callback = function()
        if vim.g.auto_save_active then
            silent = true
            vim.cmd("silent! update")
        end
    end
})
vim.api.nvim_create_autocmd("BufReadPost", {
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        if mark[1] > 0 and mark[1] <= vim.api.nvim_buf_line_count(0) then pcall(vim.api.nvim_win_set_cursor, 0, mark) end
    end,
})
cmd([[ highlight ExtraWhitespace ctermbg=red guibg=#ff0000 | match ExtraWhitespace /\s\+$/ ]])
vim.api.nvim_create_autocmd("BufWritePre", { command = "%s/\\s\\+$//e" })
vim.api.nvim_create_autocmd({ "FocusGained", "TermClose", "TermLeave" }, { command = "checktime" })
vim.api.nvim_create_autocmd({"WinEnter", "FocusGained"}, { callback = function() vim.wo.cursorline = true end })
vim.api.nvim_create_autocmd({"WinLeave", "FocusLost"}, { callback = function() vim.wo.cursorline = false end })
vim.api.nvim_create_autocmd("VimResized", { command = "tabdo wincmd =" })
vim.api.nvim_create_autocmd("FileType", { pattern = { "markdown", "text" }, command = "setlocal spell" })

-- ====================================================================
-- 12. SNIPPET ABBREVIATIONS & UI DIAGNOSTICS
-- ====================================================================
cmd([[
    iabbrev htmltpl <!DOCTYPE html><CR><html lang="en"><CR><head><CR><meta charset="UTF-8"><CR><meta name="viewport" content="width=device-width, initial-scale=1.0"><CR><title>Cyberpunk Web</title><CR></head><CR><body><CR><CR></body><CR></html>
    iabbrev pytpl #!/usr/bin/env python3<CR># -*- coding: utf-8 -*-<CR><CR>def main():<CR>print("Hello Cyberpunk!")<CR><CR>if __name__ == "__main__":<CR>main()
    iabbrev cpptpl #include <iostream><CR><CR>int main() {<CR>std::cout << "Hello Cyberpunk!" << std::endl;<CR>return 0;<CR>}
    iabbrev ctpl #include <stdio.h><CR><CR>int main() {<CR>printf("Hello Cyberpunk!\n");<CR>return 0;<CR>}
    iabbrev bashtpl #!/bin/bash<CR><CR>echo "Hello Cyberpunk!"
]])

local signs = { Error = "✖ ", Warn = "⚠ ", Hint = "➤ ", Info = "ℹ " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
