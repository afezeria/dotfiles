set nocompatible               " be iMproved
"filetype off                   " required!

call plug#begin('~/.vim/plugged')


" Plugins
" 显示
Plug 'elzr/vim-json'                  " 更好的json高亮
Plug 'kien/rainbow_parentheses.vim'   " 彩虹括号
Plug 'vim-airline/vim-airline'        " 底部状态栏
Plug 'vim-airline/vim-airline-themes' " 底部状态栏颜色主题

" 查找
"Plug 'kien/ctrlp.vim'                      " 当前项目中 文件查找 ctrl-p
Plug 'rking/ag.vim'                        " 当前目录下 内容搜索 :Ag 或者 选中单词后nhrmal模式\A
Plug 'Chun-Yang/vim-action-ag'             " 当前目录下 类容搜索，
Plug 'haya14busa/incsearch.vim'            " 当前文件中 增强vim自带的 ? 和 / 搜索
Plug 'haya14busa/incsearch-fuzzy.vim'      " incsearch的扩展 添加模糊匹配
Plug 'haya14busa/incsearch-easymotion.vim' " incsearch的扩展 提供跳转功能
Plug 'easymotion/vim-easymotion'           " 当前文件中快速跳转 与vim-sneak功能重复，但是incsearch-easymotion.vim插件依赖该插件不得不安装


" 快速操作
Plug 'tpope/vim-commentary'           " 快速注释 normal模式按gc配合其他移动键注释
Plug 'scrooloose/nerdcommenter'       " 快速注释 insert模式C-c注释单行
Plug 'tpope/vim-surround'             " 方便在字符两边插入符号
Plug 'terryma/vim-expand-region'      " 区域选择 通过 + _ 来扩大或减小选中区域
Plug 'junegunn/vim-easy-align'        " 代码对齐
Plug 'jiangmiao/auto-pairs'           " 自动补全括号
Plug 'terryma/vim-multiple-cursors'   " 多光标操作 c-n

" 文本对象
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'java']  } " 通过af选择整个函数 if 选择整个函数中的代码 e.g. vif选中函数中所有代码 daf 删除整个个函数


                                                                      " 其他
Plug 'mbbill/undotree'                                                " 文件修改记录 f5 打开撤销记录面板
Plug 'morhetz/gruvbox'                                                " 颜色主题
Plug 'majutsushi/tagbar'                                              " 代码分析，显示当前文件结构
Plug 'scrooloose/nerdtree',{'on': 'NERDTreeToggle'}                   " 目录树 ctrl-n
Plug 'gregsexton/gitv', {'on': ['Gitv']}                              " git插件
Plug 'tpope/vim-git'                                                  " gitv的依赖
Plug 'tpope/vim-fugitive'                                             " gitv的依赖
" Plug 'w0rp/ale'                                                     " 代码动态检测
Plug 'tpope/vim-unimpaired'                                           " 多余的快捷键
Plug 'ludovicchabant/vim-gutentags' , { 'for':['c', 'cpp', 'java']  } " 自动索引
Plug 'Yggdroot/LeaderF'                                               " 文件，标签，缓冲区直接丁文
Plug 'mhinz/vim-signify'                                              " 显示当前文件和仓库中的版本的差异
Plug 'google/vim-codefmt'                                             " 代码格式化
Plug 'google/vim-maktaba'                                             " codefmt的依赖
Plug 'google/vim-glaive'                                              " codefmt的依赖
Plug 'tpope/vim-repeat'                                               " 使用 . 重复插件的操作



" Clojure plugins
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'

call plug#end()            " 必须

"根据文件类型加载插件和相关脚本
filetype plugin indent on    
"设置字体 只要有gvim需要
" set guifont=Inziu\ Iosevka\ SC:h14
" 搜索不区分大小写，但是当输入有大小写时使用大小写敏感匹配
set ignorecase smartcase
" 光标处字符加下划线
highlight MatchParen cterm=underline ctermbg=NONE ctermfg=NONE
"输入的命令显示出来，看的清楚些
set showcmd
"设定窗口位置
"winpos 500 200
"set cmdheight=1     " 命令行（在状态行下）的高度，设置为1
"在标尺显示当前光标的位置
set ruler
"高亮当前行
set cursorline
"高亮当前列
set cursorcolumn
"设置魔术
set magic
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
"是否用空格代替制表符
"set noexpandtab
set expandtab
"在行和段开始处用制表符
set smarttab
" Tab键的宽度
set tabstop=4
"统一缩进为4
set softtabstop=4
set shiftwidth=4
" 显示行号
set nu
" 历史记录数
set history=1000
"set guifont=Inziu_Iosevka_SC:h12


set helplang=cn
set encoding=utf-8
"set ambiwidth=double "防止特殊符号无法显示
"关闭vim中的错误提示音
set vb t_vb=
"set noeb
"设置主题配色
"colorscheme solarized
"colorscheme default
"colorscheme ron
colorscheme gruvbox
set background=dark
"将leader键改为","
"let mapleader = ","
"语法高亮
syntax enable
syntax on

"我也不知道是什么，大概是在行尾显示$符号？
set list
"替换 tab 键和行尾？
set listchars=tab:>-
"使用 unix 行结束符
set fileformat=unix
"自动缩进c风格
"set cindent
"set autoindent
"禁止生成临时文件
"if has("vms")
"    set nobackup
"else
"    set backup
"endif
"set noswapfile
"自动保存
set autowrite
"总是显示状态行
set laststatus=2
"使用回格键（backspace）正常处理indent，eol，start等
set backspace=indent,start
"高亮显示匹配括号有rainbow_parentheses插件后不需要了
"set showmatch
"隐藏工具栏
"set guioptions-=T
""隐藏菜单栏
"set guioptions-=m
"在处理未保存或只读文件时弹出确认
set confirm
"共享剪贴板
"set clipboard+=unnamed
" 插入模式下直接另起一行并移动到行首(<S-CR>只在gvim中起作用，终端中无法识别)
if has("gui_running")
    inoremap <S-CR> <Esc>o
else
    inoremap <C-l> <Esc>o
endif
" gvim下用c-6替换c-],programming dvorak布局在win下的gui程序中输入的c-]会变成
" c-6,估计c-6是c-^的别名，所以将c-^映射到c-]就能解决问题
if has("gui_running") 
    nnoremap <c-^> <c-]>
endif

"set statusline=%F%m%r%h%w%=%<\ [%Y]\ %{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\"\":\"\").\"]\"}\ [%{&ff}]\ [asc=%03.3b]\ [hex=%02.2B]\ [%04l(%L),%04v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}


 " Rainbow Parentheses
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

" Evaluate Clojure buffers on load
autocmd BufRead *.clj try | silent! Require | catch /^Fireplace/ | endtry

" tagbar
nmap <F8> :TagbarToggle<CR>

" nerdtree
map <F3> :NERDTreeToggle<CR>

" ag.vim
" 停留在当前字符串上按"\A"会在当前项目中查找该字符串
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
nnoremap <silent> <Leader>A :Ag<CR>

" vim-airline-themes
"let g:airline_theme='molokai'
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1
"顶部tab显示"
let g:airline#extensions#tabline#enabled=1 
"打开tabline功能,方便查看Buffer和切换,省去了minibufexpl插件
let g:airline#extensions#tabline#buffer_nr_show = 1
nmap <tab> :bn<cr> "设置tab键映射"
"let g:airline_section_z='%{strftime(\"%d/%m/%y\ -\ %H:%M\")}'
" let g:airline_section_b='[%04l(%L),%04v][%p%%]\' %{strftime("%d/%m/%y\-\%H:%M")}'
let g:airline_section_z='%p%% ☰ %l/%L%v | %{strftime("%d/%m/%y-%H:%M")}'


" vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" vim-action-ag
" 使用这些特殊字符的字面意思而不是转义
let g:vim_action_ag_escape_chars = '#%.^$*+?()[{\\|'
" use * to search current word in normal mode
nmap * <Plug>AgActionWord
" " use * to search selected text in visual mode
vmap * <Plug>AgActionVisual
"Normal Mode
    "gagiw to search the word
    "gagi' to search the words inside single quotes.
"Visual Mode
    "gag to search the selected text
" 普通模式下按\n取消搜索后的高亮显示
nmap \n :noh<cr>

" nerdcommenter
" Add spaces after comment delimiters by default
 let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
 let g:NERDCompactSexyComs = 1
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

" sneak
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1

" " incsearch
" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)

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
"
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

" Use uppercase target labels and type as a lower case
"let g:EasyMotion_use_upper = 1
"let g:EasyMotion_keys = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ;'

" type `l` and match `l`&`L`
let g:EasyMotion_smartcase = 1
" Smartsign (type `3` and match `3`&`#`)
let g:EasyMotion_use_smartsign_us = 1
" keep cursor column when JK motion
let g:EasyMotion_startofline = 0 
" <Leader>f{char} to move to {char} 当前屏幕内跳转到字符
" map  <Leader>f <Plug>(easymotion-bd-f)
" nmap <Leader>f <Plug>(easymotion-overwin-f)
map  f <Plug>(easymotion-bd-f)
nmap f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line 当前屏幕内跳转到行
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l  <Plug>(easymotion-overwin-line)

" Move to word 当前屏幕内跳转到单词
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" 全文搜索+跳转 按回车后可以用n/N上下移动选词
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" Bidirectional & within line 't' motion
" ct{x} 或者 dt{x}有效,在当前行内跳转
map t <Plug>(easymotion-bd-tl)

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" vim-repeat
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)


" vim-json
" 不隐藏包裹json键值对的引号
let g:vim_json_syntax_conceal = 0

" undotree
nnoremap <F5> :UndotreeToggle<cr>
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

" vim-gutentags
set tags=./.tags;,.tags

" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" " 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

"" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
"
" " 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif

" LeaderF
let g:Lf_ShortcutF = '<c-p>'
"let g:Lf_ShortcutB = '<c-s>' 和下面的c-b功能相同但不知道为什么会卡死
noremap <c-m> :LeaderfMru<cr>
" 打开函数列表,m-p快捷键被其他插件占用了
"noremap <m-p> :LeaderfFunction!<cr>
noremap <c-f> :LeaderfFunction!<cr>
noremap <c-b> :LeaderfBuffer<cr>
noremap <c-t> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': ''   }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}


" vim-autoformat
" noremap <F3> :Autoformat<CR>
" let g:autoformat_verbosemode=1

" json 格式化
"command! JsonFormat :execute '%!python -m json.tool'

" vim-expand-region
map - <Plug>(expand_region_shrink)

" google-codefmt
call glaive#Install()
Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /home/zodal/.vim/google-java-format-1.6-all-deps.jar"
augroup autoformat_settings
    " autocmd FileType bzl AutoFormatBuffer buildifier
    autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
    " autocmd FileType dart AutoFormatBuffer dartfmt
    " autocmd FileType go AutoFormatBuffer gofmt
    " autocmd FileType gn AutoFormatBuffer gn
    autocmd FileType html,css,json AutoFormatBuffer js-beautify
    autocmd FileType java AutoFormatBuffer google-java-format
    autocmd FileType python AutoFormatBuffer yapf
    " Alternative: autocmd FileType python AutoFormatBuffer autopep8
augroup END

if exists('$TMUX')
    set term=screen-256color
endif
