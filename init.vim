" --- PLUGINS --- "

call plug#begin()
    Plug 'dracula/vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree'
    Plug 'mhinz/vim-startify'
    Plug 'dense-analysis/ale'
call plug#end()

silent! colorscheme dracula " theme loading

" --- ALE AUTO COMPL AND SYNT CHECK --- "

set omnifunc=ale#completion#OmniFunc
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
let g:ale_sign_error = ‘✗’
let g:ale_sign_warning = ‘’
let g:ale_fixers = {
    \ ‘*’: [‘remove_trailing_lines’, ‘trim_whitespace’],
    \ ‘rust’: [‘rustfmt’],
\}inoremap <silent><expr><TAB>
    \ pumvisible() ? “\<C-n>” : “\<TAB>”
nmap <silent> <YOUR PREFERRED KEY HERE> :ALEGoToDefinition<CR>
nmap <silent> <YOUR PREFERRED KEY HERE> :ALEFindReferences<CR>
nmap <silent> <YOUR PREFERRED KEY HERE> <Plug>(ale_previous_wrap)
nmap <silent> <YOUR PREFERRED KEY HERE> <Plug>(ale_next_wrap)

" --- BASICS SETTINGS --- "

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline

" --- AUTOMATIONS ---  "

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree 
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif

" --- KEYBIDING --- "

" nerd tree "
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
