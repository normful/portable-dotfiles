" vim: foldmethod=marker nowrap ts=4 sw=4 sts=4 et
" Author: Norman Sue
"
" NeoBundle Setup {{{1

if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Plugins {{{1

call neobundle#begin(expand('~/.vim/bundle/'))

" NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" NeoBundle Dependencies {{{2
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

" Color Schemes {{{2
NeoBundle 'flazz/vim-colorschemes'

" Relative and Absolute Line Numbers {{{2
NeoBundle 'myusuf3/numbers.vim'

" Indent Level Indicators {{{2
NeoBundle 'nathanaelkane/vim-indent-guides'

" Rainbow Parentheses {{{2
NeoBundle 'luochen1990/rainbow'

" Vimshell {{{2
" NeoBundle 'Shougo/vimshell.vim'

" UNIX commands {{{2
NeoBundle 'tpope/vim-eunuch'

" Asynchronous Dispatching {{{2
" NeoBundle 'tpope/vim-dispatch'

" File Explorers {{{2
" NeoBundle 'Shougo/vimfiler'
NeoBundle 'scrooloose/nerdtree'

" File Searching {{{2

" :cwd to Project Root {{{3
NeoBundle 'dbakker/vim-projectroot'
" NeoBundle 'airblade/vim-rooter'

" Searching within files {{{3

" Searching filenames {{{3
" NeoBundle 'junegunn/fzf'
" NeoBundle 'junegunn/fzf.vim'
" Note that 'kien/ctrlp.vim' is the original abandoned plugin
NeoBundle 'ctrlpvim/ctrlp.vim'

" NeoBundle 'vim-ctrlspace/vim-ctrlspace'
" NeoBundle 'rking/ag.vim'
" NeoBundle 'dkprice/vim-easygrep'

" Most Recently Used Files {{{2
NeoBundle 'yegappan/mru'

" Autoread fix for terminal vim  {{{2
NeoBundle 'djoshea/vim-autoread'

" Unite {{{2
NeoBundle 'mileszs/ack.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundleLazy 'osyo-manga/unite-airline_themes', {'autoload':{'unite_sources':'airline_themes'}}
NeoBundleLazy 'ujihisa/unite-colorscheme', {'autoload':{'unite_sources':'colorscheme'}}
NeoBundleLazy 'tsukkee/unite-tag', {'autoload':{'unite_sources':['tag','tag/file']}}
NeoBundleLazy 'Shougo/unite-outline', {'autoload':{'unite_sources':'outline'}}
NeoBundleLazy 'Shougo/unite-help', {'autoload':{'unite_sources':'help'}}
NeoBundleLazy 'Shougo/junkfile.vim', {'autoload':{'commands':'JunkfileOpen','unite_sources':['junkfile','junkfile/new']}}

" Sessions {{{2
" NeoBundle 'xolox/vim-session'
" NeoBundle 'tpope/vim-obsession'
" NeoBundle 'dhruvasagar/vim-prosession'

" Buffers {{{2
" NeoBundle 'fholgado/minibufexpl.vim'
NeoBundle 'vim-scripts/BufOnly.vim'

" File Navigation {{{2
" NeoBundle 'matchit.zip'

" Marks {{{2
" NeoBundle 'kshenoy/vim-signature'

" Undo tree {{{2
NeoBundle 'Gundo'

" Enhanced . repeat {{{2
NeoBundle 'tpope/vim-repeat'

" Paired mappings {{{2
NeoBundle 'tpope/vim-unimpaired'

" Comments {{{2
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'heavenshell/vim-jsdoc'

" Autocomplete {{{2
NeoBundle 'Shougo/neocomplete.vim'

" Autoend {{{2
NeoBundle 'tpope/vim-endwise'

" Auto shiftwidth and expandtab {{{2
NeoBundle 'tpope/vim-sleuth'

" Snippet Manager {{{2
" Option 1 {{{3
NeoBundle 'Shougo/neosnippet'
" Option 2 {{{3
" NeoBundle 'SirVer/ultisnips'
" Option 3 {{{3
" NeoBundle 'garbas/vim-snipmate'
" NeoBundle 'MarcWeber/vim-addon-mw-utils'
" NeoBundle 'tomtom/tlib_vim'

" Snippets {{{2
" For use with Options 1, 2, 3 in Snippet Manager {{{3
NeoBundle 'honza/vim-snippets'
" For use with Option 1 in Snippet Manager {{{3
" NeoBundle 'Shougo/neosnippet-snippets'

" Surround {{{2
NeoBundle 'tpope/vim-surround'

" Multiline Select {{{2
" NeoBundle 'terryma/vim-multiple-cursors'

" Region Select {{{2
NeoBundle 'terryma/vim-expand-region'

" Substitution and Typo Correction {{{2
NeoBundle 'tpope/vim-abolish'

" Word Usage {{{2
" NeoBundle 'reedes/vim-wordy'

" Character Info {{{2
" NeoBundle 'tpope/vim-characterize'

" Tables {{{2
NeoBundle 'dhruvasagar/vim-table-mode'
" NeoBundle 'godlygeek/tabular'

" Alignment {{{2
NeoBundle 'junegunn/vim-easy-align'

" Git {{{2
NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'idanarye/vim-merginal'
" NeoBundle 'gregsexton/gitv'
NeoBundle 'airblade/vim-gitgutter'

" .gitignore {{{2
NeoBundle 'gisphm/vim-gitignore'

" tmux {{{2
" NeoBundle 'tmux-plugins/vim-tmux'
" NeoBundle 'jpalardy/vim-slime'
" NeoBundle 'sjl/tslime.vim'
" NeoBundle 'jgdavey/tslime.vim'
" NeoBundle 'kovisoft/slimv'

" Concealing ANSI Escape Sequences {{{3
NeoBundle 'powerman/vim-plugin-AnsiEsc'

" Heroku {{{2
" NeoBundle 'tpope/vim-heroku'

" Databases {{{2
" NeoBundle 'vim-scripts/dbext.vim'

" Web APIs {{{2
NeoBundle 'mattn/webapi-vim'

" EditorConfig {{{2
" NeoBundle 'editorconfig/editorconfig-vim'

" LaTeX {{{2
" NeoBundle 'LaTeX-Suite-aka-Vim-LaTeX'

" Markdown and Pandoc {{{2
NeoBundle 'vim-pandoc/vim-pandoc'
NeoBundle 'vim-pandoc/vim-pandoc-syntax'
NeoBundle 'normful/vim-pandoc-syntax-after'

" reStructuredText {{{2
NeoBundle 'Rykka/riv.vim'

" Binary {{{2
NeoBundle 'ressu/hexman.vim'

" EBNF {{{2
NeoBundle 'vim-scripts/ebnf.vim'

" Thrift {{{2
NeoBundle 'solarnz/thrift.vim'

" C/C++ {{{2
NeoBundle 'vim-scripts/c.vim'
NeoBundle 'CRefVim'
NeoBundle 'vim-scripts/a.vim'

" Golang {{{2
NeoBundle 'fatih/vim-go'
" NeoBundle 'nsf/gocode', {'rtp': 'vim/'}
NeoBundle 'rjohnsondev/vim-compiler-go'
NeoBundle 'dgryski/vim-godef'

" Tags {{{2
" NeoBundle 'xolox/vim-easytags'
NeoBundle 'xolox/vim-misc'
NeoBundle 'majutsushi/tagbar'

" HTML {{{2
NeoBundle 'mattn/emmet-vim'

" Jade {{{2
NeoBundle 'digitaltoad/vim-jade'

" ERB {{{2

" ECO {{{2
NeoBundle 'AndrewRadev/vim-eco'

" Haml {{{2
" NeoBundle 'tpope/vim-haml'

" Slim {{{2
" NeoBundle 'slim-template/vim-slim'

" CSS {{{2
NeoBundle 'miripiruni/CSScomb-for-Vim.git'
NeoBundle 'chrisbra/Colorizer'

" SCSS {{{2
NeoBundle 'gcorne/vim-sass-lint'

" Stylus {{{2
NeoBundle 'wavded/vim-stylus'

" LESS {{{2
" NeoBundle 'groenewege/vim-less'

" YAML {{{2
NeoBundle 'luan/vim-concourse'

" JSON {{{2
NeoBundle 'tpope/vim-jdaddy'
NeoBundle 'elzr/vim-json'

" JavaScript {{{2

" Syntax highlighting {{{3
NeoBundle 'jelera/vim-javascript-syntax'
" NeoBundle 'othree/yajs.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'isRuslan/vim-es6'
NeoBundle 'othree/es.next.syntax.vim'
NeoBundle 'othree/javascript-libraries-syntax.vim'
" NeoBundle '1995eaton/vim-better-javascript-completion'
" NeoBundle 'bigfish/vim-js-context-coloring', {
"   \ 'build' : {
"   \     'mac' : 'npm install --update',
"   \     'unix' : 'npm install --update',
"   \    },
"   \ }

" All other plugins {{{3
NeoBundle 'maksimr/vim-jsbeautify'
NeoBundle 'moll/vim-node'
NeoBundle 'geekjuice/vim-spec'
" NeoBundle 'ahayman/vim-nodejs-complete'

" JSX {{{2

" Syntax highlighting {{{3
" NeoBundle 'mxw/vim-jsx'
" NeoBundle 'chemzqm/vim-jsx-improve'
NeoBundle 'normful/vim-jsx-pretty'

" Vue.js {{{2
NeoBundle 'posva/vim-vue'

" All other plugins {{{3

" CoffeeScript {{{2
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'noc7c9/vim-iced-coffee-script'
NeoBundle 'lukaszkorecki/CoffeeTags'

" TypeScript {{{2
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'Quramy/tsuquyomi'

" Ruby {{{2
NeoBundle 'vim-ruby/vim-ruby'
" NeoBundle 'tpope/vim-rbenv'
" NeoBundle 'tpope/vim-rake'
" NeoBundle 'tpope/vim-projectionist'
NeoBundle 'tpope/vim-rails'
" NeoBundle 'tpope/vim-bundler'
" NeoBundle 'ecomba/vim-ruby-refactoring' "docs: https://relishapp.com/despo/vim-ruby-refactoring/docs
NeoBundle 'ngmy/vim-rubocop'

" Puppet {{{2
NeoBundle 'rodjek/vim-puppet'

" Python {{{2
NeoBundle 'klen/python-mode'

" PHP {{{2
" NeoBundle 'joonty/vim-phpqa.git'
" NeoBundle 'bpearson/vim-phpcs'
" NeoBundle 'stephpy/vim-php-cs-fixer'
" NeoBundle 'tobyS/vmustache'
" NeoBundle 'tobyS/pdv'
" NeoBundle 'SirVer/ultisnips'
NeoBundle 'vim-scripts/PDV--phpDocumentor-for-Vim'

" Jinja {{{2
NeoBundle 'lepture/vim-jinja'

" Gradle {{{2
" NeoBundle 'tfnico/vim-gradle'

" Scala {{{2
NeoBundle 'derekwyatt/vim-scala'

" Haskell {{{2
" NeoBundle 'lukerandall/haskellmode-vim'
" NeoBundle 'eagletmt/ghcmod-vim'
" NeoBundle 'eagletmt/neco-ghc'
" NeoBundle 'Twinside/vim-hoogle'
NeoBundle 'neovimhaskell/haskell-vim'
" NeoBundle 'Twinside/vim-haskellFold'
" NeoBundle 'enomsg/vim-haskellConcealPlus'
" NeoBundle 'hspec/hspec'

" SML {{{2
" NeoBundle 'chilicuil/vim-sml-coursera'

" S-Expressions {{{2
" NeoBundle 'guns/vim-sexp'
" NeoBundle 'tpope/vim-sexp-mappings-for-regular-people'

" Racket {{{2
" NeoBundle 'nsue/vim-racket'
" NeoBundle 'MicahElliott/vrod'

" Octave {{{2
" NeoBundle 'jvirtanen/vim-octave'

" Prolog {{{2
" NeoBundle 'nsue/prolog.vim'

" Erlang {{{2
" NeoBundle 'vim-erlang/vim-erlang-compiler'
" NeoBundle 'vim-erlang/vim-erlang-omnicomplete'
" NeoBundle 'vim-erlang/vim-erlang-tags'
" NeoBundle 'vim-erlang/vim-erlang-runtime'
" NeoBundle 'vim-erlang/vim-dialyzer'
" NeoBundle 'edkolev/erlang-motions.vim'

" CUDA {{{2
" autocmd BufNewFile,BufReadPost *.cu set filetype=cuda
" autocmd BufNewFile,BufReadPost *.cuh set filetype=cuda

" IR {{{2
" NeoBundle 'normful/vim-cpsc411'

" Google Translate {{{2
" NeoBundle 'nsue/googletranslate-vim'

" IPA {{{2
" NeoBundle 'normful/vim-ipa'
" NeoBundle 'dahu/vimple'

" ICO, PNG, GIF {{{2
" NeoBundle 'tpope/vim-afterimage'

" Syntax Checking {{{2
NeoBundle 'scrooloose/syntastic'

" Code Formatting {{{2
NeoBundle 'sbdchd/neoformat'

" Syntax Highlighting in Range {{{2
" NeoBundle 'vim-scripts/SyntaxRange'

" Kapeli Dash {{{2
" NeoBundle 'rizzatti/dash.vim'

" Executing Scripts {{{2
NeoBundle 'fboender/bexec'

call neobundle#end()

" General Options {{{1

" Appearance
set background=dark
set nocursorline                " highlight current line
set nocursorcolumn              " highlight current column
set tabpagemax=15               " only show 15 tabs
set linespace=0                 " No extra spaces between rows
set lazyredraw
if !has("gui_running")
    set term=xterm-256color     " required for vim-powerline
endif
set laststatus=2                " required for vim-powerline
set ttyfast                     " fast terminal
set shortmess+=I                " hide startup message
set encoding=utf-8              " set vim's encoding for buffers, registers, etc.

" Mouse
set mouse=a                     " automatically enable mouse usage
set mousehide                   " hide the mouse cursor while typing
set ttymouse=xterm2             " terminal type for which mouse codes are to be recognized

set scrolloff=3                 " keep 3 lines above and below cursor
set showmode                    " display the current mode
set showcmd                     " show (partial) command in bottom right

" Keyboard
set timeoutlen=500 ttimeoutlen=50
set imdisable

" Windows
set laststatus=2                " last window always has status line
set splitbelow                  " split windows below
set splitright                  " vsplit windows to the right

set title
set hidden
set modeline                    " enable vim modelines
set nospell                     " no spell check
set backspace=indent,eol,start  " allow backspacing over these
set scrolljump=5

" Swap, backup, and undo files
set swapfile
set directory=~/.vim/.cache/swap
set backup
set backupdir=~/.vim/.cache/backup
set backupcopy=yes
set undofile
set undodir=~/.vim/.cache/undo

set history=1000                " long history
set autoread                    " automatically reload file changed outside vim

" Indenting
set autoindent                  " indent at the same level of the previous line
set expandtab                   " expands tabs into spaces. real tabs are inserted with CTRL-V<TAB>
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Searching
set ignorecase                  " case insensitive search
set smartcase                   " case sensitive when uc present
set showmatch                   " show matching brackets/parentheses
set incsearch                   " incremental search
set hlsearch                    " highlight search terms
set gdefault                    " :s has g flag on by default

" Line wrapping
set nowrap                      " do not wrap long lines
set linebreak                   " when wrapping is set, break at words

" Folding
set foldenable                  " enable folding
set foldmethod=syntax           " default fold method
set foldlevel=20                 " default fold level
set foldlevelstart=20            " open some folds by default
let javaScript_fold=1
let perl_fold=1
let php_folding=1
let r_syntax_folding=1
let ruby_fold=1
let sh_fold_enabled=1
let xml_syntax_folding=1
autocmd Syntax ruby,javascript,coffee,go,scss,html normal zR

" Line numbering
set number                      " Line numbering on
set relativenumber              " Relative line numbering
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" Strip trailing white space and ^M characters for these file types
autocmd FileType cpp,css,scss,html,iced,eruby,php,javascript,python,ruby,twig,vim,xml,yml autocmd BufWritePre <buffer> call StripTrailingWhitespace()
autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig
autocmd BufNewFile,BufRead *.jelly set filetype=html.jelly

" Invisible aka hidden characters
set listchars=tab:▶\ ,eol:■,trail:•
highlight NonText guifg=#606060
highlight SpecialKey guifg=#606060

" Tag files
set tags=~/tags;

" Clipboard
if has ('x') && has ('gui')     " on Linux: Use + register for copy & paste
    set clipboard=unnamedplus
elseif has ('gui')              " on Windows and Mac: Use * register for copy & paste
    set clipboard=unnamed
endif

" Status Line
set statusline=%t
set statusline+=%=        "left/right separator
set statusline+=\ C%c     "cursor column
set statusline+=\ L%l/%L  "cursor line/total lines
set statusline+=\ %P       "percent through file

" Diff
set diffopt=filler,vertical,iwhite

" see diff-diffexpr in help pages
set diffexpr=DiffW()
function DiffW()
    let opt = ""
    if &diffopt =~ "icase"
        let opt = opt . "-i "
    endif
    if &diffopt =~ "iwhite"
        let opt = opt . "-w " "changed from -b
    endif
    silent execute "!diff -a --binary " . opt . v:fname_in . " " . v:fname_new .  " > " . v:fname_out
endfunction

" General Mappings {{{1

" Leader: Commma
let mapleader = ","

" Localleader: Single back slash
let maplocalleader = "\\"

" Disable arrow keys
nmap <up>    <nop>
nmap <down>  <nop>
nmap <left>  <nop>
nmap <right> <nop>
imap <up>    <nop>
imap <down>  <nop>
imap <left>  <nop>
imap <right> <nop>

" Disable CTRL-D and CTRL-U to get in habit of not using them
" map <C-u> :echo "Use Shift+Space to go up a page instead."<CR>
" imap <C-u> :echo "Use Shift+Space to go up a page instead."<CR>

" map <C-d> :echo "Use Space to go down a page instead."<CR>
" imap <C-d> :echo "Use Space to go down a page instead."<CR>

" nnoremap <Space> <C-d>
" nnoremap <S-Space> <C-u>

" Disable accidental Undo line
nnoremap U :echo "U pressed. Turn Caps Lock off."<CR>

" Disable accidental :Ex mode
nnoremap Q <nop>

" Fix typos
command! -bang -nargs=* -complete=file E e<bang> <args>
command! -bang -nargs=* -complete=file W w<bang> <args>
command! -bang -nargs=* -complete=file Wq wq<bang> <args>
command! -bang -nargs=* -complete=file WQ wq<bang> <args>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Q q<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>

" Easier quitting multiple files without saving
" nnoremap <leader>q :conf qa!<CR>

" Browse oldfiles - mnemonic: (p)reviously used files
nnoremap <localleader>p :bro ol<CR>

" Quick file editing: General
nnoremap <leader>ea :100vsplit ~/.bash_aliases<CR>
nnoremap <leader>eal :100vsplit ~/.bash_aliases_local<CR>
nnoremap <leader>ev :100vsplit ~/.vimrc<CR>
nnoremap <leader>eg :100vsplit ~/.gitconfig<CR>
nnoremap <leader>ez :100vsplit ~/.zshrc<CR>
nnoremap <leader>eb :100vsplit ~/.bashrc<CR>
nnoremap <leader>et :100vsplit ~/.tmux.conf<CR>
nnoremap <leader>essh :100vsplit ~/.ssh/config<CR>

" Toggle between .c and .s file within the same folder
nnoremap <leader>asm :vsplit %:p:s,.s$,.X123X,:s,.c$,.s,:s,.X123X$,.c,<CR>

" Toggle between .cpp and .hpp file within the same folder
nnoremap <leader>hpp :vsplit %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>

" Note -- Toggle between .cpp or .c and .h file within the same folder is
" S-F2 (provided by c.vim)

" Source aka reload .vimrc aka resource .vimrc aka re-source .vimrc
nnoremap <leader>rv :so $MYVIMRC<CR>

" Switching buffers quickly
nnoremap gn :bn<CR>
nnoremap gp :bp<CR>
nnoremap gd :bd<CR>

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" For navigating wrapped lines
" nmap j gj
" nmap k gk
" nmap ^ g^
" nmap 0 g0
" nmap $ g$
vmap j gj
vmap k gk
vmap ^ g^
vmap 0 g0
vmap $ g$

" Horizontal scrolling
map zl zL
map zh zH

" Window navigation
nnoremap <leader>, <C-W>p
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
nnoremap <silent> <leader>o :only<CR>
nnoremap <silent> <leader>m <C-W>_<C-W><Bar>

" Mark
nnoremap ' `
nnoremap ` '

" Bracket matching
nnoremap <tab> %
vnoremap <tab> %

" Search with ERE regex, not vim's default 'magic' regex
nnoremap / /\v
vnoremap / /\v

" Code fold level
" nmap <leader>f0 :set foldlevel=0<CR>
" nmap <leader>f1 :set foldlevel=1<CR>
" nmap <leader>f2 :set foldlevel=2<CR>
" nmap <leader>f3 :set foldlevel=3<CR>
" nmap <leader>f4 :set foldlevel=4<CR>
" nmap <leader>f5 :set foldlevel=5<CR>
" nmap <leader>f6 :set foldlevel=6<CR>
" nmap <leader>f7 :set foldlevel=7<CR>
" nmap <leader>f8 :set foldlevel=8<CR>

" Toggle invisible aka hidden characters
nnoremap <silent> <localleader>i :set list!<CR>:IndentGuidesToggle<CR>

" Toggle wrap
nnoremap <silent> <localleader>w :set wrap!<CR>

" Toggle search highlight
nnoremap <silent> <localleader>h :set hlsearch!<CR>

" Set textwidth=40 for gqip hard  wrapping
nnoremap <silent> <localleader>t :set textwidth=40<CR>

" Toggle syntax highlighting
nnoremap <silent> <localleader>y :set syntax=on<CR>

" Strip trailing white space
nnoremap <silent> <localleader>s :call StripTrailingWhitespace()<CR>

" :Stab sets tabstop, softtabstop and shiftwidth to the same value
command! -nargs=0 SummarizeTabs call SummarizeTabs()
command! -nargs=* Stab call Stab()
nnoremap <silent> <localleader><tab> :Stab<CR>

" Summarize a CoffeeScript class
nnoremap <silent> <localleader>s :call CoffeeClassSummary2()<CR>

" Copy current file's absolute path to clipboard
if has("gui_gtk") || has("gui_gtk2") || has("gui_gnome") || has("unix")
  nnoremap <localleader>cp :let @+=expand("%:p")<CR>
endif

" Scroll all open windows simultaneously
nnoremap <silent> <localleader>sb :execute "normal! gg"<CR>:windo set scrollbind!<CR>

" Switch all open windows to horizontal split
nnoremap <silent> <localleader>H :windo wincmd K<CR>

" Switch all open windows to vertical split
nnoremap <silent> <localleader>V :windo wincmd H<CR>

" Allow saving of files as sudo after forgetting to start vim with sudo
cmap w!! w !sudo tee > /dev/null %

" Show active syntax highlight group undor cursor
nmap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Navigation
cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-h> <S-left>
cnoremap <c-l> <S-right>

command! -nargs=1 -range SuperRetab <line1>,<line2>s/\v%(^ *)@<= {<args>}/\t/g

" Plugins, Plugin Options, and Plugin Mappings {{{1

" NeoBundle Dependencies {{{2
" NeoBundle 'Shougo/vimproc.vim'

" Color Schemes {{{2
" NeoBundle 'flazz/vim-colorschemes'

" Relative and Absolute Line Numbers {{{2
" NeoBundle 'myusuf3/numbers.vim'

" Indent Level Indicators {{{2
" NeoBundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=darkgrey

" Rainbow Parentheses {{{2
" NeoBundle 'luochen1990/rainbow'
nnoremap <silent> <localleader>r :RainbowToggle<CR>

" let g:rainbow_blacklist = ['fileextensiontoblacklist', 'anotherfileextensiontoblacklist']
" autocmd VimEnter * if index(g:rainbow_blacklist, &ft) < 0 | RainbowToggle

let g:rainbow_conf = {
\   'guifgs': ['royalblue1', 'magenta', 'green', 'red'],
\   'ctermfgs': ['blue', 'magenta', 'green', 'red'],
\   'operators': '_,_',
\   'parentheses': [['(',')'], ['\[','\]'], ['{','}'], ['<','>']],
\   'separately': {
\       '*': {},
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\           'ctermfgs': ['darkgray', 'darkblue', 'darkmagenta', 'darkcyan', 'darkred', 'darkgreen'],
\       },
\       'vim': {
\           'parentheses': [['fu\w* \s*.*)','endfu\w*'], ['for','endfor'], ['while', 'endwhile'], ['if','_elseif\|else_','endif'], ['(',')'], ['\[','\]'], ['{','}']],
\       },
\       'tex': {
\           'parentheses': [['(',')'], ['\[','\]'], ['\\begin{.*}','\\end{.*}']],
\       },
\       'ruby': {
\           'parentheses': [['(',')'], ['\[','\]'], ['{','}']],
\       },
\       'javascript': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\       'stylus': 0,
\   }
\}

" Vimshell {{{2
" NeoBundle 'Shougo/vimshell.vim'
" nnoremap <leader>s :80vsplit +:VimShell<CR>
" imap <buffer><C-g> <Plug>(vimshell_history_neocomplete)

" UNIX commands {{{2
" NeoBundle 'tpope/vim-eunuch'

" Asynchronous Dispatching {{{2
" NeoBundle 'tpope/vim-dispatch'
" nnoremap <silent> <leader>dcb  :Dispatch! cake build<CR>
" nnoremap <silent> <leader>dgj  :Dispatch! gulp js<CR>
nnoremap <silent> <leader>d    :Dispatch<CR>
autocmd FileType javascript let b:dispatch = 'npm test'

" nnoremap <leader>vv :grep <cword><CR>:cwindow<CR>
" nmap <leader>p :CtrlP<CR><C-\>w


" File Explorers {{{2
" NeoBundle 'Shougo/vimfiler'
" NeoBundle 'scrooloose/nerdtree'
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
autocmd FileType nerdtree nmap <buffer> o go
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0
let g:NERDTreeDirArrows=0

" File Finder {{{2

" NeoBundle 'dbakker/vim-projectroot'

" CUSTOM PROJECT ROOT: You can later uncomment the next line to temporarily manually override what is considered to be the project root
" let b:projectroot = '~/someManuallySpecifiedProjectRoot'

let g:rootmarkers = ['main.go', '.projectroot', '.git']

if executable('rg')
    set grepprg=rg\ --ignore-file\ ~/.gitignore_global\ --ignore-file\ ~/.ignore\ --no-heading\ --smart-case\ --color\ never\ --max-columns\ 500\ --vimgrep\ $*
    set grepformat=%f:%l:%c:%m

    nnoremap <leader>vv :silent execute "ProjectRootExe lgrep! " . shellescape(expand("<cword>"))<cr>:lopen<cr>
elseif executable('ag')
    set grepprg=ag\ --path-to-ignore\ ~/.ignore\ --group\ --smart-case\ --nocolor\ --depth\ -1\ --vimgrep\ $*
    set grepformat^=%f:%l:%c:%m

    " Taken from http://learnvimscriptthehardway.stevelosh.com/chapters/32.html
    nnoremap <leader>vv :silent execute "ProjectRootExe lgrep! " . shellescape(expand("<cword>"))<cr>:lopen<cr>
endif

" Wildmenu {{{3
set wildmenu
set wildmode=list:longest,full
set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX files
set wildignore+=*.luac                           " Lua byte code
set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files

" NeoBundle 'ctrlpvim/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.vim/.cache/ctrlp'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 40
let g:ctrlp_open_multiple_files = 'i'
nmap <leader>p :CtrlP<CR><C-\>w
if executable('ag')
    let g:ctrlp_user_command = 'ag --nocolor --path-to-ignore ~/.ignore -l -g %s'
endif

" Autoread fix for terminal vim  {{{2
" NeoBundle 'djoshea/vim-autoread'

" Unite {{{2
" NeoBundle 'mileszs/ack.vim'
" NeoBundle 'Shougo/unite.vim'
let bundle = neobundle#get('unite.vim')
function! bundle.hooks.on_source(bundle)
    call unite#filters#matcher_default#use(['matcher_fuzzy'])
    call unite#filters#sorter_default#use(['sorter_rank'])
    call unite#set_profile('files', 'smartcase', 1)
    call unite#custom#source('line,outline','matchers','matcher_fuzzy')
endfunction

let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_source_rec_max_cache_files=5000
let g:unite_prompt='» '

let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

if executable('ag')
    let g:unite_source_grep_command='ag'
    let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
    let g:unite_source_grep_recursive_opt=''
elseif executable('ack')
    let g:unite_source_grep_command='ack'
    let g:unite_source_grep_default_opts='--no-heading --no-color -a -C4'
    let g:unite_source_grep_recursive_opt=''
endif

function! s:unite_settings()
    nmap <buffer> Q <plug>(unite_exit)
    nmap <buffer> <esc> <plug>(unite_exit)
    imap <buffer> <esc> <plug>(unite_exit)
endfunction
autocmd FileType unite call s:unite_settings()

nmap <space> [unite]
" nnoremap [unite] <nop>
" nmap <Space> <PageDown>

" These are Unite mappings. Take note of what's after -buffer-name=
nnoremap <silent> [unite]<space> :<C-u>Unite -toggle -auto-resize -buffer-name=mixed file_rec/async buffer file_mru bookmark<cr><c-u>
nnoremap <silent> [unite]f :<C-u>Unite -toggle -auto-resize -buffer-name=files file_rec/async<cr><c-u>
nnoremap <silent> [unite]g :<C-u>Unite -no-quit -buffer-name=search grep:.<cr>

" Grep the word under the cursor
nnoremap <silent> [unite]cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>
nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>

" Reopen grep search results
nnoremap <silent> [unite]r :<C-u>UniteResume search-buffer<CR>

nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yanks history/yank<cr>
nnoremap <silent> [unite]l :<C-u>Unite -auto-resize -buffer-name=line line<cr>
nnoremap <silent> [unite]b :<C-u>Unite -auto-resize -buffer-name=buffers buffer<cr>
nnoremap <silent> [unite]m :<C-u>Unite -auto-resize -buffer-name=mappings mapping<cr>
nnoremap <silent> [unite]s :<C-u>Unite -quick-match buffer<cr>

" NeoBundleLazy 'osyo-manga/unite-airline_themes', {'autoload':{'unite_sources':'airline_themes'}} "{{{3
nnoremap <silent> [unite]a :<C-u>Unite -winheight=10 -auto-preview -buffer-name=airline_themes airline_themes<cr>

" NeoBundleLazy 'ujihisa/unite-colorscheme', {'autoload':{'unite_sources':'colorscheme'}} "{{{3
nnoremap <silent> [unite]c :<C-u>Unite -winheight=10 -auto-preview -buffer-name=colorschemes colorscheme<cr>

" NeoBundleLazy 'tsukkee/unite-tag', {'autoload':{'unite_sources':['tag','tag/file']}} "{{{3
nnoremap <silent> [unite]t :<C-u>Unite -auto-resize -buffer-name=tag tag tag/file<cr>

" NeoBundleLazy 'Shougo/unite-outline', {'autoload':{'unite_sources':'outline'}} "{{{3
nnoremap <silent> [unite]o :<C-u>Unite -auto-resize -buffer-name=outline outline<cr>

" NeoBundleLazy 'Shougo/unite-help', {'autoload':{'unite_sources':'help'}} "{{{3
nnoremap <silent> [unite]h :<C-u>Unite -auto-resize -buffer-name=help help<cr>

" NeoBundleLazy 'Shougo/junkfile.vim', {'autoload':{'commands':'JunkfileOpen','unite_sources':['junkfile','junkfile/new']}} "{{{3
let g:junkfile#directory=expand("~/.vim/.cache/junk")
nnoremap <silent> [unite]j :<C-u>Unite -auto-resize -buffer-name=junk junkfile junkfile/new<cr>

" Sessions {{{2
" NeoBundle 'xolox/vim-session'
let g:session_autosave = 'no'
let g:session_autosave_periodic = 3
let g:session_autosave_silent = 'yes'
let g:session_autoload = 'no'

" NeoBundle 'tpope/vim-obsession'
" NeoBundle 'dhruvasagar/vim-prosession'

" Buffers {{{2
" NeoBundle 'fholgado/minibufexpl.vim'
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bN :bp<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bd :bd<CR>
" NeoBundle 'vim-scripts/BufOnly.vim'
nnoremap <leader>bo :BufOnly<CR>

" File Navigation {{{2
" NeoBundle 'matchit.zip'

" Marks {{{2
" NeoBundle 'kshenoy/vim-signature'

" Undo tree {{{2
" NeoBundle 'Gundo'
nnoremap <F2> :GundoToggle<CR>
let g:gundo_preview_bottom = 1

" Enhanced . repeat {{{2
" NeoBundle 'tpope/vim-repeat'

" Paired mappings {{{2
" NeoBundle 'tpope/vim-unimpaired'

" Comments {{{2
" NeoBundle 'tomtom/tcomment_vim'
nnoremap <silent> <leader>cl :TComment<CR>
vnoremap <silent> <leader>cl :TComment<CR>
nnoremap <silent> <leader>cb :TCommentBlock<CR>
vnoremap <silent> <leader>cb :TCommentBlock<CR>
" NeoBundle 'heavenshell/vim-jsdoc'

" Autocomplete {{{2
" NeoBundle 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup=1
let g:neocomplete#data_directory='~/.vim/.cache/neocomplete'
" The following overwrites completefunc which is overwritten by vim-rails
let g:neocomplete#force_overwrite_completefunc=1

autocmd FileType css           setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript    setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python        setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml           setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby          setlocal omnifunc=rubycomplete#Complete

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell       setlocal omnifunc=necoghc#omnifunc

" Autoend {{{2
" NeoBundle 'tpope/vim-endwise'

" Auto shiftwidth and expandtab {{{2
" NeoBundle 'tpope/vim-sleuth'

" Snippet Manager {{{2
" Option 1 {{{3
" NeoBundle 'Shougo/neosnippet'
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

" Option 2 {{{3
" NeoBundle 'SirVer/ultisnips'
" Option 3 {{{3
" NeoBundle 'garbas/vim-snipmate'
" NeoBundle 'MarcWeber/vim-addon-mw-utils'
" NeoBundle 'tomtom/tlib_vim'

" Snippets {{{2
" For use with Options 1, 2, 3 in Snippet Manager {{{3
" NeoBundle 'honza/vim-snippets'
" For use with Option 1 in Snippet Manager {{{3
" NeoBundle 'Shougo/neosnippet-snippets'

" Snippets {{{2
" NeoBundle 'honza/vim-snippets'
" NeoBundle 'Shougo/neosnippet-snippets'

" Surround {{{2
" NeoBundle 'tpope/vim-surround'
autocmd FileType php let b:surround_45 = "<?php \r ?>"
autocmd FileType eruby let g:surround_45 = "<% \r %>"
autocmd FileType eruby let g:surround_61 = "<%= \r %>"
autocmd FileType markdown,pandoc let g:surround_{char2nr('b')} = "**\r**"

" Multiline Select {{{2
" NeoBundle 'terryma/vim-multiple-cursors'

" Region Select {{{2
" NeoBundle 'terryma/vim-expand-region'
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Substitution and Typo Correction {{{2
" NeoBundle 'tpope/vim-abolish'

" Note to self: Coercion mappings do not begin with leader nor localleader,
" they're simply used by pressing crc (and etc.) in normal mode while the
" cursor is under a word

" Word Usage {{{2
" NeoBundle 'reedes/vim-wordy'

" Character Info {{{2
" NeoBundle 'tpope/vim-characterize'

" Tables {{{2
" NeoBundle 'dhruvasagar/vim-table-mode'
let g:table_mode_corner = '|'

" Alignment {{{2
" NeoBundle 'junegunn/vim-easy-align'

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Git {{{2
" NeoBundle 'tpope/fugitive'
" NeoBundle 'idanarye/vim-merginal'
" NeoBundle 'gregsexton/gitv'
" NeoBundle 'airblade/vim-gitgutter'
let g:gitgutter_highlight_lines = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_eager = 0
let g:gitgutter_realtime = 0

" All Git mappings {{{3
"
" Note that commands starting with :Git need two carriage returns (<CR>) so that
" 'Press ENTER or type command to continue' is not displayed

" git add
nnoremap <silent> <leader>ga      :GitGutterStageHunk<CR>
nnoremap <silent> <leader>gu      :GitGutterRevertHunk<CR>
nnoremap <silent> <leader>gn      :GitGutterNextHunk<CR>
nnoremap <silent> <leader>gp      :GitGutterPrevHunk<CR>
nnoremap <silent> <leader>gN      :GitGutterPrevHunk<CR>

" git diff
nnoremap <silent> <leader>gdc     :Git dc<CR><CR>
" nnoremap <silent> <leader>gd      :Gdiff<CR>
"                                   :Gdiff moves focus to the diff window; closing the diff window brings you back to the original window

" git commit
nnoremap <silent> <leader>gw      :Git w <bar> :write<CR><CR>
" nnoremap <silent> <leader>gc      :Gcommit<CR>
" nnoremap <silent> <leader>gmend   :Git mend<CR>
" nnoremap <silent> <leader>gmendm  :Git mendm<CR>

" git show
nnoremap <silent> <leader>gsh     :Git sh<CR><CR>

" git blame
" <C-w><C-p> moves back to initial window after running :Gblame
nnoremap <silent> <leader>gbl     :Gblame<CR><C-w><C-p>

" highlight line with diffs
nnoremap <silent> <leader>gh      :GitGutterLineHighlightsToggle<CR>

" git status
nnoremap <silent> <leader>gs      :Git status<CR>

" git log
" nnoremap <silent> <leader>gl      :Git l<CR>
" nnoremap <silent> <leader>gv      :Gitv --all<CR>
" nnoremap <silent> <leader>gV      :Gitv!<CR>

" git log of current file
nnoremap <silent> <leader>gl   :ShellGit lforvim   %<CR> <bar> :AnsiEsc<CR>
nnoremap <silent> <leader>gll  :ShellGit llforvim  %<CR> <bar> :AnsiEsc<CR>
nnoremap <silent> <leader>glll :ShellGit lllforvim %<CR> <bar> :AnsiEsc<CR>

nnoremap <silent> <leader>l   :ShellGit lforvim   %<CR> <bar> :AnsiEsc<CR>
nnoremap <silent> <leader>ll  :ShellGit llforvim  %<CR> <bar> :AnsiEsc<CR>
nnoremap <silent> <leader>lll :ShellGit lllforvim %<CR> <bar> :AnsiEsc<CR>

" git branch, fetch
" nnoremap <silent> <leader>gb      :Merginal<CR>
" nnoremap <silent> <leader>gfa     :Gfetch --all<CR>

" git push
"nnoremap <silent> <leader>gpush   :Gpush<CR>
" nnoremap <silent> <leader>gmir    :Gpush --mirror n<CR>

" git reset
" nnoremap <silent> <leader>grh     :Git rh<CR>
" nnoremap <silent> <leader>gcdf    :Git cdf<CR>
" nnoremap <silent> <leader>gun     :Git un<CR>

" .gitignore {{{2
" NeoBundle 'gisphm/vim-gitignore'

" tmux {{{2
" NeoBundle 'tmux-plugins/vim-tmux'
" NeoBundle 'sjl/tslime.vim'
let g:tslime_ensure_trailing_newlines = 1

" NeoBundle 'jpalardy/vim-slime'
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "ll:5.1"}
let g:slime_no_mappings = 1
xmap <leader>s <Plug>SlimeRegionSend
nmap <leader>s <Plug>SlimeMotionSend
nmap <leader>ss <Plug>SlimeLineSend
nmap <leader>sc <Plug>SlimeConfig

" NeoBundle 'jgdavey/tslime.vim'
" NeoBundle 'kovisoft/slimv'

" Concealing ANSI Escape Sequences {{{3
" NeoBundle 'powerman/vim-plugin-AnsiEsc'
nnoremap <silent> <localleader>a :AnsiEsc<CR>

" Heroku {{{2
" NeoBundle 'tpope/vim-heroku'

" Databases {{{2
" NeoBundle 'vim-scripts/dbext.vim'

" Web APIs {{{2
" NeoBundle 'mattn/webapi-vim'

" EditorConfig {{{2
" NeoBundle 'editorconfig/editorconfig-vim'
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" LaTeX {{{2
" NeoBundle 'LaTeX-Suite-aka-Vim-LaTeX'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
let g:Tex_ViewRuleComplete_pdf = 'evince $*/index.pdf &'
let g:Tex_ViewRuleComplete_html = '/opt/firefox/firefox-bin $*/index.html &'
nnoremap <leader><leader>ll :!pdflatex -interaction=nonstop %<CR>

" Markdown and Pandoc {{{2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" NeoBundle 'vim-pandoc/vim-pandoc'
let g:pandoc#modules#disabled = ["bibliographies"] " To prevent some startup bug complaining about no python glob module
" NeoBundle 'vim-pandoc/vim-pandoc-syntax'
let g:pandoc#syntax#conceal#use             = 0

let g:pandoc#syntax#conceal#urls            = 1

autocmd! BufRead,BufNewFile,BufEnter *.md            let g:pandoc#syntax#codeblocks#embeds#langs = ["javascript", "coffee", "json", "css", "html", "sql", "xml", "python", "ruby", "c", "pug"]
autocmd! BufRead,BufNewFile,BufEnter *JavaScript*.md let g:pandoc#syntax#codeblocks#embeds#langs = ["javascript", "coffee", "json", "css", "html", "sql", "xml"]

let g:pandoc#syntax#style#emphases          = 1
let g:pandoc#syntax#style#underline_special = 0

autocmd FileType markdown,pandoc map <leader>rb :s/[\]\[\*]//<CR>
autocmd FileType markdown,pandoc map <leader>rbs :s/[\]\[]/ /<CR>
autocmd FileType markdown,pandoc map <leader>re :s/^> E\:.*$//<CR>
autocmd FileType markdown,pandoc map <leader>rd :s/^\-\+$//<CR>

" NeoBundle 'normful/vim-pandoc-syntax-after'

" reStructuredText {{{2
" NeoBundle 'Rykka/riv.vim'

" Binary {{{2
" NeoBundle 'ressu/hexman.vim'

" EBNF {{{2
" NeoBundle 'vim-scripts/ebnf.vim'

" Thrift {{{2
" NeoBundle 'solarnz/thrift.vim'

" C/C++ {{{2
" NeoBundle 'vim-scripts/c.vim'
" NeoBundle 'CRefVim'
" NeoBundle 'vim-scripts/a.vim'

" Golang {{{2
" NeoBundle 'fatih/vim-go'
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

let g:go_fmt_autosave = 1
let g:go_list_type = "locationlist"

au FileType go nmap <leader>x <Plug>(go-run)
au FileType go nmap <leader>i <Plug>(go-info)

au FileType go nmap <leader>lb <Plug>(go-build)
au FileType go nmap <leader>lt <Plug>(go-test)
au FileType go nmap <leader>lc <Plug>(go-coverage)



au FileType go nmap <leader>lds <Plug>(go-def-split)
au FileType go nmap <leader>ldv <Plug>(go-def-vertical)
au FileType go nmap <leader>ldt <Plug>(go-def-tab)

au FileType go nmap <leader>lgd <Plug>(go-doc)
au FileType go nmap <leader>lgv <Plug>(go-doc-vertical)

au FileType go nmap <leader>lgb <Plug>(go-doc-browser)

au FileType go nmap <leader>ls <Plug>(go-implements)

au FileType go nmap <leader>le <Plug>(go-rename)

" NeoBundle 'nsf/gocode', {'rtp': 'vim/'}
" NeoBundle 'rjohnsondev/vim-compiler-go'
" NeoBundle 'dgryski/vim-godef'
let g:godef_same_file_in_same_window = 1

" Tags {{{2
" NeoBundle 'xolox/vim-easytags'
let g:easytags_by_filetype = '~/.vim/.cache/tags'
let g:easytags_async = 1
let g:easytags_include_members = 1
let g:easytags_languages = {
\  'javascript': {
\    'cmd': 'ctags'
\  },
\}
nnoremap <Leader>ct :!ctags-proj.sh<CR>
" NeoBundle 'xolox/vim-misc'
" NeoBundle 'majutsushi/tagbar'
if executable('jsctags')
  let g:tagbar_type_javascript = {
    \'ctagsbin' : 'jsctags'
    \ }
endif
nmap <F8> :TagbarToggle<CR>
let g:tagbar_left = 1
let g:tagbar_sort = 0
let g:tagbar_width = 50

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" For jsctags: use mozilla/doctorjs, NOT ramitos/jsctags

let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

" HTML {{{2
" NeoBundle 'mattn/emmet-vim'
autocmd FileType html,eco,css,eruby,javascript imap <tab> <Plug>(emmet-expand-abbr)
" let g:user_emmet_leader_key = '<C-S>'

" Emmet global indentation setting
" and template for overriding individual filetype indentation
" (amount of spaces is what will be indented)
let g:user_emmet_settings = {
\  'indentation' : '  ',
\  'html' : {
\    'indentation' : '  '
\  },
\}

" Jade {{{2
" NeoBundle 'digitaltoad/vim-jade'

" ERB {{{2

" ECO {{{2
" NeoBundle 'AndrewRadev/vim-eco'

" Haml {{{2
" NeoBundle 'tpope/vim-haml'

" Slim {{{2
" NeoBundle 'slim-template/vim-slim'

" CSS {{{2
" NeoBundle 'miripiruni/CSScomb-for-Vim.git'
" NeoBundle 'chrisbra/Colorizer'
let g:colorizer_auto_filetype = 'css,scss'
au BufNewFile,BufRead *.css,*.scss :ColorHighlight!
let g:colorizer_colornames = 0
let g:colorizer_auto_map = 1


" SCSS {{{2
" NeoBundle 'gcorne/vim-sass-lint'
let g:sass_lint_config = '$HOME/.sass-lint.yml'

" Stylus {{{2
" NeoBundle 'wavded/vim-stylus'

" LESS {{{2
" NeoBundle 'groenewege/vim-less'

" JSON {{{2
function FormatJSON(...)
  let code="\"
          \ var i = process.stdin, d = '';
          \ i.resume();
          \ i.setEncoding('utf8');
          \ i.on('data', function(data) { d += data; });
          \ i.on('end', function() {
          \     console.log(JSON.stringify(JSON.parse(d), null,
          \ " . (a:0 ? a:1 ? a:1 : 2 : 2) . "));
          \ });\""
    execute "%! node -e " . code
endfunction

" Usage
" 2fj reindents with 2 spaces
" 4fj reindents with 4 spaces
nmap fj :<C-U>call FormatJSON(v:count)<CR>

" NeoBundle 'tpope/vim-jdaddy'
" NeoBundle 'elzr/vim-json'

" JavaScript {{{2
"
" Syntax highlighting {{{3
autocmd FileType javascript set dictionary+=$HOME/.vim/dict/node.dict

" NeoBundle 'jelera/vim-javascript-syntax'
let g:javascript_enable_domhtmlcss = 1
" NeoBundle 'othree/yajs.vim'
" NeoBundle 'pangloss/vim-javascript'
" NeoBundle 'isRuslan/vim-es6'
" NeoBundle 'othree/es.next.syntax.vim'
" NeoBundle 'othree/javascript-libraries-syntax.vim'
" NeoBundle '1995eaton/vim-better-javascript-completion'
" NeoBundle 'bigfish/vim-js-context-coloring', {
"   \ 'build' : {
"   \     'mac' : 'npm install --update',
"   \     'unix' : 'npm install --update',
"   \    },
"   \ }
let g:js_context_colors_highlight_function_names = 1
let g:js_context_colors_jsx = 0
let g:js_context_colors_allow_jsx_syntax = 1

" All other plugins {{{3
" NeoBundle 'maksimr/vim-jsbeautify'
" Specify vim-jsbeautify styling in ~/.editorconfig
" autocmd FileType javascript,json,coffee,coffee.iced-coffee nnoremap <buffer> <localleader>b :call BeautifyRange()<CR>
function! BeautifyRange()
    setlocal modifiable
    call RangeJsBeautify()
endfunction

" NeoBundle 'moll/vim-node'
" NeoBundle 'geekjuice/vim-spec'
" NeoBundle 'ahayman/vim-nodejs-complete'

function! RunWithNode()
    let node_command = "node"
    let current_file = shellescape(expand('%:p'))
    let output = system(node_command . " " . current_file)
    echon output
endfunction
command! -nargs=0 RunWithNode call RunWithNode()
nnoremap <silent> <leader>node :RunWithNode<CR>

" Vue.js {{{2
" NeoBundle 'posva/vim-vue'

" JSX {{{2

" Syntax highlighting {{{3
" For highlighting Jest Snapshots as HTML:
autocmd BufNewFile,BufRead *.snap set filetype=html
" NeoBundle 'mxw/vim-jsx'
" NeoBundle 'chemzqm/vim-jsx-improve'
" NeoBundle 'MaxMEllon/vim-jsx-pretty'
let g:vim_jsx_pretty_colorful_config = 1

" All other plugins {{{3

" CoffeeScript {{{2
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
autocmd FileType coffee set dictionary+=$HOME/.vim/dict/node.dict

" NeoBundle 'kchmck/vim-coffee-script'
" NeoBundle 'noc7c9/vim-iced-coffee-script'

" let coffee_compiler = '/usr/bin/iced'

" Automatically run 'cake build' on save
autocmd BufNewFile,BufReadPost *.coffee compiler cake
" autocmd BufWritePost *.coffee make build

" <leader>c to CoffeeCompile into scratch buffer
autocmd FileType coffee map <leader>c :CoffeeCompile<CR>
autocmd FileType coffee.iced-coffee map <leader>c :CoffeeCompile<CR>

" <leader>r to CoffeeRun into scratch buffer
autocmd FileType coffee map <leader>r :CoffeeRun<CR>

" Visual select lines then <leader>c to CoffeeCompile selection into scratch buffer
autocmd FileType coffee vnoremap <leader>c <esc>:'<,'>:CoffeeCompile<CR>

" :C[n] jumps to line [n] in the CoffeeCompile scratch buffer
autocmd FileType coffee command! -nargs=1 C CoffeeCompile | :<args>

" Note: q closes CoffeeCompile scratch buffer

let g:coffee_compile_vert = 1
let g:coffee_watch_vert = 1
let g:coffee_run_vert = 1

" NeoBundle 'lukaszkorecki/CoffeeTags'
let g:CoffeeAutoTagIncludeVars=1

" Ruby {{{2
au FileType ruby nmap <leader>x :!ruby %<CR>
" NeoBundle 'vim-ruby/vim-ruby'
" NeoBundle 'tpope/vim-rbenv'
" NeoBundle 'tpope/vim-rake'
" NeoBundle 'tpope/vim-projectionist'
" NeoBundle 'tpope/vim-rails' {{{3
"
" rails-projections of tpope/vim-rails {{{4
"
" let g:rails_projections = ...

" command! -bar -nargs=1 OpenURL :!google-chrome <args>
" NeoBundle 'tpope/vim-bundler'
" NeoBundle 'ecomba/vim-ruby-refactoring' "docs: https://relishapp.com/despo/vim-ruby-refactoring/docs
" NeoBundle 'ngmy/vim-rubocop'
nnoremap <silent> <leader>rc :RuboCop<CR>
let g:vimrubocop_config = '$HOME/.rubocop.yml'

" Puppet {{{2
" NeoBundle 'rodjek/vim-puppet'

" Python {{{2
" NeoBundle 'klen/python-mode'

" PHP {{{2
" NeoBundle 'joonty/vim-phpqa.git'
" NeoBundle 'bpearson/vim-phpcs'
" NeoBundle 'stephpy/vim-php-cs-fixer'
" NeoBundle 'tobyS/vmustache'
" NeoBundle 'tobyS/pdv'
" NeoBundle 'SirVer/ultisnips'
" NeoBundle 'vim-scripts/PDV--phpDocumentor-for-Vim'
" nnoremap <silent> <localleader>phpdoc :call PhpDoc()<CR>

let g:pdv_cfg_Type = "mixed"
let g:pdv_cfg_Package = ""
let g:pdv_cfg_Version = "1.0.0"

" Syntastic settings for phpcs and WordPress coding standards
"
" Run base PHP checker first, then run phpcs with WordPress standard
" If phpcs does not exist or the WordPress standard does not exist,
" Syntastic skips them (failing gracefully)
let g:syntastic_php_checkers = ['php', 'phpcs']

" If phpcs.ruleset.xml is found, it supercedes the standard set above
" let g:syntastic_php_phpcs_standard_file = "phpcs.ruleset.xml"

" Jinja {{{2
" NeoBundle 'lepture/vim-jinja'

" Gradle {{{2
" NeoBundle 'tfnico/vim-gradle'

" Scala {{{2
" NeoBundle 'derekwyatt/vim-scala'

" Haskell {{{2
autocmd BufEnter *.hs set formatprg=pointfree

autocmd FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
autocmd FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
autocmd FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo<CR>

" NeoBundle 'lukerandall/haskellmode-vim'
let g:haddock_browser = "open"

" NeoBundle 'eagletmt/ghcmod-vim'
" NeoBundle 'eagletmt/neco-ghc'
" NeoBundle 'Twinside/vim-hoogle'

autocmd BufNewFile,BufRead *.hs map <buffer> <F1>   :Hoogle
autocmd BufNewFile,BufRead *.hs map <buffer> <C-F1> :HoogleClose<CR>
autocmd BufNewFile,BufRead *.hs map <buffer> <S-F1> :HoogleLine<CR>

" NeoBundle 'neovimhaskell/haskell-vim'
let g:haskell_enable_quantification   = 1 "to enable highlighting of forall
let g:haskell_enable_recursivedo      = 1 "to enable highlighting of mdo and rec
let g:haskell_enable_arrowsyntax      = 1 "to enable highlighting of proc
let g:haskell_enable_pattern_synonyms = 1 "to enable highlighting of pattern
let g:haskell_enable_typeroles        = 1 "to enable highlighting of type roles
let g:haskell_enable_static_pointers  = 1 "to enable highlighting of static

" NeoBundle 'Twinside/vim-haskellFold'
" NeoBundle 'enomsg/vim-haskellConcealPlus'
" NeoBundle 'hspec/hspec'
highlight link hspecDescribe Type
highlight link hspecIt Identifier
highlight link hspecDescription Comment

" SML {{{2
" NeoBundle 'chilicuil/vim-sml-coursera'

" S-Expressions {{{2
" NeoBundle 'guns/vim-sexp'
let g:sexp_enable_insert_mode_mappings = 0
let g:sexp_filetypes = 'clojure,scheme,lisp,timl,racket'
" vim-sexp internal mappings
let s:sexp_mappings = {
    \ 'sexp_outer_list':                'af',
    \ 'sexp_inner_list':                'if',
    \ 'sexp_outer_top_list':            'aF',
    \ 'sexp_inner_top_list':            'iF',
    \ 'sexp_outer_string':              'as',
    \ 'sexp_inner_string':              'is',
    \ 'sexp_outer_element':             'ae',
    \ 'sexp_inner_element':             'ie',
    \ 'sexp_move_to_prev_bracket':      '(',
    \ 'sexp_move_to_next_bracket':      ')',
    \ 'sexp_move_to_prev_element_head': '<M-b>',
    \ 'sexp_move_to_next_element_head': '<M-w>',
    \ 'sexp_move_to_prev_element_tail': 'g<M-e>',
    \ 'sexp_move_to_next_element_tail': '<M-e>',
    \ 'sexp_move_to_prev_top_element':  '[[',
    \ 'sexp_move_to_next_top_element':  ']]',
    \ 'sexp_select_prev_element':       '[e',
    \ 'sexp_select_next_element':       ']e',
    \ 'sexp_indent':                    '==',
    \ 'sexp_indent_top':                '=-',
    \ 'sexp_round_head_wrap_list':      '',
    \ 'sexp_round_tail_wrap_list':      '',
    \ 'sexp_square_head_wrap_list':     '',
    \ 'sexp_square_tail_wrap_list':     '',
    \ 'sexp_curly_head_wrap_list':      '',
    \ 'sexp_curly_tail_wrap_list':      '',
    \ 'sexp_round_head_wrap_element':   '',
    \ 'sexp_round_tail_wrap_element':   '',
    \ 'sexp_square_head_wrap_element':  '',
    \ 'sexp_square_tail_wrap_element':  '',
    \ 'sexp_curly_head_wrap_element':   '',
    \ 'sexp_curly_tail_wrap_element':   '',
    \ 'sexp_insert_at_list_head':       '',
    \ 'sexp_insert_at_list_tail':       '',
    \ 'sexp_splice_list':               '',
    \ 'sexp_raise_list':                '',
    \ 'sexp_raise_element':             '',
    \ 'sexp_swap_list_backward':        '',
    \ 'sexp_swap_list_forward':         '',
    \ 'sexp_swap_element_backward':     '',
    \ 'sexp_swap_element_forward':      '',
    \ 'sexp_emit_head_element':         '',
    \ 'sexp_emit_tail_element':         '',
    \ 'sexp_capture_prev_element':      '',
    \ 'sexp_capture_next_element':      '',
    \ }

" NeoBundle 'tpope/vim-sexp-mappings-for-regular-people'

" Racket {{{2
" NeoBundle 'nsue/vim-racket'
" NeoBundle 'MicahElliott/vrod'

" Octave {{{2
" NeoBundle 'jvirtanen/vim-octave'

" Prolog {{{2
" NeoBundle 'nsue/prolog.vim'
" Override Perl filetype
" let g:filetype_pl="prolog"

" Erlang {{{2
" NeoBundle 'vim-erlang/vim-erlang-compiler'
" NeoBundle 'vim-erlang/vim-erlang-omnicomplete'
" NeoBundle 'vim-erlang/vim-erlang-tags'
" NeoBundle 'vim-erlang/vim-erlang-runtime'
" NeoBundle 'vim-erlang/vim-dialyzer'
" NeoBundle 'edkolev/erlang-motions.vim'

" CUDA {{{2
autocmd BufNewFile,BufRead *.cu set filetype=cu

" Google Translate {{{2
" NeoBundle 'nsue/googletranslate-vim'
let g:googletranslate_apikey = $GOOGLE_TRANSLATE_API_KEY

if strlen(g:googletranslate_apikey) == 0
    let g:googletranslate_apikey = 'INSERT YOURS HERE'
endif

" For possible locales, see https://cloud.google.com/translate/v2/using_rest#language-params
let g:googletranslate_locale = 'ja'

" Places the translation in the "@ register and in a new buffer
let g:googletranslate_options = ["register", "buffer"]

" IPA {{{2
" NeoBundle 'normful/vim-ipa'
" NeoBundle 'dahu/vimple'
xnoremap i c<c-r>=ASC2IPA("<c-r>"")<cr><esc>

" ICO, PNG, GIF {{{2
" NeoBundle 'tpope/vim-afterimage'

" Syntax Checking {{{2
" NeoBundle 'scrooloose/syntastic'
let g:syntastic_debug = 0

" Code Formatting {{{2
" NeoBundle 'sbdchd/neoformat'
let g:neoformat_basic_format_trim = 1
let g:neoformat_javascript_prettier = {
\ 'exe': 'prettier',
\ 'args': ['--stdin', '--single-quote', '--trailing-comma', 'es5'],
\ 'stdin': 1
\ }
let g:neoformat_enabled_javascript = ['prettier']
autocmd BufWritePre ~/someProject/*.jsx Neoformat prettier

" Syntastic General Options {{{3
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 0

" Syntastic location-list {{{3
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0

" location-list mappings {{{3
nnoremap <silent> <leader>en  :lnext<CR>
nnoremap <silent> <leader>eN  :lprevious<CR>
nnoremap <silent> <leader>ep  :lprevious<CR>

" Syntastic Signs {{{3
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = "\u25A9"
let g:syntastic_warning_symbol = "\u25CC"
let g:syntastic_style_error_symbol = "\u25A9"
let g:syntastic_style_warning_symbol = "\u25CC"

highlight link SyntasticErrorSign        SignColumn
highlight link SyntasticWarningSign      SignColumn
highlight link SyntasticStyleErrorSign   SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" Syntastic Highlighting {{{3
let g:syntastic_enable_highlighting = 1
highlight link SyntasticError   MySyntasticError
highlight link SyntasticWarning MySyntasticWarning

" SyntasticStatuslineFlag {{{3
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Syntastic Filetypes and Chckers {{{3
let g:syntastic_mode_map = {
    \ 'mode': 'active',
    \ 'active_filetypes': [
        \ 'javascript',
        \ 'coffeescript',
        \ 'ruby',
        \ 'go',
        \ 'php',
        \ 'html',
        \ 'scss',
    \ ],
    \ 'passive_filetypes': [
    \ ] }

" You can put multiple checkers. If you do, each checker will be called, in
" order, as long as the previous checkers don’t return an error. In that case,
" you might want to list checkers from fastest to slowest, or from looser to
" stricter.

" --------------------------------------------------------------------

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = '/usr/local/bin/eslint'

" --------------------------------------------------------------------

let g:syntastic_coffeescript_checkers = ['coffeelint']
let g:syntastic_coffeescript_eslint_exec = '/usr/local/bin/coffeelint'

" --------------------------------------------------------------------

let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_ruby_rubocop_exec = '~/bin/rubocop-syntastic-fix.sh'
" let g:syntastic_ruby_reek_exec = '~/.rvm/gems/ruby-2.2.2/bin/reek'

" --------------------------------------------------------------------

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']

" --------------------------------------------------------------------
" Run base PHP checker first, then run phpcs with WordPress standard
" If phpcs does not exist or the WordPress standard does not exist,
" Syntastic skips them (failing gracefully)
let g:syntastic_php_checkers = ['php', 'phpcs']

" If phpcs.ruleset.xml is found, it supercedes the standard set above
" let g:syntastic_php_phpcs_standard_file = "phpcs.ruleset.xml"
" --------------------------------------------------------------------

let g:syntastic_html_checkers = ['w3']
let g:syntastic_html_validator_parser = "html5"
let g:syntastic_html_tidy_exec = "/usr/sbin/tidy"

" --------------------------------------------------------------------

" Note that there is a difference between specifying the checker
" sass_lint versus the checker sasslint.
" sasslint is used for NeoBundle 'gcorne/vim-sass-lint'
let g:syntastic_scss_checkers = ['sasslint']

" --------------------------------------------------------------------

" Syntax Highlighting in Range {{{2
" NeoBundle 'vim-scripts/SyntaxRange'

" Kapeli Dash {{{2
" NeoBundle 'rizzatti/dash.vim'
cnoreabbrev D Dash
:nmap <silent> K <Plug>DashSearch
let g:dash_map = {
    \ 'javascript': [ 'javascript', 'bluebird', 'nodejs', 'express', 'mocha', 'sinon', 'chai', 'npm', 'couchdb', 'moment', 'react', 'flux', 'flow', 'jsdoc', 'http', 'sobackbone' ],
    \ 'coffee':     [ 'javascript', 'bluebird', 'nodejs', 'express', 'mocha', 'sinon', 'chai', 'npm', 'couchdb', 'moment', 'react', 'flux', 'flow', 'jsdoc', 'http', 'coffee', 'socoffee', 'sogulp', 'jquery', 'underscore', 'lodash' ],
    \ 'html':       [ 'html', 'htmle' ],
    \ 'jade':       [ 'jade', 'html', 'css' ],
    \ 'css':        [ 'css' ],
    \ 'scss':       [ 'sass', 'css' ],
    \ 'sass':       [ 'sass', 'css' ],
    \ 'less':       [ 'css' ],
    \ 'stylus':     [ 'css' ],
    \ 'sh':         [ 'bash', 'manpages', 'perl', 'python', 'sozsh' ],
    \ 'yaml':       [ 'ansible', 'soansible', 'jinja', 'yaml' ],
    \ 'java':       [ 'java', 'java7', 'jee7', 'jee6', 'gradle', 'android', 'ant' ],
    \ 'markdown':   [ 'pandoc', 'latex' ],
    \ 'pandoc':     [ 'pandoc', 'latex' ],
    \ 'matlab':     [ 'matlab' ],
    \ 'octave':     [ 'octave', 'matlab' ],
    \ 'asm':        [ 'x86' ],
\ }

" Executing Scripts {{{2
" NeoBundle 'fboender/bexec'
let g:bexec_splitdir = 'ver'
let g:bexec_filter_types = {
    \ 'javascript': 'babel-node',
\}
nmap <silent> <unique> <leader>be :Bexec()<CR>
vmap <silent> <unique> <leader>bv :BexecVisual()<CR>

" Micellaneous Functions and Autocommands {{{1

" External program to use for = command
if executable('scmindent.rkt')
    autocmd filetype lisp,scheme,racket,art setlocal equalprg=scmindent.rkt
endif

" Changes the window-local current directory to its file's directory "{{{2
" (except when file is in /tmp)
autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif

augroup return_to_prev_line_position "{{{2
    autocmd!
    autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \     execute 'normal! g`"zvzz' |
            \ endif
augroup END

function! Stab() "{{{2
    let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
    if l:tabstop > 0
        let &l:sts = l:tabstop
        let &l:ts = l:tabstop
        let &l:sw = l:tabstop
    endif
    call SummarizeTabs()
endfunction

function! SummarizeTabs() "{{{2
    try
        echohl ModeMsg
        echon ' tabstop='.&l:ts
        echon ' shiftwidth='.&l:sw
        echon ' softtabstop='.&l:sts
        if &l:et
            echon ' expandtab'
        else
            echon ' noexpandtab'
        endif
    finally
        echohl None
    endtry
endfunction

function! StripTrailingWhitespace() "{{{2
    " Preparation - save last search and cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Strip trailing white space
    %s/\s\+$//e
    " Clean up: restore previous search history and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

function! WordFrequency() range "{{{2
  let all = split(join(getline(a:firstline, a:lastline)), '\A\+')
  let frequencies = {}
  for word in all
    let frequencies[word] = get(frequencies, word, 0) + 1
  endfor
  new
  setlocal buftype=nofile bufhidden=hide noswapfile tabstop=20
  for [key,value] in items(frequencies)
    call append('$', key."\t".value)
  endfor
  sort i
endfunction
command! -range=% WordFrequency <line1>,<line2>call WordFrequency()

function! CoffeeClassSummary() "{{{2
  g!/^.\+ = require\|^\S\+\|^  [@\S]/d
endfunction

function! CoffeeClassSummary2() "{{{2
  g/^\s\s\s\s/d
endfunction

function! FindErrorCodes() "{{{2
  :%s/\(^\|\(["']\h*_\h*["']\)\@<=\).\{-}\($\|["']\h*_\h*["']\)\@=//g
  " Strip trailing characters after double quote
  :%s/^\(.\+\)\".*$/\1\"/
  " Strip trailing characters after single quote
  :%s/^\(.\+\)\'.*$/\1\'/
  " Replace single quote with double quote
  :%s/'/"/
  " Sort and remove duplicates
  :sort u
endfunction
command! FindErrorCodes call FindErrorCodes()


function! s:RunShellCommand(cmdline) "{{{2
  let isfirst = 1

  " Form the shell command
  let words = []
  for word in split(a:cmdline)
    if isfirst
      let isfirst = 0  " don't change first word (shell command)
    else
      if word[0] =~ '\v[%#<]'
        let word = expand('%:p')
      endif
      let word = shellescape(word, 1)
    endif
    call add(words, word)
  endfor
  let expanded_cmdline = join(words)

  " Open new window
  botright vnew

  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap filetype=shelloutput
  " TODO: Figure out how to get AnsiEsc to run after automatically opening one
  " of these files, based on using this filetype=shelloutput. Currently there is some problem with AnsiEsc itself using
  " some autocmd resulting in some infinite recursion.

  " For debugging, uncomment the following two lines
  " call setline(1, expanded_cmdline)
  " call setline(2, 'You entered:  ' . a:cmdline)

  " Run the shell command
  silent execute '$read !'. expanded_cmdline
  1
endfunction
command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
command! -complete=file -nargs=* ShellGit call s:RunShellCommand('git '.<q-args>)

" Commands to run last (gui and color scheme related) {{{1


colorscheme molokai

if has("gui_running")
    set guioptions-=m
    set guioptions-=T
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R
    if has("gui_gtk2")
        " Linux gVim
        set lines=999 columns=999
        set guifont=Bitstream\ Vera\ Sans\ Mono\ 14
        colorscheme molokai
    elseif has("gui_win32")
        " Windows gVim
        set lines=999 columns=999
        set guifont=Bitstream\ Vera\ Sans\ Mono:h14
    elseif has("gui_running")
        " OS X MacVim
        set lines=999 columns=999
        set guifont=Monaco:h16
    else
        " Terminal Vim
        if exists("+lines")
            set lines=50
        endif
        if exists("+columns")
            set columns=100
        endif
    endif
endif

if $TMUX == ''
    set clipboard+=unnamed
endif

" Set italics terminal output codes for iTerm2 on OS X. See :h terminal-info
" Based on a comment by Sitaktif at https://alexpearce.me/2014/05/italics-in-iterm2-vim-tmux/
" Same info at http://stackoverflow.com/questions/3494435/vimrc-make-comments-italic
if has('macunix') || system('uname -o') =~? '^darwin'
    set t_ZH=[3m
    set t_ZR=[23m
endif

" Remapping to default
nnoremap <C-i> <C-i>

scriptencoding utf-8
filetype plugin indent on
syntax enable
syntax on

set printoptions+=header:0

set printexpr=PrintFile(v:fname_in)
function! PrintFile(fname)
  call system("lp " . a:fname)
  call delete(a:fname)
  return v:shell_error
endfunc

" Manual Filetype overrides
autocmd FileType c,cpp,css,scss,ruby,javascript,html,eruby,slim,erlang set tabstop=2
autocmd FileType c,cpp,css,scss,ruby,javascript,html,eruby,slim,erlang set softtabstop=2
autocmd FileType c,cpp,css,scss,ruby,javascript,html,eruby,slim,erlang set shiftwidth=2
autocmd FileType c,cpp,css,scss,ruby,javascript,html,eruby,slim,erlang set expandtab

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

autocmd BufNewFile,BufReadPost *.cu set filetype=cuda

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType pandoc,markdown set tabstop=4
autocmd FileType pandoc,markdown set softtabstop=4
autocmd FileType pandoc,markdown set shiftwidth=4
autocmd FileType pandoc,markdown set expandtab
autocmd FileType pandoc,markdown set nospell

autocmd FileType json set conceallevel=0

autocmd FileType rst             set nospell
autocmd FileType gitcommit setlocal spell textwidth=72
autocmd FileType crontab   setlocal nobackup nowritebackup

autocmd BufNewFile,BufRead .env* set filetype=config
autocmd BufNewFile,BufRead *.ir set filetype=ebnf411ir

" Manual project specific overrides
function! ProjectSpecificSettings()
  let l:path = expand('%:p')
  if l:path =~ '/home/some/path'
    if &filetype == 'markdown'
      setlocal tabstop=4 softtabstop=4 shiftwidth=4
    elseif &filetype == 'pandoc'
      setlocal tabstop=4 softtabstop=4 shiftwidth=4
    elseif &filetype == 'scss'
      setlocal tabstop=2 softtabstop=2 shiftwidth=2
    elseif &filetype == 'css'
      setlocal tabstop=2 softtabstop=2 shiftwidth=2
    endif
endfunction
autocmd! BufReadPost,BufNewFile * call ProjectSpecificSettings()

" Custom Syntastic highlight groups
highlight MySyntasticError    term=reverse ctermbg=052 gui=undercurl guibg=#5f0000
highlight MySyntasticWarning  term=reverse ctermbg=058 gui=undercurl guibg=#5f5f00

NeoBundleCheck
