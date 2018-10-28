" Basic stuff
set nocompatible

silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()

set backupdir=$TMPDIR,~/.vim-tmp,~/.tmp
set directory=$TMPDIR,~/.vim-tmp,~/.tmp

" visual
set scrolloff=3
set ruler
"set number
set laststatus=2
set hlsearch
set incsearch
set showcmd
set foldcolumn=1
syntax enable
colorscheme vividchalk
set hidden

set shortmess=atI
"
set visualbell

" maps
map Q gq
map <leader>tt :TlistToggle<CR>

"auto-completion
imap <S-Tab> <C-N>

" formatting
"set ts=2
"set bs=2
set shiftwidth=2
set smarttab
set expandtab

if has("autocmd")
  filetype plugin on

else
  set autoindent

endif

"gist plugin
let g:gist_show_privates = 1
let g:gist_clip_command = 'pbcopy'

"vcscommand
let VCSCommandEnableBufferSetup=1
set statusline=%<%f\ %y\ %{VCSCommandGetStatusLine()}\ %h%m%r%=%l,%c%V\ %L\(%P\)

"NERDTree
let NERDTreeIgnore=['\~$','\.o$','\.rbc$']

"powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

