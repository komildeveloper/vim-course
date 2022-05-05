call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'airblade/vim-rooter'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-unimpaired'
Plug 'jiangmiao/auto-pairs'

Plug 'mattn/emmet-vim'

Plug 'sheerun/vim-polyglot'
Plug 'mhinz/vim-startify'

Plug 'tomasiser/vim-code-dark'

Plug 'psliwka/vim-smoothie'
Plug 'luochen1990/rainbow'
Plug 'editorconfig/editorconfig-vim'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let mapleader = ' '

set iskeyword+=-                        " treat dash separated words as a word text object"

syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set whichwrap+=<,>,[,],h,l
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                   " The encoding written to file
set ruler                               " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set relativenumber                      " Line numbersy
set number                              " Line numbers
set showtabline=2                       " Always show tabs
set backspace=2                         " Backspace deletes like most programs in insert mode
" set noshowmode                          " We don't need to see things like -- INSERT -- anymore
" set nobackup                            " This is recommended by coc
" set nowritebackup                       " This is recommended by coc
set showcmd                             " display incomplete commands
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
" set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300                      " Faster completion
set timeoutlen=300                     " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set t_Co=256                            " Support 256 colors
set t_ut=
set termguicolors
set cursorline
set incsearch
set hlsearch
set path+=**
set wildmenu
set undodir=.undo/,~/.undo/,/tmp//
set undofile

" let g:user_emmet_install_global = 1
" let g:user_emmet_complete_tag = 1

set nocompatible
" filetype indent off
filetype plugin indent on

if has('termguicolors')
  set termguicolors
endif

set background=dark                     " tell vim what the background color looks like
colorscheme codedark
let g:codedark_italics = 1

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal formatoptions-=ro
augroup END

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" set statusline=%f         " Path to the file

set statusline=\ %4\f         " Path to the file
set statusline+=\ %4\y
set statusline+=%=Col:\ %-2c\ Line:\%l/\%-4\L

" set statusline+=%=        " Switch to the right side
" set statusline+=%y
" set statusline+=Col:\ %4\c
" set statusline+=%=Current:\ %-4l\ Total:\ %-4L
" set statusline+=%l        " Current line
" set statusline+=/         " Separator
" set statusline+=%L        " Total lines
" set statusline+=%F\ %l\:%c
" set statusline+=%F\ Line:\ %l:\%L\ Col:\ %c
" set statusline+=%=Line:\%l/\%L

let g:rainbow_active = 1

if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let NERDTreeShowHidden=1

" vim-devicons
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable = 0
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_airline_statusline = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

let g:webdevicons_conceal_nerdtree_brackets = 0
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" " Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'codedark'

" autocmd FileType nerdtree setlocal nolist

nmap <silent> <S-L> :bnext<CR>
nmap <silent> <S-H> :bprevious<CR>

" resize windows w/ ctrl&arrow keys
nnoremap <silent> <C-Down>    :resize -1<CR>
nnoremap <silent> <C-Up>  :resize +1<CR>
nnoremap <silent> <C-Right>  :vertical resize -2<CR>
nnoremap <silent> <C-Left> :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <C-c>
inoremap kj <C-c>
inoremap kk <C-c>
inoremap jj <C-c>

" TAB in general mode will move to text buffer
" nnoremap <TAB> :tabn<CR>
" SHIFT-TAB will go back
" nnoremap <S-TAB> :tabp<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <silent> <Leader>c :bd<CR>
nnoremap <silent> <Leader>w :w<CR>

" FZF
let g:fzf_command_prefix = 'Fzf'
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

nnoremap <silent> <C-p> :FzfFiles<CR>
nnoremap <silent> <Leader>b :FzfBuffers<CR>
nnoremap <silent> <Leader>f :FzfRg<CR>
nnoremap <silent> <Leader>' :FzfMarks<CR>
nnoremap <silent> <Leader>h :FzfHistory<CR>

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Space not working in normal mode
nnoremap <silent> <Space> :noh<CR>

function! StartifyEntryFormat()
  return luaeval(
          \ "require('nvim-web-devicons').get_icon(vim.fn.fnamemodify(' " .. absolute_path .. "', ':e')) or ' '"
          \ ) . " " . entry_path
endfunction

let g:user_emmet_mode='a'    "enable all function in all mode.

let g:user_emmet_settings = {
\  'variables': {'lang': 'en'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."\t<meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\" />\n"
\              ."\t<title>Document</title>\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}
