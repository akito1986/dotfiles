" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged') 
  Plug 'tomasr/molokai'
    let g:molokai_original = 1
  Plug 'scrooloose/syntastic'
    let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['ruby'] }
    let g:syntastic_ruby_checkers = ['rubocop']
  Plug 'tpope/vim-endwise'
  Plug 'nathanaelkane/vim-indent-guides'
    let g:indent_guides_auto_colors = 0
    let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=darkblue ctermbg=239
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkred ctermbg=243
call plug#end()

colorscheme default
set background=dark
set encoding=utf-8
set tabstop=2
set number
set shiftwidth=2
set autoindent
set expandtab
set cursorline

noremap <C-l> :SyntasticCheck
