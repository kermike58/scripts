" Enable syntax highlighting
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on
autocmd BufRead,BufNewFile *.py_tmpl set filetype=python
autocmd BufRead,BufNewFile *.mako,*.mako_tmpl set filetype=html
autocmd BufRead,BufNewFile *.json set filetype=json
autocmd! FileType python setlocal nonumber
autocmd! FileType html,css,javascript,json setlocal tabstop=2 shiftwidth=2
" Define tab behavior
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set shiftround
" Define search behavior
set hlsearch
set incsearch
" Remap window movement keys
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l
" Remap tab movement keys
map <Leader>[ <esc>:tabprevious<CR>
map <Leader>] <esc>:tabnext<CR>
" Set plugin options: ctrlp
set wildignore+=*.pyc
set wildignore+=*_build/*
" Define hierarchical folds for goals
autocmd BufRead,BufNewFile *.goals set filetype=goals
autocmd! FileType goals setlocal smartindent foldmethod=expr foldexpr=(getline(v:lnum)=~'^$')?'=':((indent(v:lnum)<indent(v:lnum+1))?'>'.(indent(v:lnum+1)/&l:shiftwidth):indent(v:lnum)/&l:shiftwidth) foldtext=getline(v:foldstart) fillchars=fold:\ "
