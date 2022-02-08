-- Install and set-up packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'changyuheng/color-scheme-holokai-for-vim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require('lualine').setup {
                options = { 
                    icons_enabled = false,
                    theme = 'auto' 
                },
                sections = {
                    lualine_b = {'branch', 'diff'},
                    lualine_x = {{'diagnostics', sources={'nvim_lsp'}}},
                    lualine_y = {'filetype'}
                }
            }
        end,
    }
    -- better netrw
    use 'tpope/vim-vinegar'
    -- collection of configs for built-in LSP client
    use 'neovim/nvim-lspconfig'
    -- vscode-like pictograms in autocomplete
    use 'onsails/lspkind-nvim'
    -- VSCode snippet feature
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    -- LSP source for nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp'
    -- VS Code snippet completion source for nvim-cmp
    use 'hrsh7th/cmp-vsnip'
    -- filesystem path source for nvim-cmp
    use 'hrsh7th/cmp-path'
    -- buffer words source for nvim-cmp
    use 'hrsh7th/cmp-buffer'
    -- sort underline items last
    use 'lukas-reineke/cmp-under-comparator'
    -- add smart coloring to cmp text
    use {
        'tjdevries/colorbuddy.nvim',
        config = function()
            require('colorbuddy').setup()
        end
    }
    use {
        'hrsh7th/nvim-cmp',
        config = function()
            local lspkind = require('lspkind')
            local cmp_buffer = require('cmp_buffer')
            local cmp = require('cmp')
            cmp.setup {
                snippet = {
                    expand = function(args)
                        vim.fn["vsnip#anonymous"](args.body)
                    end
                },
                mapping = {
                    ['<C-p>'] = cmp.mapping.select_prev_item(),
                    ['<C-n>'] = cmp.mapping.select_next_item(),
                    -- Add tab support
                    --['<S-Tab>'] = cmp.mapping.select_prev_item(),
                    --['<Tab>'] = cmp.mapping.select_next_item(),
                    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.close(),
                    ['<C-y>'] = cmp.mapping.confirm({
                      behavior = cmp.ConfirmBehavior.Insert,
                      select = true,
                    })
                },
                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'vsnip' },
                    { name = 'path' },
                    { name = 'buffer', keyword_length = 5 }
                },
                formatting = {
                    format = lspkind.cmp_format({
                        with_text = true,
                        maxwidth = 40,
                        menu = {
                            buffer = "[Buffer]",
                            nvim_lsp = "[LSP]",
                            path = "[Path]",
                        }
                    })
                },
                sorting = {
                    comparators = {
                        cmp.config.compare.offset,
                        cmp.config.compare.exact,
                        cmp.config.compare.score,
                        require('cmp-under-comparator').under,
                        cmp.config.compare.kind,
                        cmp.config.compare.sort_text,
                        cmp.config.compare.length,
                        cmp.config.compare.order,
                        function (...) return cmp_buffer:compare_locality(...) end,
                    }
                },
                experimental = {
                    native_menu = false,
                    ghost_text = true
                }
            }

            -- nvim-cmp almost supports LSP's capabilities
            -- so let's use it.
            local nvim_lsp = require('lspconfig')
            local servers = { 'rust_analyzer' }
            for _, lsp in ipairs(servers) do
                nvim_lsp[lsp].setup {
                    assist = {
                        importGranularity = 'module',
                        importPrefix = 'by_self',
                    },
                    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
                }
            end
        end
    }

    if packer_bootstrap then
    	require('packer').sync()
    end
end)
