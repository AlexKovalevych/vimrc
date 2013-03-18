 "set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required!
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'kchmck/vim-coffee-script.git'
 Bundle 'tpope/vim-fugitive'
 "Bundle 'Lokaltog/vim-easymotion'
 Bundle 'tpope/vim-unimpaired'
 Bundle 'tsaleh/vim-align'
 "Bundle 'kien/ctrlp.vim'
 Bundle 'Lokaltog/vim-powerline'
 Bundle 'majutsushi/tagbar'
 Bundle 'gregsexton/gitv'
 Bundle 'scrooloose/nerdcommenter'
 "Bundle 'Shougo/neocomplcache'
 Bundle 'mattn/webapi-vim'
 Bundle 'mattn/gist-vim'
 Bundle 'ervandew/supertab'
 Bundle 'scrooloose/nerdtree'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-surround'
 "Bundle 'altercation/vim-colors-solarized'
 Bundle 'vim-scripts/mru.vim'
 Bundle 'MarcWeber/vim-addon-mw-utils'
 Bundle 'tomtom/tlib_vim'
 Bundle "honza/snipmate-snippets"
 Bundle 'garbas/vim-snipmate'
 Bundle 'tmhedberg/matchit'
 Bundle 'sr/Mustang2'
 Bundle 'davidoc/taskpaper.vim'
 Bundle 'stephpy/vim-php-cs-fixer'
 Bundle 'vim-scripts/taglist.vim'
 Bundle 'rjn945/python.vim'
 Bundle 'nathanaelkane/vim-indent-guides'
 Bundle 'airblade/vim-gitgutter'
 "Bundle 'shawncplus/php.vim'
 "Bundle 'chilicuil/conque'
 "Bundle 'svenfuchs/vim-layout'
 "Bundle 'tpope/vim-pathogen'
 "Bundle 'svenfuchs/vim-todo'
 "Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 "Bundle 'git://git.wincent.com/command-t.git'
 Bundle 'beyondwords/vim-twig'
 Bundle 'therubymug/vim-pyte'
 Bundle 'cbtlsl/vim-colorschemes'
 "Bundle 'davidhalter/jedi-vim'
 Bundle 'AlexKovalevych/gentooish-phd'
 "Bundle 'veloce/vim-behat'
 "Bundle 'jabapyth/vim-debug'
 Bundle 'groenewege/vim-less'
 Bundle 'vim-scripts/AutoTag'
 Bundle 'arnaud-lb/vim-php-namespace'
 Bundle 'docteurklein/vim-symfony'
 " ...

 filetype plugin indent on     " required!

 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

colors gentooish+phd
"colors proton
:set guifont=Monaco:h14
:set guioptions=egmrt
:set number "Включить номера строк
:set hlsearch "Подсветка поиска
:set incsearch
:set nofoldenable
:set paste
":set hidden "Не выгружать буффер при переключении на другую вкладку
":set ruler<
":set cursorline
":set cursorcolumn
:set scrolljump=7
:set scrolloff=7
:set visualbell
:set tabstop=4 shiftwidth=4 expandtab
:set laststatus=2
":set statusline=%F%m%r%h%w\ [%Y/%{&ff}]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
:set noswapfile
:set ttyfast " u got a fast terminal
:set ttyscroll=3
:set lazyredraw " to avoid scrolling problems
:set synmaxcol=0
:set wildignore=*.o,*~,*.pyc

autocmd! bufwritepost $MYVIMRC source $MYVIMRC
autocmd BufWritePre * :%s/\s\+$//e

"Mappings
nmap <C-d> dd
imap <C-d> <esc>ddi
imap <C-S-Down> <esc>yypi
nmap <silent> <C-s> :%s/^\s\+$//g<cr><esc>:w<cr>
vmap <silent> <C-s> <esc>:%s/^\s\+$//g<cr><esc>:w<cr>i
imap <silent> <C-s> <esc>:%s/^\s\+$//g<cr><esc>:w<cr>i
nmap <C-z> u
imap <C-z> <esc>ui
map <C-o> <esc>:browse tabnew<CR>
noremap <C-n> :tabnew<CR>
nmap <C-q> g,
imap <C-q> <esc>g,i
vmap <C-q> <esc>g,i
nmap <C-Left> <C-w><Left>
nmap <C-Right> <C-w><Right>
nmap <C-Down> <C-w><Down>
nmap <C-Up> <C-w><Up>
nmap <S-Left> v<S-Left>
nmap <S-Right> v<S-Right>
imap <S-Left> <esc>v<S-Left>
imap <S-Right> <esc><Right>v<S-Right>
map <Down> gj
map <Up> gk
map <C-Tab> <esc>:tabn<CR>
imap <C-Tab> <esc>:tabn<CR>
map <C-S-Tab> <esc>:tabp<CR>
imap <C-S-Tab> <esc>:tabp<CR>
map <C-a> <esc>ggvG<End>
map <C-c> <leader>c<space>
map <C-f> :tabnew \| FufFile<CR>

"Netrw
let g:netrw_liststyle=1
let g:netrw_menu=1
let g:netrw_list_hide= '(.*\.swp$|^.DS_Store$)'
let g:netrw_keepdir=0
let g:netrw_cursor=2
let g:netrw_browse_split = 3
let g:netrw_altv = 1

"Supertab
let g:SuperTabContextDefaultCompletionType = "<Tab>"

"Snipmate
let g:snips_trigger_key = "<C-Space>"

"MRU
let MRU_Max_Entries = 1000
let MRU_Auto_Close = 0

"FuzzyFinder
let g:fuf_keyOpenTabpage = "t"

"Gist
let g:gist_detect_filetype = 1
let g:gist_clip_command = 'pbcopy'

"PHP
let php_sql_query = 1
let php_htmlInStrings = 1
let php_baselib = 1
let php_alt_comparisons = 0
let php_alt_assignByReference = 0
let php_large_file = 0

"PHPCS
let g:php_cs_fixer_path = "/opt/local/bin/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "all"                " which level ?
let g:php_cs_fixer_config = "default"           " configuration
let g:php_cs_fixer_php_path = "php"             " Path to PHP
let g:php_cs_fixer_fixers_list = ""             " List of fixers
let g:php_cs_fixer_enable_default_mapping = 0   " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                  " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                  " Return the output of command if 1, else an inline information.
nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

"Taglist
let Tlist_Ctags_Cmd='/opt/local/bin/ctags'

"NERDTree
let NERDTreeIgnore = ['\.pyc$']

"Jedi
"let g:jedi#auto_initialization = 1
"let g:jedi#popup_on_dot = 1
"let g:jedi#goto_command = "<leader>g"
"let g:jedi#get_definition_command = "<leader>d"
"let g:jedi#related_names_command = "<leader>n"
"let g:jedi#rename_command = "<leader>r"
"let g:jedi#pydoc = "K"

"vim-indent-guides
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

"Symfony
let g:symfony_app_console_path= "app/console"
