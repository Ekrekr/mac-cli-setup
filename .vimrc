" Thanks to https://github.com/jaylees14/dotfiles/blob/master/vim/.vimrc
" (plugins not needed due to mainly VSCode usage)
" ------------------------
" General Settings
" ------------------------
syntax on
set autoindent
set autoread
set backspace=indent,eol,start
set clipboard=unnamedplus
set completeopt-=preview
set encoding=utf-8
set expandtab
set formatoptions=tcqronj
set list
set listchars=tab:\|\ ,trail:▫
set nospell
set noswapfile
set nowrap
set noerrorbells
set novisualbell
set number
set relativenumber
set ruler
set smartindent
set softtabstop=2
set tabstop=2
set title
set updatetime=100

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" ------------------------
" General Key Bindings
" ------------------------
imap     jk        <Esc>
nnoremap tl        :tabnext<CR>
nnoremap th        :tabprev<CR>
nnoremap tt        :tabedit<Space>
nnoremap tn        :tabnew<Space>
nnoremap tm        :tabm<Space>
nnoremap td        :tabclose<CR>
nnoremap <space>   zz
map      <leader>c :nohlsearch<cr>

" ------------------------
" Colors
" ------------------------
set termguicolors
set background=dark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
highlight Search guibg=DeepPink4 guifg=White ctermbg=53 ctermfg=White