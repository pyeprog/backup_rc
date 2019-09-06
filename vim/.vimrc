set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'unblevable/quick-scope'
Plugin 'davidhalter/jedi-vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'mileszs/ack.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'dense-analysis/ale'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'Shougo/vimproc.vim'
Plugin 'idanarye/vim-vebugger'

call vundle#end()
filetype plugin indent on

syntax on
set nu
set smartindent
set cindent
set autoindent
set nobackup
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set expandtab
set nowrap
set hidden
set textwidth=120

colorscheme desert

let mapleader=" "

" Quick Html tag
imap << </

" Add new line above or below
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" NERDTree
map <leader>n :NERDTreeTabsToggle<CR>
map <leader><leader>n :NERDTreeFind<CR>
let g:NERDTreeChDirMode=2

" CtrlP
let g:ctrlp_map='<leader>p'
let g:ctrlp_cmd='CtrlPMixed'

" EasyMotion
let g:EasyMotion_do_mapping=0
" Turn on case insensitive feature
let g:EasyMotion_smartcase=1
" JK motions: Line motions
let g:EasyMotion_startofline=1
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
nmap <Leader><Leader>s <Plug>(easymotion-overwin-f2)

" Autoformat
nmap <Leader>== :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" Jedi
let g:jedi#goto_command = "<C-]>"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<Leader>su"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<Leader>rn"
let g:jedi#auto_vim_configuration = 0
set completeopt=menuone,longest

" Custom
nnoremap <up> :bp<cr>
nnoremap <down> :bn<cr>
nnoremap <left> :tabp<cr>
nnoremap <right> :tabn<cr>

" Ack
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
nnoremap <Leader>f :Ack<Space>
let g:ack_autoclose=1

" Ale
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['flake8']
\}
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" git fugitive
nnoremap <Leader>bl :Gblame<cr>

" auto save
let g:auto_save = 1
let g:auto_save_silent = 1

" vebugger
nnoremap <Leader><Leader>d :VBGstartPDB 
nnoremap <Leader><Leader>b :VBGtoggleBreakpointThisLine<cr>
nnoremap <Leader><Leader>e :VBGeval 
nnoremap <Leader>se :VBGevalWordUnderCursor<cr>
nnoremap <F9> :VBGcontinue<cr>
nnoremap <F8> :VBGstepOver<cr>
nnoremap <F7> :VBGstepIn<cr>
nnoremap <F6> :VBGstepOut<cr>
nnoremap <F1> :VBGkill<cr>
