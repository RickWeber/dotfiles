-- leader
vim.g.mapleader = ' '

-- line numbering
vim.opt.number = true
vim.opt.rnu = true

-- indentation
vim.opt.expandtab = true
vim.opt.shiftwidth = 2

-- scrolling
vim.opt.scrolloff = 6
vim.opt.sidescrolloff = 8

-- line wrapping
vim.opt.tw = 80

-- spellcheck
vim.opt.spell = true
vim.opt.spelllang = 'en_us'

-- toggle spellcheck
vim.api.nvim_set_keymap('n', '<leader>sss', ':set nospell !<CR>', { noremap = true })

-- toggle search highlighting
vim.api.nvim_set_keymap('n', '<leader>hls', ':set invhls<CR>', { noremap = true })

-- open vimrc
vim.api.nvim_set_keymap('n', '<leader>vrc', ':tabnew ~/.config/nvim/init.lua<CR>', { noremap = true })

-- reload vimrc
vim.api.nvim_set_keymap('n', '<leader>vrr', ':luafile ~/.config/nvim/init.lua<CR>', { noremap = true })

-- open todo inbox
vim.api.nvim_set_keymap('n', '<leader>todo', ':tabnew ~/vimwiki/todo/inbox.wiki<CR>', { noremap = true })

-- save file
vim.api.nvim_set_keymap('n', '<leader>fs', ':w<CR>', { noremap = true })

-- spell check
vim.api.nvim_set_keymap('n', '<leader>sc', 'z=', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>sn', ']s', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>sp', '[s', { noremap = true })

-- maximize split
vim.api.nvim_set_keymap('n', '<leader>mmm', ':MaximizerToggle<CR>', { noremap = true })

-- switch between splits
vim.api.nvim_set_keymap('n', '<leader>w', '<C-w><C-w>', { noremap = true })

-- visual mode
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true })

-- skeleton files
vim.api.nvim_exec([[
  augroup skeleton
    autocmd!
    autocmd BufNewFile ~/Dropbox/vimwiki/diary/*.wiki 0r ~/.dotfiles/skeletons/diary.txt
    autocmd BufNewFile ~/Dropbox/vimwiki/diary/braindump/*.wiki 0r ~/.dotfiles/skeletons/braindump.txt
  augroup END
]], false)

-- scratch buffers
vim.api.nvim_set_keymap('n', '<leader>bsm', ':tabnew /tmp/scratch.md<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>bsp', ':tabnew /tmp/scratch.py<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>bsr', ':tabnew /tmp/scratch.R<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>bsj', ':tabnew /tmp/scratch.js<CR>', { noremap = true})

vim.api.nvim_set_keymap('n', '<leader>bss', ':tabnew /tmp/scratch.sh<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>bsc', ':tabnew /tmp/scratch.clj<CR>', { noremap = true })

-- copy to system clipboard
vim.api.nvim_set_keymap('n', '<leader>ccc', '"+y', { noremap = true })

-- copilot
vim.api.nvim_set_keymap('i', '<C-j>', '<cmd>lua require("copilot").expand()<CR>', { noremap = true, silent = true, expr = true })
vim.g.copilot_no_tab_map = true

-- vim-plug
vim.cmd [[packadd! packer.nvim]]

return require('packer').startup(function()
-- vimwiki
use { 'vimwiki/vimwiki' }

-- maximize split
use { 'szw/vim-maximizer' }

-- live preview markdown
use { 'shime/vim-livedown' }

-- snippets
use { 'SirVer/ultisnips' }
use { 'honza/vim-snippets' }

-- tpope plugins
use { 'tpope/vim-fireplace' }
use { 'tpope/vim-abolish' }
end)




--
--
--
--
-- set runtimepath^=~/.vim runtimepath+=~/.vim/after
--vim.cmd('set runtimepath^=~/.vim runtimepath+=~/.vim/after') -- For Neovim
-- let &packpath  = &runtimepath
--vim.cmd('let &packpath  = &runtimepath') -- For Neovim
-- source ~/.vimrc
--vim.cmd('source ~/.vimrc') -- For Neovim
-- run vimrc
-- vim -u vimrc



-- Define a function to toggle the appearance
--local original_guifont = vim.opt.guifont:get()
--local original_linespace = vim.opt.linespace:get()
--local original_guioptions = vim.opt.guioptions:get()

--function toggle_presentation_mode()
--  if vim.opt.guifont:get() == original_guifont then
--    vim.opt.guifont = 'FiraCode Nerd Font:h24'
--    vim.opt.linespace = 8
--    vim.opt.guioptions:remove('r')
--    vim.opt.guioptions:remove('l')
--    vim.opt.guioptions:remove('T')
--  else
--    vim.opt.guifont = original_guifont
--    vim.opt.linespace = original_linespace
--    vim.opt.guioptions:set(original_guioptions)
--  end
--end



-- Define the mapping to toggle presentation mode
--vim.api.nvim_set_keymap('n', '<leader>present', ':lua toggle_presentation_mode()<CR>', { noremap = true, silent = true })

