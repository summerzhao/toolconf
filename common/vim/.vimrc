set t_Co=256
" ============================================ Basic Settings =======================================
syntax on
colorscheme desert

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set hlsearch
set number

set smartindent
set autoindent

set showtabline=2
set tabpagemax=15

set foldmethod=manual
set foldnestmax=5
set nofoldenable
set foldlevel=1

" the following map to make move between windows more easy!
set winminheight=0
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <c-w>h
nmap <C-l> <c-w>l


" following key maps will make increase/decrease the width/height of window
" easier
nmap - <C-W>-
nmap = <C-W>+
nmap _ 5<C-W><
nmap + 5<C-W>>

" =============== Nerd Tree Command Mappings ===================

" Map :NERDTree to :nav
command Nav execute "NERDTree"
ab nav Nav
" ===============FuzzyFinder command mappings ==================
" Map :FufBuffer to :fb
command Fb execute "FufBuffer"
ab fb Fb
" Map :FufFile to :ff
command Ff execute "FufFile"
ab ff Ff
" Map :FufDir to :fd
command Fd execute "FufDir"
ab fd Fd

" ============== Pig Latin Editor ==========================
augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END 

" ============== javacomplete plugin ==========================
setlocal omnifunc=javacomplete#Complete
setlocal completefunc=javacomplete#CompleteParamsInfo

" ============== eclim ===============================
set nocompatible
filetype plugin on
let g:EclimBrowser="firefox"

" ============== tagbar ==============================
command Outline execute "TagbarToggle"
ab outline Outline
