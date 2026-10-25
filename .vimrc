" 1. GENERAL SETTINGS

syntax on
set encoding=utf-8
set fileencoding=utf-8
set number
set relativenumber
set mouse=a
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set breakindent
set wrap
set laststatus=2
set termguicolors
set background=dark
filetype plugin indent on
set undofile
set ignorecase
set smartcase
set incsearch
set hlsearch
set cmdheight=1
set updatetime=300

" 2. INSERT MODE MAPPINGS

let mapleader = " "
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ` ``<Left>
inoremap { {}<Left>

inoremap jk <Esc>
inoremap jj <Esc>

" 3. NORMAL MODE MAPPINGS

nnoremap L :tabnext<CR>
nnoremap H :tabprevious<CR>
nnoremap <A-r> <C-r>

" 4. PLUGINS

if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
    source ~/.vim/fzf.vim
endif

let g:airline_extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'
let g:lsp_inlay_hints_enabled = 1
let g:coc_inlay_hints = 0
autocmd VimEnter * silent! call CocAction('disableInlayHints')
colorscheme onedark

" 5. HIGHLIGHT
highlight CocErrorSign ctermfg=Red guifg=#ff0000
highlight CocWarningSign ctermfg=Brown guifg=#ffaa00

let g:UltiSnipsExpandTrigger="<Nop>"

let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#confirm() :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <silent><expr> <Down> coc#pum#visible() ? coc#pum#next(1) : "\<Down>"
inoremap <silent><expr> <Up>   coc#pum#visible() ? coc#pum#prev(1) : "\<Up>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

highlight CocPumMenu ctermbg=235 guibg=#2c313c
highlight CocPumSearch ctermfg=4 guifg=#61afef

augroup VimrcTerminalPos
    autocmd!
    autocmd TerminalOpen * wincmd L
augroup END

" Kursor garis tipis saat Insert Mode
let &t_SI = "\<Esc>[5 q"

" Kursor blok saat Normal Mode
let &t_EI = "\<Esc>[2 q"
