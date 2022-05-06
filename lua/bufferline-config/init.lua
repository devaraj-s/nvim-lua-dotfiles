vim.opt.termguicolors = true
require("bufferline").setup{}
vim.cmd[[

nnoremap <silent><TAB> :BufferLineMoveNext<CR>
nnoremap <silent><S-TAB> :BufferLineMovePrev<CR>

]]
