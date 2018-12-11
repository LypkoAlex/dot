call plug#begin()
Plug 'scrooloose/nerdtree',                       { 'commit' : '334fb0e68797cf56d17db42bf56f39030f226cf8' }
Plug 'scrooloose/nerdcommenter',
Plug 'bling/vim-airline',
Plug 'tpope/vim-fugitive',
Plug 'airblade/vim-gitgutter',
Plug 'bronson/vim-trailing-whitespace',
Plug 'w0rp/ale',
Plug 'junegunn/vim-easy-align',
Plug 'terryma/vim-multiple-cursors',
Plug 'maksimr/vim-jsbeautify',  { 'do' : 'git submodule update --init --recursive && npm install' }
Plug 'tpope/vim-surround',
Plug 'elzr/vim-json',
Plug 'othree/yajs.vim',
Plug 'othree/javascript-libraries-syntax.vim',
Plug 'moll/vim-node',
Plug 'syngan/vim-vimlint',
Plug 'ynkdir/vim-vimlparser',
Plug 'NLKNguyen/papercolor-theme',
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim',
Plug 'Xuyuanp/nerdtree-git-plugin',
Plug 'trusktr/seti.vim',
call plug#end()

" ------------------NerdTree-------------------------
  let g:NERDTreeWinPos = "right"
  let NERDTreeMinimalUI = 1
  let NERDTreeDirArrows = 1
  let g:NERDTreeDirArrowExpandable = '▸'
  let g:NERDTreeDirArrowCollapsible = '▾'
  let g:NERDTreeShowIgnoredStatus = 1

 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" [> NERDCommenter <]
"
 noremap <c-_> :call NERDComment(0, "Toggle")<cr>

" ------------------ ALE ------------------------------------------
  let g:ale_set_highlights = 0
  let g:ale_sign_error = '✖'
  let g:ale_sign_warning = '⚠'
  let g:ale_statusline_format = ['⨉ %d', '⚠ %d','⬥ ok']
  let g:ale_javascript_eslint_executable  = 'eslint'
  let g:ale_sign_column_always = 1
  let g:ale_emit_confilct_warnings = 0
  let g:ale_set_quickfix = 0
  let g:ale_set_loclist = 0
  let g:ale_max_signs = 250
  let g:ale_open_list = 'on_save'
  let g:ale_echo_delay = 25
  let g:ale_line_delay = 500
  nmap <silent> <C-k> <Plug>(ale_previous_wrap)
  nmap <silent> <C-j> <Plug>(ale_next_wrap)
  let g:ale_linters = {'javascript': ['eslint']}


 " let $FZF_DEFAULT_COMMAND = 'rg --files -uuuL --glob `!.git/*`'
 " -------------- FZF -----------------
 let FZF_DEFAULT_COMMAND='(git ls-tree -r --name-only HEAD || find . -path "*/\.*" -prune -o -type f -print -o -type l -print | sed s/^..//) 2> /dev/null'
  nnoremap <C-f> :FZF<cr>

" ------------------- Settings ----------------------------------
  " hardcode mode
    inoremap jk <esc>
    inoremap <special> <esc> <nop>
    inoremap <esc>^[ <esc>^[
    nnoremap <up> <nop>
    nnoremap <down> <nop>
    nnoremap <left> <nop>
    nnoremap <right> <nop>

    inoremap <down> <nop>
    inoremap <up> <nop>
    inoremap <left> <nop>
    inoremap <right> <nop>
  " wrap end of line
  set wrap

  " show line numbers
  set number

  " syntax highlighting
  syntax on
  set background=dark
  set t_Co=256
  colorscheme PaperColor

  " indent
  set smartindent
  set autoindent
  set copyindent
  set shiftwidth=4
  set shiftround
  set backspace=indent,eol,start
  set smarttab
  set expandtab

  set mouse=a

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " => Text, tab and indent related
  " """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " " Use spaces instead of tabs
   set expandtab
  "
  " " Be smart when using tabs ;)
  set smarttab
  "
  " " 1 tab == 4 spaces
  set shiftwidth=2
  set tabstop=2
  "
  " " Linebreak on 500 characters
  set lbr
  set tw=500
  "
  set ai "Auto indent
  set si "Smart indent
  set wrap "Wrap lines
  "
  " " more natural split behavior
  set splitbelow
  set splitright

  "------------------ Keys --------------------------------------

  " leader
  let g:mapleader = ","
  let g:localmapleader = "\\"

  " move the current line below
  nnoremap <leader>- ddp

  " move the current line above
  nnoremap <leader>_ ddkP
  " copy-paste
  map <C-c> y:call system("pbcopy", getreg("\""))<CR>
  nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>p

  " Wrap a word in double quotes
    nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

  " Wrap a word in single quotes
  nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
