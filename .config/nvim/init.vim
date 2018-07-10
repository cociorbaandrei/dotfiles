call plug#begin()
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'brooth/far.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'mhartington/oceanic-next'
let g:airline#extensions#tabline#enabled = 1
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()
let g:deoplete#enable_at_startup = 1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:airline_theme='oceanicnext'
" Theme
syntax enable
colorscheme OceanicNext
:imap jj <Esc>
map <C-a> <ESC>^
imap <C-a> <ESC>I
map <C-e> <ESC>$
imap <C-e> <ESC>A
inoremap <M-f> <ESC><Space>Wi
inoremap <M-b> <Esc>Bi
inoremap <M-d> <ESC>cW
set clipboard=unnamedplus
:tnoremap <C-Left> <C-\><C-N><C-w>h
:tnoremap jj <C-\><C-n>
:tnoremap <C-Down> <C-\><C-N><C-w>j
:tnoremap <C-Up> <C-\><C-N><C-w>k
:tnoremap <C-Right> <C-\><C-N><C-w>l
:inoremap <C-Left> <C-\><C-N><C-w>h
:inoremap <C-Down> <C-\><C-N><C-w>j
:inoremap <C-Up> <C-\><C-N><C-w>k
:inoremap <C-Right> <C-\><C-N><C-w>l
:nnoremap <C-Left> <C-w>h
:nnoremap <C-Down> <C-w>j
:nnoremap <C-Up> <C-w>k
:nnoremap <C-Right> <C-w>l
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader>f :CtrlPMRUFiles<CR>
set showmatch
set number
set formatoptions +=o
set expandtab
set tabstop=4
set shiftwidth=4
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.
if !&scrolloff
    set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
    set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
let mapleader="\<SPACE>"
" Relative numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
    set number
  else
    set rnu
  endif
endfunc

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>
:call NumberToggle()
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
