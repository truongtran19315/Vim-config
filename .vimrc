" VIM Configuration File
" Description: Optimized for Linux Kernel C development, aligned with professional dev standards.
" Author: Gerhard Gappmeier (Enhanced by ChatGPT)

" ============================
" Encoding and Compatibility
" ============================
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set nocompatible

" ============================
" Indentation Settings
" ============================
set autoindent
set smartindent
set tabstop=8        " Linux kernel uses 8-space tabs
set shiftwidth=8
set noexpandtab      " Use actual tab characters
set softtabstop=0

" ============================
" Display Settings
" ============================
set textwidth=0      " No automatic line wrapping
set wrapmargin=0
set nowrap
set number
set relativenumber
set cursorline
set showmatch
set t_Co=256
syntax on
" colorscheme desert (common choice, change as preferred)
colorscheme desert

" ============================
" Filetype and Plugins
" ============================
filetype plugin indent on
set modeline

" ============================
" Enable Mouse Support
" ============================
set mouse=a

" ============================
" Search Settings
" ============================
set ignorecase
set smartcase
set incsearch
set hlsearch

" ============================
" Backup and Swap Files
" ============================
set backup
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set undofile

" ============================
" Split Window Settings
" ============================
set splitright
set splitbelow

" ============================
" Enable Plugins (Using vim-plug)
" ============================
" Ensure vim-plug is installed. If not, install it using:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

" Code Completion and Navigation
Plug 'vim-syntastic/syntastic'             " Syntax checking
Plug 'scrooloose/nerdtree'                 " File explorer
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'kien/ctrlp.vim'                      " Alternative fuzzy finder
Plug 'preservim/tagbar'                    " Tag viewer
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'preservim/nerdcommenter'             " Easy commenting
Plug 'tpope/vim-fugitive'                  " Git integration
Plug 'airblade/vim-gitgutter'              " Git diff in the gutter
Plug 'vim-scripts/DoxygenToolkit.vim'      " Doxygen comments
Plug 'google/vim-maktaba'                  " Advanced help system

" Cscope Integration
Plug 'vim-scripts/cscope_maps.vim'

" ============================
" Initialize Plugins
" ============================
call plug#end()

" ============================
" Ctags and Cscope Configuration
" ============================

" Configure ctags for Linux kernel
set tags+=~/.vim/tags/kern
" Generate ctags with specific options for the kernel
" Command to generate tags:
" ctags -R --c-kinds=+p --fields=+iaS --extra=+q --exclude=.git --exclude=out

" Enable cscope
if has("cscope")
    set cscopequickfix=s-,c-,d-,i-,t-
    cs add ~/.vim/cscope.out
    set csto=0
    set cst
    set nocsverb
endif

" ============================
" Key Mappings
" ============================

" Save file with F2
nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>i

" Switch between header/source with F4
nnoremap <F4> :A<CR>

" Recreate tags file with F5
nnoremap <F5> :!ctags -R --c-kinds=+p --fields=+iaS --extra=+q .<CR>

" Create Doxygen comment with F6
nnoremap <F6> :Dox<CR>

" Build using makeprg with F7 and Shift-F7
nnoremap <F7> :make<CR>
nnoremap <S-F7> :make clean all<CR>

" Goto definition with F12
nnoremap <F12> <C-]>

" Toggle NERDTree with <Leader>n
nnoremap <Leader>n :NERDTreeToggle<CR>

" Open Tagbar with <Leader>t
nnoremap <Leader>t :TagbarToggle<CR>

" Git status with <Leader>g
nnoremap <Leader>g :Git<CR>

" ============================
" Plugin Configurations
" ============================

" Syntastic Configuration
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_c_checkers = ['gcc']
let g:syntastic_enable_sign_column = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDTree Configuration
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

" FZF Configuration
set rtp+=~/.fzf
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>g :GFiles<CR>

" Tagbar Configuration
let g:tagbar_width = 30
let g:tagbar_autofocus = 1

" GitGutter Configuration
let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0
nmap <Leader>hs :GitGutterStageHunk<CR>
nmap <Leader>hr :GitGutterResetHunk<CR>

" ============================
" Linux Kernel Coding Style
" ============================

" Enforce Linux kernel coding style using vim's built-in indentation
au BufNewFile,BufRead *.c,*.h setlocal expandtab shiftwidth=8 softtabstop=0 tabstop=8
setlocal textwidth=0
setlocal noautoindent
setlocal cindent

" Optional: Use 'linux' style with editorconfig or specific vim settings
" For example, using 'setcindent' with appropriate cin options
set cinoptions=:0,p0,t0

" ============================
" Additional Commands
" ============================

" Reload VIM configuration without restarting
command! ReloadConfig source $MYVIMRC

" ============================
" Custom Functions
" ============================

" Function to switch between .c and .h files
function! SwitchSourceHeader()
    let l:filename = expand('%:t')
    if l:filename =~ '\.c$'
        execute 'edit ' . substitute(l:filename, '\.c$', '.h', '')
    elseif l:filename =~ '\.h$'
        execute 'edit ' . substitute(l:filename, '\.h$', '.c', '')
    endif
endfunction
nnoremap <F4> :call SwitchSourceHeader()<CR>

" ============================
" Cscope Configuration (Optional)
" ============================
if has("cscope")
    " Add multiple cscope databases
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    if filereadable("/usr/include/cscope.out")
        cs add /usr/include/cscope.out
    endif
    " Key mappings for cscope
    nnoremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
    nnoremap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
endif

" ============================
" Leader Key Configuration
" ============================
let mapleader = ","
let maplocalleader = ","

" ============================
" Spell Check (Optional for Documentation)
" ============================
if &diff
    " Diff mode settings remain unchanged
    map <M-Down> ]c
    map <M-Up> [c
    map <M-Left> do
    map <M-Right> dp
    map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
else
    " Spell settings
    setlocal spell spelllang=en
    set spellfile=~/.vim/spellfile.add
    map <M-Down> ]s
    map <M-Up> [s
endif