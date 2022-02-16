-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-under-comparator"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/cmp-under-comparator",
    url = "https://github.com/lukas-reineke/cmp-under-comparator"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["color-scheme-holokai-for-vim"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/color-scheme-holokai-for-vim",
    url = "https://github.com/changyuheng/color-scheme-holokai-for-vim"
  },
  ["colorbuddy.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15colorbuddy\frequire\0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim",
    url = "https://github.com/tjdevries/colorbuddy.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nÐ\2\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3=\3\v\2B\0\2\1K\0\1\0\nsigns\1\0\0\vdelete\1\0\4\vlinehl\21GitSignsDeleteLn\ttext\6-\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vchange\1\0\4\vlinehl\21GitSignsChangeLn\ttext\6~\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\badd\1\0\0\1\0\4\vlinehl\18GitSignsAddLn\ttext\6+\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n…\2\0\0\a\0\16\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0034\4\3\0005\5\t\0005\6\n\0=\6\v\5>\5\1\4=\4\f\0035\4\r\0=\4\14\3=\3\15\2B\0\2\1K\0\1\0\rsections\14lualine_y\1\2\0\0\rfiletype\14lualine_x\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\14lualine_b\1\0\0\1\3\0\0\vbranch\tdiff\foptions\1\0\0\1\0\2\18icons_enabled\1\ntheme\tauto\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["no-clown-fiesta.nvim"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/no-clown-fiesta.nvim",
    url = "https://github.com/aktersnurra/no-clown-fiesta.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim.\2\0\4\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0G\3\0\0C\0\1\0\1À\21compare_localityˆ\n\0\2\n\0!\0{5\2\0\0006\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\5\0'\b\6\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\a\0'\b\b\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\t\0'\b\n\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\v\0'\b\f\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\r\0'\b\14\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\15\0'\b\16\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\17\0'\b\18\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\19\0'\b\20\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\21\0'\b\22\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\23\0'\b\24\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\25\0'\b\26\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\27\0'\b\28\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\29\0'\b\30\0\18\t\2\0B\3\6\0016\3\1\0009\3\31\3'\5 \0B\3\2\1K\0\1\0= command! Format execute 'lua vim.lsp.buf.formatting()' \bcmdE<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>\15<leader>so+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2Ÿ\v\1\0\18\0M\0˜\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\0025\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0055\6\f\0009\a\n\0029\a\v\aB\a\1\2=\a\r\0069\a\n\0029\a\14\aB\a\1\2=\a\15\0069\a\n\0029\a\v\aB\a\1\2=\a\16\0069\a\n\0029\a\14\aB\a\1\2=\a\17\0069\a\n\0029\a\18\a)\tüÿB\a\2\2=\a\19\0069\a\n\0029\a\18\a)\t\4\0B\a\2\2=\a\20\0069\a\n\0029\a\21\aB\a\1\2=\a\22\0069\a\n\0029\a\23\aB\a\1\2=\a\24\0069\a\n\0029\a\25\a5\t\28\0009\n\26\0029\n\27\n=\n\29\tB\a\2\2=\a\30\6=\6\n\0054\6\5\0005\a\31\0>\a\1\0065\a \0>\a\2\0065\a!\0>\a\3\0065\a\"\0>\a\4\6=\6#\0055\6(\0009\a$\0005\t%\0005\n&\0=\n'\tB\a\2\2=\a)\6=\6*\0055\0067\0004\a\n\0009\b+\0029\b,\b9\b-\b>\b\1\a9\b+\0029\b,\b9\b.\b>\b\2\a9\b+\0029\b,\b9\b/\b>\b\3\a6\b\0\0'\n0\0B\b\2\0029\b1\b>\b\4\a9\b+\0029\b,\b9\b2\b>\b\5\a9\b+\0029\b,\b9\b3\b>\b\6\a9\b+\0029\b,\b9\b4\b>\b\a\a9\b+\0029\b,\b9\b5\b>\b\b\a3\b6\0>\b\t\a=\a8\6=\0069\0055\6:\0=\6;\5B\3\2\0013\3<\0006\4\0\0'\6=\0B\4\2\0025\5>\0006\6?\0\18\b\5\0B\6\2\4X\t\20€8\v\n\0049\v\4\v5\r@\0=\3A\r5\14B\0=\14C\r5\14D\0=\14E\r6\14\0\0'\16F\0B\14\2\0029\14G\0146\16H\0009\16I\0169\16J\0169\16K\16B\16\1\0A\14\0\2=\14L\rB\v\2\1E\t\3\3R\tê2\0\0€K\0\1\0\17capabilities\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\vassist\1\0\2\22importGranularity\vmodule\17importPrefix\fby_self\nflags\1\0\1\26debounce_text_changes\3–\1\14on_attach\1\0\0\vipairs\1\3\0\0\18rust_analyzer\16terraformls\14lspconfig\0\17experimental\1\0\2\16native_menu\1\15ghost_text\2\fsorting\16comparators\1\0\0\0\norder\vlength\14sort_text\tkind\nunder\25cmp-under-comparator\nscore\nexact\voffset\fcompare\vconfig\15formatting\vformat\1\0\0\tmenu\1\0\3\tpath\v[Path]\rnvim_lsp\n[LSP]\vbuffer\r[Buffer]\1\0\2\rmaxwidth\3(\14with_text\2\15cmp_format\fsources\1\0\2\tname\vbuffer\19keyword_length\3\5\1\0\1\tname\tpath\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\n<C-o>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<Tab>\f<S-Tab>\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\15cmp_buffer\flspkind\frequire\0" },
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["vim-terraform"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/vim-terraform",
    url = "https://github.com/hashivim/vim-terraform"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/vim-vinegar",
    url = "https://github.com/tpope/vim-vinegar"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/Users/alex/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: colorbuddy.nvim
time([[Config for colorbuddy.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15colorbuddy\frequire\0", "config", "colorbuddy.nvim")
time([[Config for colorbuddy.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim.\2\0\4\1\1\0\5-\0\0\0\18\2\0\0009\0\0\0G\3\0\0C\0\1\0\1À\21compare_localityˆ\n\0\2\n\0!\0{5\2\0\0006\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\5\0'\b\6\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\a\0'\b\b\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\t\0'\b\n\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\v\0'\b\f\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\r\0'\b\14\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\15\0'\b\16\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\17\0'\b\18\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\19\0'\b\20\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\21\0'\b\22\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\23\0'\b\24\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\25\0'\b\26\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\27\0'\b\28\0\18\t\2\0B\3\6\0016\3\1\0009\3\2\0039\3\3\3\18\5\1\0'\6\4\0'\a\29\0'\b\30\0\18\t\2\0B\3\6\0016\3\1\0009\3\31\3'\5 \0B\3\2\1K\0\1\0= command! Format execute 'lua vim.lsp.buf.formatting()' \bcmdE<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>\15<leader>so+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn/<cmd>lua vim.lsp.buf.type_definition()<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>.<cmd>lua vim.lsp.buf.implementation()<CR>\agi%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\24nvim_buf_set_keymap\bapi\bvim\1\0\2\fnoremap\2\vsilent\2Ÿ\v\1\0\18\0M\0˜\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\0029\3\4\0025\5\b\0005\6\6\0003\a\5\0=\a\a\6=\6\t\0055\6\f\0009\a\n\0029\a\v\aB\a\1\2=\a\r\0069\a\n\0029\a\14\aB\a\1\2=\a\15\0069\a\n\0029\a\v\aB\a\1\2=\a\16\0069\a\n\0029\a\14\aB\a\1\2=\a\17\0069\a\n\0029\a\18\a)\tüÿB\a\2\2=\a\19\0069\a\n\0029\a\18\a)\t\4\0B\a\2\2=\a\20\0069\a\n\0029\a\21\aB\a\1\2=\a\22\0069\a\n\0029\a\23\aB\a\1\2=\a\24\0069\a\n\0029\a\25\a5\t\28\0009\n\26\0029\n\27\n=\n\29\tB\a\2\2=\a\30\6=\6\n\0054\6\5\0005\a\31\0>\a\1\0065\a \0>\a\2\0065\a!\0>\a\3\0065\a\"\0>\a\4\6=\6#\0055\6(\0009\a$\0005\t%\0005\n&\0=\n'\tB\a\2\2=\a)\6=\6*\0055\0067\0004\a\n\0009\b+\0029\b,\b9\b-\b>\b\1\a9\b+\0029\b,\b9\b.\b>\b\2\a9\b+\0029\b,\b9\b/\b>\b\3\a6\b\0\0'\n0\0B\b\2\0029\b1\b>\b\4\a9\b+\0029\b,\b9\b2\b>\b\5\a9\b+\0029\b,\b9\b3\b>\b\6\a9\b+\0029\b,\b9\b4\b>\b\a\a9\b+\0029\b,\b9\b5\b>\b\b\a3\b6\0>\b\t\a=\a8\6=\0069\0055\6:\0=\6;\5B\3\2\0013\3<\0006\4\0\0'\6=\0B\4\2\0025\5>\0006\6?\0\18\b\5\0B\6\2\4X\t\20€8\v\n\0049\v\4\v5\r@\0=\3A\r5\14B\0=\14C\r5\14D\0=\14E\r6\14\0\0'\16F\0B\14\2\0029\14G\0146\16H\0009\16I\0169\16J\0169\16K\16B\16\1\0A\14\0\2=\14L\rB\v\2\1E\t\3\3R\tê2\0\0€K\0\1\0\17capabilities\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\vassist\1\0\2\22importGranularity\vmodule\17importPrefix\fby_self\nflags\1\0\1\26debounce_text_changes\3–\1\14on_attach\1\0\0\vipairs\1\3\0\0\18rust_analyzer\16terraformls\14lspconfig\0\17experimental\1\0\2\16native_menu\1\15ghost_text\2\fsorting\16comparators\1\0\0\0\norder\vlength\14sort_text\tkind\nunder\25cmp-under-comparator\nscore\nexact\voffset\fcompare\vconfig\15formatting\vformat\1\0\0\tmenu\1\0\3\tpath\v[Path]\rnvim_lsp\n[LSP]\vbuffer\r[Buffer]\1\0\2\rmaxwidth\3(\14with_text\2\15cmp_format\fsources\1\0\2\tname\vbuffer\19keyword_length\3\5\1\0\1\tname\tpath\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\t<CR>\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\n<C-o>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<Tab>\f<S-Tab>\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\15cmp_buffer\flspkind\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n…\2\0\0\a\0\16\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0034\4\3\0005\5\t\0005\6\n\0=\6\v\5>\5\1\4=\4\f\0035\4\r\0=\4\14\3=\3\15\2B\0\2\1K\0\1\0\rsections\14lualine_y\1\2\0\0\rfiletype\14lualine_x\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\14lualine_b\1\0\0\1\3\0\0\vbranch\tdiff\foptions\1\0\0\1\0\2\18icons_enabled\1\ntheme\tauto\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nÐ\2\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\n\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\3=\3\v\2B\0\2\1K\0\1\0\nsigns\1\0\0\vdelete\1\0\4\vlinehl\21GitSignsDeleteLn\ttext\6-\ahl\19GitSignsDelete\nnumhl\21GitSignsDeleteNr\vchange\1\0\4\vlinehl\21GitSignsChangeLn\ttext\6~\ahl\19GitSignsChange\nnumhl\21GitSignsChangeNr\badd\1\0\0\1\0\4\vlinehl\18GitSignsAddLn\ttext\6+\ahl\16GitSignsAdd\nnumhl\18GitSignsAddNr\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
