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
local package_path_str = "/home/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/alex/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-under-comparator"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/cmp-under-comparator",
    url = "https://github.com/lukas-reineke/cmp-under-comparator"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["color-scheme-holokai-for-vim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/color-scheme-holokai-for-vim",
    url = "https://github.com/changyuheng/color-scheme-holokai-for-vim"
  },
  ["colorbuddy.nvim"] = {
    config = { "\27LJ\2\0028\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15colorbuddy\frequire\0" },
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim",
    url = "https://github.com/tjdevries/colorbuddy.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2…\2\0\0\6\0\16\0\0216\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\a\0005\3\6\0=\3\b\0024\3\3\0005\4\t\0005\5\n\0=\5\v\4>\4\1\3=\3\f\0025\3\r\0=\3\14\2=\2\15\1B\0\2\1K\0\1\0\rsections\14lualine_y\1\2\0\0\rfiletype\14lualine_x\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\14lualine_b\1\0\0\1\3\0\0\vbranch\tdiff\foptions\1\0\0\1\0\2\18icons_enabled\1\ntheme\tauto\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\2;\0\1\3\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim.\2\0\3\1\1\0\5-\0\0\0\18\1\0\0009\0\0\0G\2\0\0C\0\1\0\1À\21compare_locality¬\n\1\0\14\0G\0Œ\0016\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0026\2\0\0'\3\3\0B\2\2\0029\3\4\0025\4\b\0005\5\6\0003\6\5\0=\6\a\5=\5\t\0045\5\f\0009\6\n\0029\6\v\6B\6\1\2=\6\r\0059\6\n\0029\6\14\6B\6\1\2=\6\15\0059\6\n\0029\6\16\6)\aüÿB\6\2\2=\6\17\0059\6\n\0029\6\16\6)\a\4\0B\6\2\2=\6\18\0059\6\n\0029\6\19\6B\6\1\2=\6\20\0059\6\n\0029\6\21\6B\6\1\2=\6\22\0059\6\n\0029\6\23\0065\a\26\0009\b\24\0029\b\25\b=\b\27\aB\6\2\2=\6\28\5=\5\n\0044\5\5\0005\6\29\0>\6\1\0055\6\30\0>\6\2\0055\6\31\0>\6\3\0055\6 \0>\6\4\5=\5!\0045\5&\0009\6\"\0005\a#\0005\b$\0=\b%\aB\6\2\2=\6'\5=\5(\0045\0055\0004\6\n\0009\a)\0029\a*\a9\a+\a>\a\1\0069\a)\0029\a*\a9\a,\a>\a\2\0069\a)\0029\a*\a9\a-\a>\a\3\0066\a\0\0'\b.\0B\a\2\0029\a/\a>\a\4\0069\a)\0029\a*\a9\a0\a>\a\5\0069\a)\0029\a*\a9\a1\a>\a\6\0069\a)\0029\a*\a9\a2\a>\a\a\0069\a)\0029\a*\a9\a3\a>\a\b\0063\a4\0>\a\t\6=\0066\5=\0057\0045\0058\0=\0059\4B\3\2\0016\3\0\0'\4:\0B\3\2\0025\4;\0006\5<\0\18\6\4\0B\5\2\4X\b\17€8\n\t\0039\n\4\n5\v>\0005\f=\0=\f?\v6\f\0\0'\r@\0B\f\2\0029\fA\f6\rB\0009\rC\r9\rD\r9\rE\rB\r\1\0A\f\0\2=\fF\vB\n\2\1E\b\3\3R\bí2\0\0€K\0\1\0\17capabilities\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\vassist\1\0\0\1\0\2\17importPrefix\fby_self\22importGranularity\vmodule\vipairs\1\2\0\0\18rust_analyzer\14lspconfig\17experimental\1\0\2\16native_menu\1\15ghost_text\2\fsorting\16comparators\1\0\0\0\norder\vlength\14sort_text\tkind\nunder\25cmp-under-comparator\nscore\nexact\voffset\fcompare\vconfig\15formatting\vformat\1\0\0\tmenu\1\0\3\tpath\v[Path]\rnvim_lsp\n[LSP]\vbuffer\r[Buffer]\1\0\2\rmaxwidth\3(\14with_text\2\15cmp_format\fsources\1\0\2\19keyword_length\3\5\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\n<C-y>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\15cmp_buffer\flspkind\frequire\0" },
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-vinegar",
    url = "https://github.com/tpope/vim-vinegar"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/alex/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\2;\0\1\3\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\2\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim.\2\0\3\1\1\0\5-\0\0\0\18\1\0\0009\0\0\0G\2\0\0C\0\1\0\1À\21compare_locality¬\n\1\0\14\0G\0Œ\0016\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0026\2\0\0'\3\3\0B\2\2\0029\3\4\0025\4\b\0005\5\6\0003\6\5\0=\6\a\5=\5\t\0045\5\f\0009\6\n\0029\6\v\6B\6\1\2=\6\r\0059\6\n\0029\6\14\6B\6\1\2=\6\15\0059\6\n\0029\6\16\6)\aüÿB\6\2\2=\6\17\0059\6\n\0029\6\16\6)\a\4\0B\6\2\2=\6\18\0059\6\n\0029\6\19\6B\6\1\2=\6\20\0059\6\n\0029\6\21\6B\6\1\2=\6\22\0059\6\n\0029\6\23\0065\a\26\0009\b\24\0029\b\25\b=\b\27\aB\6\2\2=\6\28\5=\5\n\0044\5\5\0005\6\29\0>\6\1\0055\6\30\0>\6\2\0055\6\31\0>\6\3\0055\6 \0>\6\4\5=\5!\0045\5&\0009\6\"\0005\a#\0005\b$\0=\b%\aB\6\2\2=\6'\5=\5(\0045\0055\0004\6\n\0009\a)\0029\a*\a9\a+\a>\a\1\0069\a)\0029\a*\a9\a,\a>\a\2\0069\a)\0029\a*\a9\a-\a>\a\3\0066\a\0\0'\b.\0B\a\2\0029\a/\a>\a\4\0069\a)\0029\a*\a9\a0\a>\a\5\0069\a)\0029\a*\a9\a1\a>\a\6\0069\a)\0029\a*\a9\a2\a>\a\a\0069\a)\0029\a*\a9\a3\a>\a\b\0063\a4\0>\a\t\6=\0066\5=\0057\0045\0058\0=\0059\4B\3\2\0016\3\0\0'\4:\0B\3\2\0025\4;\0006\5<\0\18\6\4\0B\5\2\4X\b\17€8\n\t\0039\n\4\n5\v>\0005\f=\0=\f?\v6\f\0\0'\r@\0B\f\2\0029\fA\f6\rB\0009\rC\r9\rD\r9\rE\rB\r\1\0A\f\0\2=\fF\vB\n\2\1E\b\3\3R\bí2\0\0€K\0\1\0\17capabilities\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\vassist\1\0\0\1\0\2\17importPrefix\fby_self\22importGranularity\vmodule\vipairs\1\2\0\0\18rust_analyzer\14lspconfig\17experimental\1\0\2\16native_menu\1\15ghost_text\2\fsorting\16comparators\1\0\0\0\norder\vlength\14sort_text\tkind\nunder\25cmp-under-comparator\nscore\nexact\voffset\fcompare\vconfig\15formatting\vformat\1\0\0\tmenu\1\0\3\tpath\v[Path]\rnvim_lsp\n[LSP]\vbuffer\r[Buffer]\1\0\2\rmaxwidth\3(\14with_text\2\15cmp_format\fsources\1\0\2\19keyword_length\3\5\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\n<C-y>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-space>\rcomplete\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\15cmp_buffer\flspkind\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2…\2\0\0\6\0\16\0\0216\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\0015\2\a\0005\3\6\0=\3\b\0024\3\3\0005\4\t\0005\5\n\0=\5\v\4>\4\1\3=\3\f\0025\3\r\0=\3\14\2=\2\15\1B\0\2\1K\0\1\0\rsections\14lualine_y\1\2\0\0\rfiletype\14lualine_x\fsources\1\2\0\0\rnvim_lsp\1\2\0\0\16diagnostics\14lualine_b\1\0\0\1\3\0\0\vbranch\tdiff\foptions\1\0\0\1\0\2\18icons_enabled\1\ntheme\tauto\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: colorbuddy.nvim
time([[Config for colorbuddy.nvim]], true)
try_loadstring("\27LJ\2\0028\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15colorbuddy\frequire\0", "config", "colorbuddy.nvim")
time([[Config for colorbuddy.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
