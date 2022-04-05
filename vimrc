let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

syntax on
filetype plugin indent on
set clipboard=unnamedplus
set ts=2 sts=2 sw=2 et ai si
set nu rnu

call plug#begin()

Plug 'dracula/vim'
Plug 'gruvbox-community/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'mhinz/vim-startify'
Plug 'lifepillar/vim-mucomplete'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'bbrtj/vim-vorg-md'
Plug 'ryanoasis/vim-devicons'
Plug 'alvan/vim-closetag'

call plug#end()

set termguicolors
set bg=dark
colo dracula 

set completeopt+=menuone

let g:startify_padding_left = 45

let g:startify_custom_header = [
      \ '                                          ____        _ _   ____  _                _     __     _____ __  __ ',
      \ '                                         | __ ) _   _| | | / ___|| |__   __ _ _ __| | __ \ \   / /_ _|  \/  |',
      \ '                                         |  _ \| | | | | | \___ \|  _ \ / _  |  __| |/ /  \ \ / / | || |\/| |',
      \ '                                         | |_) | |_| | | |  ___) | | | | (_| | |  |   <    \ V /  | || |  | |',
      \ '                                         |____/ \__,_|_|_| |____/|_| |_|\__,_|_|  |_|\_\    \_/  |___|_|  |_|',
      \ '                                                        An aggresive blogging platform for VIM!              ',
      \ ]

let g:user_emmet_leader_key=','

inoremap <c-b> <Esc>:NERDTreeToggle<cr>
nnoremap <c-b> <Esc>:NERDTreeToggle<cr>

set guifont=DejaVuSansMono\ Nerd\ Font\ 10
let g:airline_powerline_fonts = 1
