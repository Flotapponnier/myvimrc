" ===== General Settings =====
set number                  " Show line numbers
set relativenumber          " Show relative numbers
set autoindent              " Auto indentation
set tabstop=4               " Number of spaces a tab counts for
set shiftwidth=4            " Number of spaces to use for autoindent
set expandtab               " Use spaces instead of tabs
set cursorline              " Highlight current line
set mouse=a                 " Enable mouse support
set clipboard=unnamedplus   " Use system clipboard

" ===== Appearance =====
set background=dark         " Dark background
syntax on                   " Enable syntax highlighting

if has("termguicolors")
    set termguicolors       " True color support
endif

set t_Co=256                " 256 color support fallback

" ===== Color scheme =====
colorscheme desert          " Use a colorful dark theme

" ===== Compile + Run with GDB =====
nnoremap <F5> :call CompileRunGdb()<CR>

function! CompileRunGdb()
    let filename = expand('%:r')
    let cmd = 'gcc -g ' . expand('%') . ' -o ' . filename
    echo system(cmd)
    let cmd = 'gdb -q ./' . filename
    echo system(cmd)
endfunction
