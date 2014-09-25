" vim: fdm=marker nowrap ts=4 sw=4 sts=4 et
" Author: Norman Sue
"
" NeoBundle Setup {{{1

if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

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

set scrolloff=3                 " keep 3 lines above and below cursor
set showmode                    " display the current mode
set showcmd                     " show (partial) command in bottom right

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
set foldenable                  " auto fold code
set foldmethod=marker           " markers tell where folds start and end
set foldlevel=0                 " default fold level

" Line numbering
set number                      " Line numbering on
set relativenumber              " Relative line numbering
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" Strip trailing white space and ^M characters for these file types
autocmd FileType c,cpp,css,scss,html,eruby,java,php,javascript,python,ruby,twig,xml,yml autocmd BufWritePre <buffer> call StripTrailingWhitespace()
autocmd BufNewFile,BufRead *.html.twig set filetype=html.twig

" Invisible aka hidden characters
set listchars=tab:▶\ ,eol:■,trail:•
highlight NonText guifg=#606060
highlight SpecialKey guifg=#606060

" Tag files
set tags=./tags,./TAGS,tags,TAGS,/usr/include/tags

" Clipboard
if has ('x') && has ('gui')     " on Linux: Use + register for copy & paste
    set clipboard=unnamedplus
elseif has ('gui')              " on Windows and Mac: Use * register for copy & paste
    set clipboard=unnamed
endif

" Wildmenu
set wildmenu
set wildmode=list:longest
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

" General Mappings {{{1

" Leader: Commma
let mapleader = ","

" Localleader: Single back slash
let maplocalleader = "\\"

" Disable arrow keys
nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Disable CTRL-D and CTRL-U to get in habit of not using them
map <C-u> :echo "Use { instead."<CR>
imap <C-u> :echo "Use { instead."<CR>
map <C-d> :echo "Use } instead."<CR>
imap <C-d> :echo "Use } instead."<CR>

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
nnoremap <leader>q :conf qa!<CR>

" Browse oldfiles - mnemonic: (p)reviously used files
nnoremap <localleader>p :bro ol<CR>

" Quick file editing
nnoremap <leader>ev :100vsplit ~/.vimrc<CR>

" Toggle between .c and .s file within the same folder
nnoremap <leader>asm :vsplit %:p:s,.s$,.X123X,:s,.c$,.s,:s,.X123X$,.c,<CR>

" Toggle between .cpp and .hpp file within the same folder
nnoremap <leader>hpp :vsplit %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>

" Note -- Toggle between .cpp or .c and .h file within the same folder is
" S-F2 (provided by c.vim)

" Source aka reload .vimrc
nnoremap <leader>rv :so $MYVIMRC<CR>

" Switching buffers quickly
nnoremap gn :bn<CR>
nnoremap gp :bp<CR>
nnoremap gd :bd<CR>

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" For navigating wrapped lines
nmap j gj
nmap k gk
nmap ^ g^
nmap 0 g0
nmap $ g$
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

" Buffer navigation
nnoremap <leader>w :bdelete<CR>

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
nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
nmap <leader>f6 :set foldlevel=6<CR>
nmap <leader>f7 :set foldlevel=7<CR>
nmap <leader>f8 :set foldlevel=8<CR>

" Toggle invisible aka hidden characters
nnoremap <silent> <localleader>i :set list!<CR>

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

" Command Line Mode Mappings {{{1

" Navigation
cnoremap <c-j> <down>
cnoremap <c-k> <up>
cnoremap <c-h> <S-left>
cnoremap <c-l> <S-right>

" Plugin Options and Mappings {{{1

" NeoBundle Dependencies {{{2
" NeoBundle 'Shougo/vimproc.vim', {
"       \ 'build' : {
"       \     'windows' : 'tools\\update-dll-mingw',
"       \     'cygwin' : 'make -f make_cygwin.mak',
"       \     'mac' : 'make -f make_mac.mak',
"       \     'unix' : 'make -f make_unix.mak',
"       \    },
"       \ }

" Color Schemes {{{2
NeoBundle 'flazz/vim-colorschemes'

" Status Line {{{2
set statusline=%f%m%r%h%w%q\ 
set statusline+=%{fugitive#statusline()}\    
set statusline+=[%{strlen(&fenc)?&fenc:&enc}]
set statusline+=%=      "left/right separator
set statusline+=\ C%c     "cursor column
set statusline+=\ L%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

" Relative and Absolute Line Numbers {{{2
NeoBundle 'myusuf3/numbers.vim'

" Indent Level Indicators {{{2
NeoBundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=darkgrey

" Rainbow Parentheses {{{2
NeoBundle 'luochen1990/rainbow'
nnoremap <silent> <localleader>r :RainbowToggle<CR>
autocmd VimEnter * RainbowToggle
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
        \   'parentheses': [['(',')'], ['\[','\]'], ['{','}']],
\       },
\       'css': 0,
\       'stylus': 0,
\   }
\}

" Vimshell {{{2
NeoBundle 'Shougo/vimshell.vim'
nnoremap <leader>s :80vsplit +:VimShell<CR>
imap <buffer><C-g> <Plug>(vimshell_history_neocomplete)

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

" UNIX commands {{{2
NeoBundle 'tpope/vim-eunuch'

" File Explorers {{{2
NeoBundle 'Shougo/vimfiler'
NeoBundle 'scrooloose/nerdtree'
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
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

" Autoread fix for terminal vim  {{{2
NeoBundle 'djoshea/vim-autoread'

" Unite {{{2
NeoBundle 'mileszs/ack.vim'
NeoBundle 'Shougo/unite.vim'
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

if executable('ag')
    let g:unite_source_grep_command='ag'
    let g:unite_source_grep_default_opts='--nocolor --nogroup -S -C4'
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
nnoremap [unite] <nop>

" These are Unite mappings. Take note of what's after -buffer-name=
nnoremap <silent> [unite]<space> :<C-u>Unite -toggle -auto-resize -buffer-name=mixed file_rec/async buffer file_mru bookmark<cr><c-u>
nnoremap <silent> [unite]f :<C-u>Unite -toggle -auto-resize -buffer-name=files file_rec/async<cr><c-u>
nnoremap <silent> [unite]y :<C-u>Unite -buffer-name=yanks history/yank<cr>
nnoremap <silent> [unite]l :<C-u>Unite -auto-resize -buffer-name=line line<cr>
nnoremap <silent> [unite]b :<C-u>Unite -auto-resize -buffer-name=buffers buffer<cr>
nnoremap <silent> [unite]g :<C-u>Unite -no-quit -buffer-name=search grep:.<cr>
nnoremap <silent> [unite]m :<C-u>Unite -auto-resize -buffer-name=mappings mapping<cr>
nnoremap <silent> [unite]s :<C-u>Unite -quick-match buffer<cr>

NeoBundleLazy 'osyo-manga/unite-airline_themes', {'autoload':{'unite_sources':'airline_themes'}} "{{{3
nnoremap <silent> [unite]a :<C-u>Unite -winheight=10 -auto-preview -buffer-name=airline_themes airline_themes<cr>

NeoBundleLazy 'ujihisa/unite-colorscheme', {'autoload':{'unite_sources':'colorscheme'}} "{{{3
nnoremap <silent> [unite]c :<C-u>Unite -winheight=10 -auto-preview -buffer-name=colorschemes colorscheme<cr>

NeoBundleLazy 'tsukkee/unite-tag', {'autoload':{'unite_sources':['tag','tag/file']}} "{{{3
nnoremap <silent> [unite]t :<C-u>Unite -auto-resize -buffer-name=tag tag tag/file<cr>

NeoBundleLazy 'Shougo/unite-outline', {'autoload':{'unite_sources':'outline'}} "{{{3
nnoremap <silent> [unite]o :<C-u>Unite -auto-resize -buffer-name=outline outline<cr>

NeoBundleLazy 'Shougo/unite-help', {'autoload':{'unite_sources':'help'}} "{{{3
nnoremap <silent> [unite]h :<C-u>Unite -auto-resize -buffer-name=help help<cr>

NeoBundleLazy 'Shougo/junkfile.vim', {'autoload':{'commands':'JunkfileOpen','unite_sources':['junkfile','junkfile/new']}} "{{{3
let g:junkfile#directory=expand("~/.vim/.cache/junk")
nnoremap <silent> [unite]j :<C-u>Unite -auto-resize -buffer-name=junk junkfile junkfile/new<cr>

" File Navigation {{{2
NeoBundle 'matchit.zip'
NeoBundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<leader>'
let g:EasyMotion_do_shade = 0
let g:EasyMotion_keys = 'asdfghjklqwertyuiopzxcvbnm'

" Marks {{{2
NeoBundle 'kshenoy/vim-signature'

" Undo tree {{{2
NeoBundle 'Gundo'
nnoremap <F2> :GundoToggle<CR>
let g:gundo_preview_bottom = 1

" Enhanced . repeat {{{2
NeoBundle 'tpope/vim-repeat'

" Comments {{{2
NeoBundle 'tomtom/tcomment_vim'
nnoremap <silent> <leader>cl :TComment<CR>
vnoremap <silent> <leader>cl :TComment<CR>
nnoremap <silent> <leader>cb :TCommentBlock<CR>
vnoremap <silent> <leader>cb :TCommentBlock<CR>

" Autocomplete {{{2
NeoBundle 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup=1
let g:neocomplete#data_directory='~/.vim/.cache/neocomplete'
" The following overwrites completefunc which is overwritten by vim-rails
let g:neocomplete#force_overwrite_completefunc=1

" Autoend {{{2
NeoBundle 'tpope/vim-endwise'

" Auto shiftwidth and expandtab {{{2
NeoBundle 'tpope/vim-sleuth'

" Snipmate and dependencies {{{2
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'

" Snippets {{{2
NeoBundle 'honza/vim-snippets'

" Surround {{{2
NeoBundle 'tpope/vim-surround'
autocmd FileType php let b:surround_45 = "<?php \r ?>"
autocmd FileType eruby let g:surround_45 = "<% \r %>"
autocmd FileType eruby let g:surround_61 = "<%= \r %>"

" Multiline Select {{{2
NeoBundle 'terryma/vim-multiple-cursors'

" Substitution and Typo Correction {{{2
NeoBundle 'tpope/vim-abolish'

" Character Info {{{2
NeoBundle 'tpope/vim-characterize'

" Tables {{{2
"NeoBundle 'godlygeek/tabular'
NeoBundle 'dhruvasagar/vim-table-mode'

" Git {{{2
NeoBundle 'tpope/vim-fugitive'
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gr :Gremove<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
NeoBundle 'gregsexton/gitv'
nnoremap <silent> <leader>gv :Gitv<CR>
nnoremap <silent> <leader>gV :Gitv!<CR>
NeoBundle 'airblade/vim-gitgutter'
let g:gitgutter_highlight_lines = 0

" Heroku {{{2
NeoBundle 'tpope/vim-heroku'

" Databases {{{2
NeoBundle 'vim-scripts/dbext.vim'

" LaTeX {{{2
NeoBundle 'LaTeX-Suite-aka-Vim-LaTeX'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
let g:Tex_ViewRuleComplete_pdf = 'evince $*/index.pdf &'
let g:Tex_ViewRuleComplete_html = '/opt/firefox/firefox-bin $*/index.html &'
nnoremap <leader><leader>ll :!pdflatex -interaction=nonstop %<CR>

" Markdown and Pandoc {{{2
NeoBundle 'vim-pandoc/vim-pandoc'
NeoBundle 'vim-pandoc/vim-pandoc-syntax'
let g:pandoc_syntax_fill_codeblocks = 1

" C/C++ {{{2
NeoBundle 'vim-scripts/c.vim'
NeoBundle 'CRefVim'
NeoBundle 'vim-scripts/a.vim'

" Tags {{{2
NeoBundle 'xolox/vim-easytags'
let g:easytags_by_filetype = '~/.vim/.cache/tags'
let g:easytags_async = 1
let g:easytags_include_members = 1
let g:easytags_languages = {
\  'javascript': {
\    'cmd': 'ctags'
\  },
\  'ruby': {
\    'cmd': 'ripper-tags'
\  }
\}
nnoremap <Leader>ct :!ctags-proj.sh<CR>
NeoBundle 'xolox/vim-misc'
NeoBundle 'majutsushi/tagbar'
if executable('jsctags')
  let g:tagbar_type_javascript = {
    \'ctagsbin' : '/usr/local/bin/jsctags'
    \ }
endif
nmap <F8> :TagbarToggle<CR>
" for jsctags: use mozilla/doctorjs, not ramitos/jsctags

" HTML {{{2
NeoBundle 'mattn/emmet-vim'
autocmd FileType html,css,eruby imap <tab> <Plug>(emmet-expand-abbr)
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

" Slim {{{2
NeoBundle 'slim-template/vim-slim'

" Jade {{{2
NeoBundle 'digitaltoad/vim-jade'

" CSS {{{2

" SASS, SCSS, Haml {{{2
NeoBundle 'tpope/vim-haml'

" LESS {{{2
NeoBundle 'groenewege/vim-less'

" Stylus {{{2
NeoBundle 'wavded/vim-stylus'

" JSON {{{2
NeoBundle 'tpope/vim-jdaddy'
NeoBundle 'elzr/vim-json'

" JavaScript {{{2
NeoBundle 'pangloss/vim-javascript'
let g:javascript_enable_domhtmlcss = 1

NeoBundle 'maksimr/vim-jsbeautify'
" Specify vim-jsbeautify styling in ~/.editorconfig
autocmd FileType javascript vnoremap <buffer> <localleader>b :call BeautifyRange()
function BeautifyRange()
    setlocal modifiable
    call RangeJsBeautify()
endfunction

NeoBundle 'marijnh/tern_for_vim'
let g:tern#command = ['tern', '--no-port-file']
let g:tern_show_signature_in_pum = 1

NeoBundle 'jimmyhchan/dustjs.vim'

function! RunWithNode()
    let node_command = "node"
    let current_file = shellescape(expand('%:p'))
    let output = system(node_command . " " . current_file)
    echon output
endfunction
command! -nargs=0 RunWithNode call RunWithNode()
nnoremap <silent> <leader>node :RunWithNode<CR>

" Run Jasmine tests
nnoremap <leader>jas :wa \|! jasmine-node spec --noColor <CR>

" CoffeeScript {{{2
NeoBundle 'kchmck/vim-coffee-script'
let g:coffee_compile_vert = 1
let g:coffee_watch_vert = 1
let g:coffee_run_vert = 1
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
NeoBundle 'lukaszkorecki/CoffeeTags'
let g:CoffeeAutoTagIncludeVars=1

" Ruby {{{2
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rbenv'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'tpope/vim-rake'
NeoBundle 'tpope/vim-rails'
command -bar -nargs=1 OpenURL :!google-chrome <args>
NeoBundle 'tpope/vim-bundler'
NeoBundle 'ecomba/vim-ruby-refactoring' "docs: https://relishapp.com/despo/vim-ruby-refactoring/docs
NeoBundle 'ngmy/vim-rubocop'
nnoremap <silent> <leader>rc :RuboCop<CR>
let g:vimrubocop_config = '$HOME/.rubocop.yml'

" Scala {{{2
NeoBundle 'derekwyatt/vim-scala'

" Go {{{2
NeoBundle 'fatih/vim-go'

" ICO, PNG, GIF {{{2
NeoBundle 'tpope/vim-afterimage'

" Syntax Checking {q{{2
NeoBundle 'scrooloose/syntastic'
let g:syntastic_check_on_open = 0
let g:syntastic_html_checkers = ['w3']
let g:syntastic_html_validator_parser = "html5"
let g:syntastic_html_tidy_exec = "/usr/local/bin/tidy"
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_jshint_exec='/usr/local/bin/jshint'

" Syntax Highlighting in Range {{{2
NeoBundle 'vim-scripts/SyntaxRange'

" Micellaneous Functions and Autocommands {{{1

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

" Commands to run last (gui and color scheme related) {{{1

" Color the cursor absolute number at the left margin
autocmd ColorScheme * hi CursorLineNr guifg=#7F7F7F ctermfg=8

" Color the concealed text elements (such as those when using vim-pandoc)
autocmd ColorScheme * hi Conceal guifg=#F8F8F2 guibg=#272822

" Color the TeX bold italics (e.g. MyColor)
autocmd ColorScheme * hi texItalBoldStyle ctermfg=16 ctermbg=161 guifg=#F92672

" Color the Conceal (e.g. in pandoc files) to link to Normal
" '!' forces the link despite existing highlight settings for Conceal
autocmd ColorScheme * highlight! link Conceal Normal

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
        set guifont=Bitstream\ Vera\ Sans\ Mono\ for\ Powerline\ 12
        colorscheme molokai
    elseif has("gui_win32")
        " Windows gVim
        set lines=999 columns=999
        set guifont=Bitstream\ Vera\ Sans\ Mono:h12
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

" Remapping to default
nnoremap <C-i> <C-i>

scriptencoding utf-8
filetype plugin indent on
syntax enable
syntax on
NeoBundleCheck

set printoptions+=header:0

set printexpr=PrintFile(v:fname_in)
function! PrintFile(fname)
  call system("lp " . a:fname)
  call delete(a:fname)
  return v:shell_error
endfunc

" Manually set tab settings
autocmd FileType c,cpp,css,scss,ruby,javascript,html,eruby,slim set tabstop=2
autocmd FileType c,cpp,css,scss,ruby,javascript,html,eruby,slim set softtabstop=2
autocmd FileType c,cpp,css,scss,ruby,javascript,html,eruby,slim set shiftwidth=2
autocmd FileType c,cpp,css,scss,ruby,javascript,html,eruby,slim set expandtab

autocmd FileType pandoc set tabstop=4
autocmd FileType pandoc set softtabstop=4
autocmd FileType pandoc set shiftwidth=4

" Git commit messages
autocmd FileType gitcommit setlocal spell textwidth=72
