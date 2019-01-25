" 插件列表 ----------------------------------- {{{

call plug#begin('~/.vim/plugged')

" 显示
Plug 'elzr/vim-json'                " 更好的json高亮
Plug 'kien/rainbow_parentheses.vim' " 彩虹括号
Plug 'itchyny/lightline.vim'        " 轻量级底部状态栏
Plug 'Yggdroot/indentLine'          " 在代码缩进处显示竖直虚线

" 查找
" Plug 'rking/ag.vim'                        " 当前目录下 内容搜索 :Ag 或者 选中单词后nhrmal模式\A
" Plug 'Chun-Yang/vim-action-ag'             " 当前目录下 类容搜索，
Plug 'haya14busa/incsearch.vim'            " 当前文件中 增强vim自带的 ? 和 / 搜索
Plug 'haya14busa/incsearch-fuzzy.vim'      " incsearch的扩展 添加模糊匹配
Plug 'haya14busa/incsearch-easymotion.vim' " incsearch的扩展 提供跳转功能
Plug 'easymotion/vim-easymotion'           " 当前文件中快速跳转 incsearch-easymotion.vim插件依赖该插件 开始匹配后按tab向后翻页 s-tab向前翻页

" 注释插件
Plug 'scrooloose/nerdcommenter'     " 快速注释 insert模式C-c注释单行
Plug 'tomtom/tcomment_vim'  
" Plug 'tyru/caw.vim'                 " 提供根据文件类型注释
" 装了后没有用，并不能正确的再html中注释js，鬼知道为什么
" Plug 'Shougo/context_filetype.vim'  " 提供依赖上下文的注释，方便在html中注释js代码


" 快速操作
Plug 'tpope/vim-surround'             " 方便在字符两边插入符号
Plug 'terryma/vim-expand-region'      " 区域选择 通过 + - 来扩大或减小选中区域
Plug 'junegunn/vim-easy-align'        " 代码对齐
Plug 'jiangmiao/auto-pairs'           " 自动补全括号
Plug 'terryma/vim-multiple-cursors'   " 多光标操作 c-n


" 文本对象
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'                " 缩进对象 ii & ai
Plug 'kana/vim-textobj-syntax'                " 语法对象 ay & iy
Plug 'kana/vim-textobj-function'              " 函数对象
Plug 'coderifous/textobj-word-column.vim'     " 列对象 ic & ac
Plug 'thinca/vim-textobj-function-javascript' "{ js函数对象
Plug 'rhysd/vim-textobj-anyblock'             " 任意块对象
" ib is a union of i(, i{, i[, i', i" and i<.
" ab is a union of a(, a{, a[, a', a" and a<.
Plug 'thalesmello/vim-textobj-methodcall'     " 匹配方法调用 im & am
Plug 'whatyouhide/vim-textobj-xmlattr'        " xml 中的属性对象

" html/xml
Plug 'othree/xml.vim'
Plug 'mattn/emmet-vim'
Plug 'Valloric/MatchTagAlways' " 高亮标签
Plug 'sheerun/vim-polyglot'

" 其他
" Plug 'ludovicchabant/vim-gutentags'                " 自动索引
" Plug 'mhinz/vim-signify'                           " 显示当前文件和仓库中的版本的差异
Plug 'tpope/vim-fugitive'                          " git插件
Plug 'mbbill/undotree'                             " 文件修改记录 f5 打开撤销记录面板
Plug 'morhetz/gruvbox'                             " 颜色主题
Plug 'majutsushi/tagbar'                           " 代码分析，显示当前文件结构
Plug 'scrooloose/nerdtree',{'on':'NERDTreeToggle'} " 目录树 ctrl-n
Plug 'tpope/vim-unimpaired'                        " 多余的快捷键
Plug 'Yggdroot/LeaderF'                            " 文件，标签，缓冲区直接定位
Plug 'tpope/vim-repeat'                            " 使用 . 重复插件的操作
Plug 'Karmenzind/vim-tmuxlike'                     " 仿tmux操作
Plug 'dhruvasagar/vim-table-mode'                  " 画表格
Plug 'vim-scripts/DrawIt'                          " 画图
Plug 'ervandew/supertab'                           " tab 补全
Plug 'itchyny/vim-gitbranch'                       " 在状态栏中显示分支名称

" 格式化
Plug 'google/vim-codefmt'                          " 代码格式化
Plug 'google/vim-maktaba'                          " codefmt的依赖
Plug 'google/vim-glaive'                           " codefmt的依赖

" Clojure plugins
" Plug 'tpope/vim-fireplace'
" Plug 'guns/vim-clojure-static'
" Plug 'guns/vim-clojure-highlight'

" kotlin
Plug 'udalov/kotlin-vim'

call plug#end()            " 必须

" }}}

" 基础选项设置 ---------------------------- {{{

set nocompatible               " 关闭vi兼容模式
set encoding=utf-8         " 文件编码
set guifont=Inziu\ Iosevka\ SC:h14 " 字体
set ttyfast         " 使用快速终端连接
filetype plugin indent on  " 根据文件类型加载插件和相关脚本
set ignorecase smartcase   " 搜索不区分大小写，但是当输入有大小写时使用大小写敏感匹配
set showcmd                " 在屏幕底段显示命令
set scrolloff=4            " 光标移动到buffer的顶部和底部时保持3行距离
set textwidth=100 " 插入文本的最大宽度
set expandtab              " 空格代替制表符
set smarttab               " 在行和段开始处用制表符
set tabstop=2              " Tab键的宽度
set softtabstop=2          " 统一缩进为2
set shiftwidth=2
set number        " 显示行号
set t_Co=256               " 开启256色
set history=1000           " 历史记录数
set helplang=cn            " 帮助文档语言
set vb t_vb=               " 关闭vim中的错误响铃和闪烁
colorscheme gruvbox        " 设置主题配色
set background=dark
let mapleader = ","        " 将leader键改为","
syntax on                  " 语法高亮
set fileformat=unix        " 使用 unix 行结束符
set autowrite              " 自动保存
set laststatus=2           " 总是显示状态行
set backspace=indent,start " 使用回格键（backspace）正常处理indent，eol，start等
set confirm                " 在处理未保存或只读文件时弹出确认
set cindent                " c语言缩进风格
set autoindent             " 自动缩进
set smartindent            " 当遇到右花括号时取消缩进形式
set noswapfile             " 禁用交换文件
set showmatch              " 高亮显示匹配括号
set foldmethod=marker " 设置折叠模式
set foldcolumn=2 " 设置折叠栏宽度
" set foldlevel=100 " 启动vim时不折叠
set wildmenu               " 状态栏自动补全

" 打开vim时自动跳转到上次离开的位置
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
" }}}

" 基础映射 ------------------------------- {{{

" 单词转大写
" inoremap <c-u> <esc>bgUwwa
" nnoremap <c-u> gUiw
" 纵向打开配置文件
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" 重新加载配置文件
nnoremap <leader>sv :source $MYVIMRC<cr>
" 普通模式下按\n取消搜索后的高亮显示
nnoremap \n :noh<cr>
" 按v退出可视模式
vnoremap v <Esc>
" 复制整行
nnoremap Y Vy
" 粘贴并缩进
nnoremap P p==
" 跳到行首
nnoremap H ^
" 跳到行尾
nnoremap L $
" 退出插入模式
inoremap jj <Esc>
inoremap jk <Esc>
inoremap kk <Esc>
" 调整窗口大小
nnoremap <c-up>  :res+5<cr>
nnoremap <c-down> :res-5<cr>
nnoremap <c-left> :vertical res-5<cr>
nnoremap <c-right> :vertical res+5<cr>

" }}}

" gui相关 ------------------------------------ {{{

if has("gui_running")
  set guioptions-=T      "  隐藏工具栏
  set guioptions-=m      " 隐藏菜单栏
  set clipboard+=unnamed " 共享剪贴板
  set relativenumber     " 相对行号
  set cursorline         " 高亮当前行 性能影响较大
  set cursorcolumn       " 高亮当前列
  "设定窗口位置
  "winpos 500 200
  " 插入模式下直接另起一行并移动到行首(<S-CR>只在gvim中起作用，终端中无法识别)
  inoremap <S-CR> <Esc>o  
  " ctrl-s 保存文件
  inoremap <c-s> <Esc>:w<CR>a
  nnoremap <c-s> :w<CR>
  " gvim下用c-6替换c-],programming dvorak布局在win下的gui程序中输入的c-]会变成
  " c-6,估计c-6是c-^的别名，所以将c-^映射到c-]就能解决问题
  nnoremap <c-^> <c-]>
else
  inoremap <C-l> <Esc>o
endif

" }}}

" 平台相关 -------------------------------{{{

" 算了，还是手动切换把，win10那个bug太烦人了
" 在windows下从insert模式离开时切换至英文输入法
" 需要从github下载im-select.exe
" https://github.com/daipeihust/im-select
" 获取当前输入法的常量值
" d:\im-select.exe 
" 用输入法的常量值locale作为参数，执行命令就能切换至指定输入法
" d:\im-select.exe locale
" windows系统不自带uname命令，需要安装gow以获取uname命令
" https://github.com/bmatzelle/gow
" windows有bug，替换中文输入法的layout file为kbddvp.dll后
" 有时切换输入法时，会导致布局变成qwerty，无法复现
" 碰到这种情况再次切换输入法就恢复了
" 微软中文输入法注册表位置
" Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layouts\00000804
if has('win32')
  " autocmd InsertLeave * execute "!start /b g:\\sysTool\\switch-im\\im-select.exe 1033"
  " autocmd InsertLeave * execute system("g:\\sysTool\\switch-im\\im-select.exe 1033")
  set pythonthreedll=G:\Scoop\apps\python\3.7.1\python37.dll
  set shell=cmd
  set shellcmdflag=/c
endif

" }}}

" 根据文件类型加载具体配置文件 ----------------------- {{{

autocmd FileType html set iskeyword=@,48-57,_,192-255,58,-,$
autocmd FileType java source ~/.vim/java.vim
" autocmd! FileType java iabbrev psvm public static void main(String[] args){<Enter>}<esc>ka
" autocmd VimEnter * source ~/.vim/command.vim
command! WQ wq
command! Wq wq
command! W w
command! Q q

" }}}

" 状态栏属性 (itchyny/lightline.vim)--------------------{{{
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype',
      \                 'charvaluehex', 'numberOfLinesInBuffer' ] ]
      \ },
      \ 'component_function':{
      \   'gitbranch': 'fugitive#head',
      \ },
      \ 'component': {
      \   'charvaluehex': '0x%B',
      \   'numberOfLinesInBuffer': '%L',
      \ },
      \ }
" }}}

" 彩虹括号 (kien/rainbow_parentheses.vim)--------------------{{{
 let g:rbpt_colorpairs = [
     \ ['brown',       'RoyalBlue3'],
     \ ['Darkblue',    'SeaGreen3'],
     \ ['darkgray',    'DarkOrchid3'],
     \ ['darkgreen',   'firebrick3'],
     \ ['darkcyan',    'RoyalBlue3'],
     \ ['darkred',     'SeaGreen3'],
     \ ['darkmagenta', 'DarkOrchid3'],
     \ ['brown',       'firebrick3'],
     \ ['black',       'SeaGreen3'],
     \ ['darkmagenta', 'DarkOrchid3'],
     \ ['Darkblue',    'firebrick3'],
     \ ['darkgreen',   'RoyalBlue3'],
     \ ['darkcyan',    'SeaGreen3'],
     \ ['darkred',     'DarkOrchid3'],
     \ ['red',         'firebrick3'],
     \ ]

     "\ ['gray',        'RoyalBlue3'],
 let g:rbpt_max = 16
 let g:rbpt_loadcmd_toggle = 0

 au VimEnter * RainbowParenthesesToggle
 au Syntax * RainbowParenthesesLoadRound
 au Syntax * RainbowParenthesesLoadSquare
 au Syntax * RainbowParenthesesLoadBraces
" }}} 

" Evaluate Clojure buffers on load
" autocmd BufRead *.clj try | silent! Require | catch /^Fireplace/ | endtry

" tagbar
" nmap <F8> :TagbarToggle<CR>

" 侧边栏目录树(scrooloose/nerdtree)--------------------{{{
map <F3> :NERDTreeToggle<CR>
" }}}

" ag.vim
" 停留在当前字符串上按"\A"会在当前项目中查找该字符串
" command! -bang -nargs=* Ag
"   \ call fzf#vim#ag(<q-args>,
"   \                 <bang>0 ? fzf#vim#with_preview('up:60%')
"   \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
"   \                 <bang>0)
" nnoremap <silent> <Leader>A :Ag<CR>


" 自动注释(scrooloose/nerdcommenter)--------------------{{{

" nerdcommenter
" Add spaces after comment delimiters by default
 let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
 " let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
 let g:NERDAltDelims_java = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
 let g:NERDTrimTrailingWhitespace = 1
" " Enable NERDCommenterToggle to check all selected lines is commented or not 
 let g:NERDToggleCheckAllLines = 1
imap <C-c> <plug>NERDCommenterInsert
nmap <C-c> <plug>NERDCommenterToggle
" }}}

" 代码格式对齐 (junegunn/vim-easy-align)--------------------{{{
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}}

" 查找 (Chun-Yang/vim-action-ag,haya14busa/incsearch.vim,haya14busa/incsearch-easymotion.vim)--------------------{{{

" vim-action-ag
" 使用这些特殊字符的字面意思而不是转义
" let g:vim_action_ag_escape_chars = '#%.^$*+?()[{\\|'
" use * to search current word in normal mode
" nmap * <Plug>AgActionWord
" " use * to search selected text in visual mode
" vmap * <Plug>AgActionVisual
"Normal Mode
    "gagiw to search the word
    "gagi' to search the words inside single quotes.
"Visual Mode
    "gag to search the selected text



" incsearch-fuzzy
" 模糊查找
" map z/ <Plug>(incsearch-fuzzy-/)
" map z/ <Plug>(incsearch-fuzzy-/)
" map z? <Plug>(incsearch-fuzzy-?)
 map z/ <Plug>(incsearch-fuzzy-stay)
 map z? <Plug>(incsearch-fuzzy-?)
 map zg/ <Plug>(incsearch-fuzzy-stay)

" incsearch-easymotion
"map / <Plug>(incsearch-easymotion-/)
"map ? <Plug>(incsearch-easymotion-?)
"map g/ <Plug>(incsearch-easymotion-stay)

" incsearch.vim x fuzzy x vim-easymotion
" 模糊查找+跳转
function! s:config_easyfuzzymotion(...) abort
    return extend(copy({
      \   'converters': [incsearch#config#fuzzy#converter()],
      \   'modules': [incsearch#config#easymotion#module()],
      \   'keymap': {"\<CR>": '<Over>(easymotion)'},    
      \   'is_expr': 0,
      \   'is_stay': 1
      \  }), get(a:, 1, {}))
endfunction
"\<CR>是转义因为包裹在引号中，直接输入回车就行
noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())

" vim-easymotion
" f{char} to move to {char} 当前行内跳转到字符
map  f <Plug>(easymotion-bd-fl)
" <Leader>f{char} to move to {char} 当前屏幕内跳转到字符
map <leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line 当前屏幕内跳转到行,功能由<leader>j <leader>k取代
" map <Leader>l <Plug>(easymotion-bd-jk)
" nmap <Leader>l  <Plug>(easymotion-overwin-line)

" Move to word 当前屏幕内跳转到单词
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" 全文搜索+跳转 按回车后可以用n/N上下移动选词
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" ct{x} 或者 dt{x}有效,在当前行内跳转
map t <Plug>(easymotion-bd-tl)
"omap t <Plug>(easymotion-bd-tl)

" 减少jkhl操作
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" Use uppercase target labels and type as a lower case
"let g:EasyMotion_use_upper = 1
"let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'
" type `l` and match `l`&`L` 不区分大小写
let g:EasyMotion_smartcase = 1
" Smartsign (type `3` and match `3`&`#`)
let g:EasyMotion_use_smartsign_us = 1

" keep cursor column when JK motion
let g:EasyMotion_startofline = 0

" LeaderF
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<A-s>'
noremap <A-r> :LeaderfMru<cr>
" 打开函数列表,m-p快捷键被其他插件占用了
"noremap <m-p> :LeaderfFunction!<cr>
noremap <A-f> :LeaderfFunction!<cr>
noremap <A-b> :LeaderfBuffer<cr>
noremap <A-t> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': ''  }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

" }}}

" vim-repeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" vim-json
" 不隐藏包裹json键值对的引号
let g:vim_json_syntax_conceal = 0

" 撤销树(mbbill/undotree)--------------------{{{
nnoremap <F5> :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif
" }}}

" vim-expand-region
" - 号缩小选中区域
nnoremap - <Plug>(expand_region_shrink)

" 代码格式化(google/vim-codefmt)--------------------{{{
call glaive#Install()
Glaive codefmt plugin[mappings]
" Glaive codefmt google_java_executable="java -jar C:\Users\zodal\.vim\google-java-format-1.6-all-deps.jar"
Glaive codefmt google_java_executable="java -jar /home/zodal/.vim/google-java-format-1.7-all-deps.jar"
augroup autoformat_settings
    " autocmd FileType bzl AutoFormatBuffer buildifier
    autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
    " autocmd FileType dart AutoFormatBuffer dartfmt
    " autocmd FileType go AutoFormatBuffer gofmt
    " autocmd FileType gn AutoFormatBuffer gn
    " google-codefmt在这里有bug，且js-beautifly无法正确格式化html中的js和css
    autocmd FileType html,css,json AutoFormatBuffer js-beautify
    autocmd FileType java AutoFormatBuffer google-java-format
    autocmd FileType python AutoFormatBuffer yapf
    " Alternative: autocmd FileType python AutoFormatBuffer autopep8
augroup END
" }}}

" vim-tmuxlike
" nmap <c-\> <Plug>(tmuxlike-prefix)
" nmap <Leader><Leader> <Plug>(tmuxlike-prefix)



" auto-pairs
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

" indentLine
let g:indentLine_setColors = 0
let g:indentLine_char='┆'

