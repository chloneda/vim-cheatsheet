" ===============================================================================
" Author: chloneda <chloneda@163.com>
" Repository: https://github.com/chloneda/vim-cheatsheet
" Blog: https://www.cnblogs.com/chloneda
" Create Date: 2020-02-01
" Desc:  Vim 定制化配置文件(vimrc for Unix/Linux/Windows/Mac, GUI/Console)
" License: MIT
" ===============================================================================
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc
" +----------+-------------------------------------------------------------------
" | Key      | Function
" +----------+-------------------------------------------------------------------
" | F1       | 取消 Vim 查找高亮显示
" | F2       | 打开(或关闭)显示行号
" | F3       | 显示非可见字符
" | F4       | 设置代码自动折行
" | F5       | 删除所有空行
" | F6       | 打开(或关闭) 语法高亮
" | F7       | 自动补全代码
" | F8       | 普通或插入模式下打开或关闭 Markdown 预览
" | F9       | 新标签页打开终端 terminal，方便执行外部命令
" | F10      | 新建标签页
" | F11      | 非空行后间隔（加入空行）
" | F12      |
" | <Ctrl+c> | 快速推出 Vim（:qall!）
" +----------+-------------------------------------------------------------------
"
" Notes:
"   1、Vim 脚本注释是以 " 开头的，只存在行注释，不存在块注释。
"   2、配置文件中的 <Leader> 前缀键默认是 "\" 键，可重置。
"   3、本配置文件需提前安装 vim-plug 插件，配置也力求达到一次编写，跨平台使用的目的。
"   4、强烈建议配置文件中命令不要缩写，而只在编码的过程中进行缩写。
"
" Tips:
"   1、本配置文件使用 自动命令组 实现 Vim 代码折叠功能，使配置文件更简洁。使用说明：
"       切换至普通模式，将光标移动到这些文字中的任意一行，然后敲击 za 进行代码折叠。
"       Vim 会折叠从包含 {{{ 的行到包含 }}} 的行之间的所有行，再敲击 za 会展开所有这些行
"   详见折叠命令：
"       za         打开或关闭当前折叠(open a closed fold, close an open fold)
"       zc         折叠(close a fold)
"       zo         展开折叠(close a fold)
"       zM         关闭所有折叠(set 'foldlevel' to zero)
"       zR         打开所有折叠(set 'foldlevel' to zero)
" ===============================================================================



" 自动代码折叠函数 (Vimscript File Settings) {{{
" 自动命令组实现 Vim 代码折叠函数，使用 Vim 默认 标志折叠（marker）来折叠代码
augroup filetype_vim
    " 开头增加 autocmd! 命令，以确保没有重复的自动命令存在
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}



" 基本设置 (Global Settings) {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 环境设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set viminfo=<100,'100,/50,:100,h,r$TEMP:,s10
"           |    |    |   |    | |       + 不保存超过 10 KB 寄存器
"           |    |    |   |    | + 不保存 TEMP 目录下文件的相关信息
"           |    |    |   |    + 载入 viminfo 文件时关闭 hlsearch 高亮
"           |    |    |   + 保存命令历史条数
"           |    |    + 保存搜索历史条数
"           |    + 保存最近 100 个文件中的标记
"           + 每个寄存器中保存的行数

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 外观设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number                      " 显示行号
set relativenumber              " 行号以相对当前行的方式显示，方便跳转
set showtabline=2               " 显示顶部标签栏，为 0 时隐藏标签栏，1 会按需显示，2 会永久显示 
set tabpagemax=10               " 设置最大标签页上限为 10
set cursorline                  " 突出显示当前行
set cursorcolumn                " 突出显示当前列
set shortmess=atI               " 启动的时候不显示那个援助乌干达儿童的提示
set background=dark             " 设置 Theme 主题

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 主要配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable                   " 启用语法高亮度
syntax on                       " 开启语法高亮
set history=1000                " 记录 1000 条历史命令
set magic                       " 设置魔术
set showcmd                     " 输入的命令显示出来
set hlsearch                    " 高亮搜索的字符串
set incsearch                   " 即时搜索
set wrap                        " 设置代码自动折行
set cindent                     " 设置 C 样式的缩进格式
set tabstop=4                   " Tab 显示多少个空格，默认 8
set softtabstop=4               " 统一缩进为 4
set shiftwidth=4                " 每一级缩进是多少个空格
set smartindent                 " 开启智能缩进
set autoindent                  " 开启自动缩进
set backspace=2                 " 设置退格键可用，正常处理 indent, eol, start
set scrolloff=5                 " 光标距离顶部和底部 5 行
set laststatus=2                " 命令行为两行
set cmdheight=2                 " 总是显示状态行
set autoindent                  " 启用自动对齐功能，把上一行的对齐格式应用到下一行
set clipboard+=unnamed          " 共享剪贴板   
set showmatch                   " 高亮显示匹配的括号
set showmode                    " 显示我们当前所处的模式
set matchtime=1                 " 匹配括号高亮的时间（单位是十分之一秒） 
set autoread                    " 设置当文件被改动时自动载入
set autowrite                   " 自动保存

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码方式及菜单设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8              " Vim 内部 buffer (缓冲区)、菜单文本等使用的编码方式，以下统一使用 UTF-8, 减少编码问题
set termencoding=utf-8          " Vim 所工作的终端的字符编码方式
set fileformats=unix,dos,mac    " Vim 自动识别文件格式，缩写：se ff；回车键编码不同：dos 是回车加换行，unix 只有换行符，mac 只有回车符
set fileformat=unix             " 设置以 UNIX 的格式保存文件，尽量通用
set fileencoding=utf-8          " 当前编辑文件的字符编码方式，保存文件也使用这种编码方式
" Vim 启动时逐一按顺序使用第一个匹配到的编码方式打开文件；chinese 是别名，在 Unix 里表示 GB2312，在 Windows 里表示 cp936；cp936 是 GBK 的别名，是 GB2312 的超集，可以支持繁体汉字，也避免删除半个汉字
" set fileencodings=ucs-bom,uft-8,default

set formatoptions+=m            " 表示自动排版完成的方式。m 表示在任何值高于 255 的多字节字符上分行
set formatoptions+=B            " B 表示在连接行时，不要在两个多字节字符之间插入空格
" }}}



" 其他设置 (Other Settings) {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 其他配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on                     " 检测文件类型
filetype plugin indent on       " 设置多个 filetype 选项：载入文件类型插件；为特定文件类型载入相关缩进文件
set completeopt=longest,menu    " 打开预览窗口会导致下拉菜单抖动，一般都去掉预览窗口的显示
set mouse=a                     " 启用鼠标
set noeb                        " 去掉输入错误的提示声音
set ruler                       " 显示光标当前位置
set title                       " Show file in titlebar
set foldmethod=indent           " 基于缩进进行代码折叠
set nofoldenable                " 启动 Vim 时关闭折叠
set selection=exclusive         " 指定在选择文本时光标所在位置也属于被选中的范围
set selectmode=mouse,key        " 使鼠标和键盘都可以控制光标选择文本
set ignorecase                  " 搜索时忽略大小写
set smartcase                   " 智能大小写敏感，只要有一个字母大写，就大小写敏感，否则不敏感
set noexpandtab                 " 不允许用空格代替制表符
set whichwrap+=<,>,h,l          " 允许 Backspace 和光标键跨越行边界
set confirm                     " 在处理未保存或只读文件的时候，弹出确认
set nobackup                    " 禁止备份
set noswapfile                  " 禁止生成临时文件
set noundofile                  " 不生成 undo 文件
set report=0                    " 通过使用 :commands 命令，告诉我们文件的哪一行被改变过
set equalalways                 " 分割窗口时保持相等的宽/高
set splitright                  " 竖直 split 时，在右边开启
set splitbelow                  " 水平 split 时，在下边开启
set viminfo+=!                  " 保存全局变量
set iskeyword+=_,$,@,%,#,-      " 带有如下符号的单词不要被换行分割
set autochdir                   " 自动切换工作目录为当前文件所在的目录，修改或者添加文件的时候，特别有用
" }}}



" 通用映射 (Common Mappings) {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 按键映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 使用 :h[elp] map-modes 查看映射适用的模式，配置自定义的需求
" 尽量使用 nnoremap 代替 nmap，比如 :map 递归映射，可以映射的模式：normal, visual, operator-pending
" nmap j k                      " nmap 是递归映射，会出现不可预期的问题
" nmap k G                      " 当按下 j 键时，实际上执行的是 G 键
" let mapleader = ","           " 定义 <Leader> 前缀键由 "\" 变为 ","
map Y y$                        " 复制 从光标到行尾 所在范围的文本
nmap <C-A> ggVGY                " 全选+复制，Ctrl+A 组合键
nmap <Leader>d <Esc>ggVGd       " 一键清理当前代码文件(\d)

" \v 从公共剪贴板粘贴。<Leader> 为用户自定义命令的名字空间，<Leader> 是前缀键即 "\"
inoremap <Leader>v <Esc>"+p     " 插入模式下粘贴
nnoremap <Leader>v "+p          " 普通模式下粘贴
vnoremap <Leader>v "+p          " 可视模式下粘贴
inoremap <Leader>p <Esc>pa      " 插入模式下粘贴
nnoremap <Leader><Leader>p "+p  " 将系统剪切板内容粘贴到 Vim
vnoremap <Leader><Leader>y "+y  " 复制当前选中到系统剪切板

" 分屏窗口可以上左下右扩展，使用快捷键：sp+h/j/k/l 分别向四个方向扩展
nnoremap spl :set splitright<CR>:vsplit<CR>
nnoremap sph :set nosplitright<CR>:vsplit<CR>
nnoremap spj :set splitbelow<CR>:split<CR>
nnoremap spk :set nosplitbelow<CR>:split<CR>

nnoremap <C-h> <C-W>h           " 切换到左边的分割窗口
nnoremap <C-j> <C-W>j           " 切换到下面的分割窗口
nnoremap <C-k> <C-W>k           " 切换到上面的分割窗口
nnoremap <C-l> <C-W>l           " 切换到右边的分割窗口

" 分割窗口后通过前缀键 "\" 和方向键 调整窗口大小
nnoremap <Leader><Up>    :resize +5<CR>            " 多窗口时，将当前窗口的高度增加 5 行
nnoremap <Leader><Down>  :resize -5<CR>            " 多窗口时，将当前窗口的高度减少 5 行
nnoremap <Leader><Right> :vertical resize +5<CR>   " 多窗口时，将当前窗口的宽度增加 5 列
nnoremap <Leader><Left>  :vertical resize -5<CR>   " 多窗口时，将当前窗口的宽度减少 5 列

" 无论是 Normal/Insert 模式，按 Ctrl+s 保存文件
nnoremap <C-s> :wq!<CR>         " Normal 模式，按 Ctrl+s 保存文件并退出
inoremap <C-s> <Esc>:w<CR>a     " Insert 模式，按 Ctrl+s 保存文件并重新进入插入模式
inoremap <C-f> <Esc>^           " 在插入模式下快速进行行首跳转
inoremap <C-e> <Esc>$           " 在插入模式下快速进行行尾跳转
nnoremap gh ^                   " 在普通模式下快速进行行首跳转
nnoremap gl $                   " 在普通模式下快速进行行尾跳转

" 重置 Esc 退出键，离键盘主区域太远了
" inoremap <Esc> <Nop>          " 插入模式下禁用 Esc 键退出插入模式
inoremap vv <Esc>               " 插入模式下的 vv 键为 Esc 键
vnoremap vv <Esc>               " 可视模式下的 vv 键为 Esc 键
inoremap jj <Esc>               " 插入模式下的 jj 键为 Esc 键
inoremap jk <Esc>               " 插入模式下的 jk 键为 Esc 键

" 考虑到按键便利性，可将 ; 映射为 :，实现按 ; 键便可以从 Vim 普通模式进入命令行模式
nnoremap ; :
" Vim 行首、行尾光标移动按键映射
nnoremap H ^
nnoremap L $
" Vim 位置标记与跳转
nnoremap ' `
nnoremap ` '
nnoremap U <C-r>                   " 取消撤销操作，减少按键操作
" 普通模式使用 z 键实现 Backspace 的功能
nnoremap z i<BS><Esc>l

" 插入模式下，常用标点符号自动补全
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap < <><Esc>i
" inoremap " ""<Esc>i           " 取消该行映射，避免 单词用双引号包围 的映射失效
inoremap ' ''<Esc>i
inoremap ` ``<ESC>i

" Vim 搜索结果居中展示，silien 命令（sil[ent][!] {command}）用于安静地执行命令，既不显示正常的消息，也不会把它加进消息历史
nnoremap <silent> n nzz         " 正向重复上一次搜索并居中显示结果
nnoremap <silent> N Nzz         " 反向重复上一次搜索并居中显示结果
nnoremap <silent> * *zz         " 向后搜索光标所在的单词并居中显示结果
nnoremap <silent> # #zz         " 向前搜索光标所在的单词并居中显示结果
nnoremap <silent> g* g*zz

nnoremap }   }zz                " 向前移动一个段落并居中显示
nnoremap {   {zz                " 向后移动一个段落并居中显示
nnoremap ]]  ]]zz               " 跳转到下一个顶层函数并居中显示
nnoremap [[  [[zz               " 跳转到上一个顶层函数并居中显示
nnoremap []  []zz               " 跳转到上一个第一列的 } 并居中显示
nnoremap ][  ][zz               " 跳转到下一个第一列的 } 并居中显示

" 普通模式下，加快视口的滚动速度
nnoremap <C-e> 3<C-e>           " 向上滚动 3 行
nnoremap <C-y> 3<C-y>           " 向下滚动 3 行

" 戒掉使用方向键的习惯，善用 h j k l 移动光标；重置方向键映射 的后面不加注释，引发粘贴字符错误
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

" 插入模式禁用方向键，解决办法呢？ 1、退出插入模式使用 h j k l； 2、重新映射方向键，如下
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" 插入模式 上下左右 方向键按键重新映射，采用 Ctrl + hjkl 组合键
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

nnoremap <F1> :nohls<CR>           " 取消 Vim 查找高亮显示
nnoremap <F2> :set nu! nu?<CR>     " 普通模式下按 F2 打开(或关闭)显示行号
nnoremap <F3> :set list! list?<CR> " 显示非可见字符，如制表符被显示为 “^I”，而行尾则标识为 “$”。
nnoremap <F4> :set wrap! wrap?<CR> " 设置代码自动折行
nnoremap <F5> :g/^\s*$/d<CR>       " 删除所有空行
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>      " 普通模式下按 F6 打开(或关闭) 语法高亮
inoremap <F7> <C-X><C-O>           " 按下 F7 自动补全代码，注意该映射语句后不能有其他字符，包括 Tab；否则按下 F3 会自动补全一些乱码
nnoremap <F9> :tab terminal<CR>    " 新标签页打开终端 terminal，避免退出 Vim 来执行外部命令，退出终端请键入 exit，然后按下 Return 键
nnoremap <F10> <Esc>:tabnew<CR>    " 指定 F10 功能键来新建标签页
nnoremap <F11> :g/.\n\n\@!/norm o<CR>    " 指定 F11 功能键非空行每行后加入空行，多个空行合并为一个空行

" 缓冲区 Buffer 按键映射
nnoremap <Leader>b :ls<CR>
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
" 映射 <Leader>num 到 num buffer
nnoremap <Leader>1 :b 1<CR>
nnoremap <Leader>2 :b 2<CR>
nnoremap <Leader>3 :b 3<CR>
nnoremap <Leader>4 :b 4<CR>
nnoremap <Leader>5 :b 5<CR>
nnoremap <Leader>6 :b 6<CR>
nnoremap <Leader>7 :b 7<CR>
nnoremap <Leader>8 :b 8<CR>
nnoremap <Leader>9 :b 9<CR>

" 普通模式下，标签页导航 按键映射
nnoremap <Tab>1 1gt                              " 切换到第 1 个标签页
nnoremap <Tab>2 2gt                              " 切换到第 2 个标签页
nnoremap <Tab>3 3gt                              " 切换到第 3 个标签页
nnoremap <Tab>4 4gt                              " 切换到第 4 个标签页
nnoremap <Tab>5 5gt                              " 切换到第 5 个标签页
nnoremap <Tab>6 6gt                              " 切换到第 6 个标签页
nnoremap <Tab>7 7gt                              " 切换到第 7 个标签页
nnoremap <Tab>8 8gt                              " 切换到第 8 个标签页
nnoremap <Tab>9 9gt                              " 切换到第 9 个标签页
nnoremap <Tab>0 :tablast<CR>                     " 切换到最后一个标签页
nnoremap <C-Insert> :tabnew<CR>                  " 新建标签页
nnoremap <C-Delete> :tabclose<CR>                " 关闭当前的标签页
nnoremap <silent><Tab>s :tabs<CR>                " 查看所有打开的标签页
nnoremap <silent><Tab>w :tabnew<CR>              " 新建标签页
nnoremap <silent><Tab>e :tabedit<CR>             " 新建标签页并编辑
nnoremap <silent><Tab>o :tabonly<CR>             " 关闭所有其他的标签页
nnoremap <silent><Tab>c :tabclose<CR>            " 关闭当前的标签页
nnoremap <silent><Tab>n :tabnext<CR>             " 移动到后一个标签页
nnoremap <silent><Tab>p :tabprevious<CR>         " 移动到前一个标签页
nnoremap <silent><Tab>r :tabrewind<CR>           " 切换到第一个标签页
nnoremap <silent><Tab>h :h tabpage<CR>           " 查看标签页帮助文档
nnoremap <silent><s-tab> :tabnext<CR>            " 按 Shift + Tab 组合键，移动到后一个标签页
inoremap <silent><s-tab> <Esc>:tabnext<CR>       " 按 Shift + Tab 组合键，退出插入模式并移动到后一个标签页

nmap <Tab> V>                      " 普通模式下 Tab 键行首缩进文本
nmap <S-Tab> V<                    " 普通模式下 Shift + Tab 键行首反向缩进文本
vmap <Tab> >gv                     " 可视化模式下 Tab 键行首缩进文本
vmap <S-Tab> <gv                   " 可视化模式下 Shift + Tab 键行首反向缩进文本

" 缩进后依然保持选中
xnoremap <  <gv
xnoremap >  >gv

" 使用 very magic 模式，规范所有特殊符号，启用后，除了下划线 _，大小写字母，和数字外，所有的字符都具有特殊含义
nnoremap / /\v
vnoremap / /\v
cnoremap %s/ %s/\v
nnoremap :g/ :g/\v

" 文件保存退出命令映射
:command W w!                      " 映射为 为超级用户权限保存文件
:command WQ wq                     " 文件保存退出保存，避免大写转换小写
:command Wq wq
:command Q q!
:command Qa qa
:command QA qa                     " 快速退出 Vim，避免大写转换小写
nnoremap <Leader>q :q!<CR>         " Quickly close the current window
nnoremap <Leader>w :w!<CR>         " Quickly save the current file
nnoremap <C-c> :qall!<CR>          " 快速退出 Vim

nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>           " Set current directory to current file with,cd
nnoremap <Leader>cc :!start cmd /k cd %:p:h:8<CR>   " open windows command prompt in the current file's directory
nnoremap <Leader>ce :!start explorer %:p:h:8<CR>    " open explorer in the current file's directory
nnoremap <Space> za                                 " Space 空格键切换折叠
nnoremap <Shift-Enter> o<Esc>k                      " 普通模式下 Shift + Enter 键插入空行
" }}}



" 复杂映射 (Complicated Mappings) {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 常见操作全文档命令映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>W :%s/\s\+$//<CR>:let @/=''<CR>    " 删除当前文件中所有的行尾多余空格
" 一键去除全部尾部空白(\rb)
inoremap <Leader>rb <Esc>:let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<CR>
nnoremap <Leader>rb :let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<CR>
vnoremap <Leader>rb <Esc>:let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar>:nohl<CR>
" 一键去除全部 ^M 字符(\rm)
inoremap <Leader>rm <Esc>:%s/<c-v><c-m>//g<CR>
nnoremap <Leader>rm :%s/<c-v><c-m>//g<CR>
vnoremap <Leader>rm <Esc>:%s/<c-v><c-m>//g<CR>
" 一键替换全部 Tab 为空格(\rt)
nnoremap <Leader>rt <Esc>:retab<CR>
" 移动光标至单词，输入 <Leader>"，Vim 将那个单词用双引号包围
nnoremap <Leader>" viw<esc>a"<esc>hbi"<esc>lel

" 当前行高亮（请参阅 :h cursorline）功能，该设置会让效果出现在当前窗口，但在插入模式中关闭这个效果
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline

" Vim 重新打开文件时，回到上次历史所编辑文件的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
" 设置在状态行显示的信息
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 其他映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" unmap <F10>                      " 取消一个映射
" mapclear                         " 对应取消所有 :map 绑定的，慎用

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimrc 配置文件按键映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <Leader>tv :tabe $MYVIMRC<CR>  " 新标签页编辑配置文件
nnoremap <Leader>e <Esc>:edit $MYVIMRC<CR>       " 当前窗口编辑配置文件
nnoremap <Leader>ev :vsp $MYVIMRC<CR>            " 纵向分屏编辑配置文件
nnoremap <Leader>sv :source $MYVIMRC<CR>         " 重新加载 vimrc 文件，source 可缩写为 so
autocmd BufWritePost $MYVIMRC source $MYVIMRC    " 让 vimrc 配置变更立即生效
" }}}



" Vim 插件设置 (Vim Plugins Settings) {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件 vim-plug 按键映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 查看、安装、更新、删除插件 按键映射
nnoremap <Leader><Leader>s :PlugStatus<CR>      " 查看插件状态
nnoremap <Leader><Leader>i :PlugInstall<CR>     " 安装在配置文件中声明的插件
nnoremap <Leader><Leader>u :PlugUpdate<CR>      " 更新插件
nnoremap <Leader><Leader>g :PlugUpgrade<CR>     " 升级 vim-plug 本身
nnoremap <Leader><Leader>d :PlugDiff<CR>        " 查看插件的变化状态，简单地回滚有问题的插件
nnoremap <Leader><Leader>c :PlugClean<CR>       " 删除插件

" 预览插件 Markdown-preview 按键映射
" nmap <silent><F8> <Plug>MarkdownPreview       " 普通模式打开 Markdown 预览
" imap <silent><F8> <Plug>MarkdownPreview       " 插入模式打开 Markdown 预览
" nmap <silent><F9> <Plug>StopMarkdownPreview   " 普通模式关闭 Markdown 预览
" imap <silent><F9> <Plug>StopMarkdownPreview   " 插入模式关闭 Markdown 预览
nmap <silent><F8> <Plug>MarkdownPreviewTroggle  " 普通模式打开或关闭 Markdown 预览
imap <silent><F8> <Plug>MarkdownPreviewTroggle  " 插入模式打开或关闭 Markdown 预览

" 插件 NERDTree 按键映射，NERDTree激活后，善用 Shift + ? 快速调出帮助文档
nnoremap <Leader>n :NERDTreeToggle<CR>          " 打开/关闭目录树
" nnoremap <Leader>n :NERDTreeFocus<CR>         " 打开目录树，同 NERDTree
" nnoremap <Leader>N :NERDTreeClose<CR>         " 关闭目录树
nnoremap <Leader>f :NERDTreeFind<CR>            " 打开目录树并定位到当前文件

let NERDTreeShowHidden=0                        " 是否显示隐藏文件 0/1
let NERDTreeShowLineNumbers=1                   " 显示目录树行号
" autocmd vimenter * NERDTree                   " 自动开启 Nerdtree
" let g:NERDTreeWinSize = 25                    " 设定 NERDTree 视窗大小
let NERDTreeShowBookmarks=1                     " 开启 Nerdtree 时自动显示 Bookmarks
" 隐藏指定文件和文件夹
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '\.vscode', '__pycache__'] 
" 打开 Vim 时如果没有文件自动打开 NERDTree
" autocmd vimenter * if !argc()|NERDTree|endif
" 当 NERDTree 为剩下的唯一窗口时自动关闭
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endi

" 插件 Tarbar 按键映射，要善于使用 Shift + ? 查看帮助
nnoremap <Leader>t :TagbarToggle<CR>

" 插件 Undotree 按键映射，要善于使用 Shift + ? 查看帮助
nnoremap <Leader>u :UndotreeToggle<CR>

" 插件 LeaderF 按键映射
" nnoremap <silent> <Leader>f :Leaderf file<CR>       " 文件搜索
" nnoremap <silent> <Leader>m :Leaderf mru<CR>        " 历史打开过的文件
" nnoremap <silent> <Leader>b :Leaderf buffer<CR>     " Buffer
" nnoremap <silent> <Leader>F :Leaderf function<CR>   " 函数搜索（仅当前文件里）
" nnoremap <silent> <Leader>rg :Leaderf rg<CR>        " 模糊搜索，很强大的功能，迅速秒搜
" }}}



" Vim 插件 (Vim Plugins) {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件列表
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 需要提前安装 vim-plug 管理插件
call plug#begin('~/.vim/plugged')

" Apperance
Plug 'morhetz/gruvbox'                   " 界面配色方案
Plug 'vim-airline/vim-airline'           " Vim 状态栏提供更优秀的显示功能

" Development
Plug 'preservim/nerdcommenter'           " Vim 批量注释工具
Plug 'tpope/vim-repeat'                  " 解决 Vim 原生命令 . 在自定义映射或插件映射时无法重复的问题
Plug 'tpope/vim-surround'                " 添加，修改，删除括号、引号等成对的符号，甚至是 HTML 标签
Plug 'frazrepo/vim-rainbow'              " 彩虹括号
Plug 'mbbill/undotree'                   " 提供强大的撤销更改功能

" File manage
Plug 'mhinz/vim-startify'                " Vim 启动插件
Plug 'preservim/nerdtree'                " 显示 Vim 目录树插件，常与 Tarbar、Ctrlp 搭配使用
Plug 'Xuyuanp/nerdtree-git-plugin'       " 显示 NERDTree 目录树的 Git 状态信息 

" Markdown
Plug 'iamcco/mathjax-support-for-mkdp'   " 用于 Markdown 预览数学公式
Plug 'iamcco/markdown-preview.vim'       " Markdown 预览工具
Plug 'plasticboy/vim-markdown'           " Markdown 语法高亮插件。提供了语法高亮，段落折叠，查看目录(:Toc)，段间跳转等功能

" Github
Plug 'airblade/vim-gitgutter'            " Git 侧边栏插件
Plug 'tpope/vim-fugitive'                " 在 Vim 中使用 Git 命令

" Search
" Plug 'Yggdroot/LeaderF'                " 内容、文件、缓冲区和标签模糊搜索插件，替代 Ctrlp
Plug 'ctrlpvim/ctrlp.vim'                " 内容、文件、缓冲区和标签模糊搜索插件
Plug 'majutsushi/tagbar'                 " 侧边栏显示文件中定义的常量、变量、函数等，善于 Shift + ? 查看帮助
Plug 'easymotion/vim-easymotion'         " 快速定位

" Initialize plugin system
call plug#end()
" }}}



" 自定义函数 (Custom Functions) {{{
" ===============================================================================
" 以下配置为 自定义函数 模块
" ===============================================================================

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GVim 启动时窗口自动居中
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function WindowCenterInScreen()
    set lines=9999 columns=9999
    " 系统窗口边框的大小, 像素为单位
    let g:windowsSizeFixX = 58
    let g:windowsSizeFixY = 118
    " 单个字符的平均宽高, 像素为单位
    let g:windowsScaleX = 7.75
    let g:windowsScaleY = 17.0
    let g:windowsPosOldX = getwinposx()
    let g:windowsPosOldY = getwinposy()
    let g:windowsScreenWidth = float2nr(winwidth(0) * g:windowsScaleX) + g:windowsPosOldX + g:windowsSizeFixX
    let g:windowsScreenHeight = float2nr(winheight(0) * g:windowsScaleY) + g:windowsPosOldY + g:windowsSizeFixY
    " 设置窗口显示的行数和列数
    set lines=45 columns=148
    let g:windowsSizeWidth = float2nr(winwidth(0) * g:windowsScaleX) + g:windowsSizeFixX
    let g:windowsSizeHeight = float2nr(winheight(0) * g:windowsScaleY) + g:windowsSizeFixY
    let g:windowsPosX = ((g:windowsScreenWidth - g:windowsSizeWidth) / 2)
    let g:windowsPosY = ((g:windowsScreenHeight - g:windowsSizeHeight) / 2)
    exec ':winpos ' . g:windowsPosX . ' ' . g:windowsPosY
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自定义 SetTitle 函数，自动插入指定文件头
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function SetTitle()
  " 如果文件类型为 .sh 文件
  if &filetype == 'sh'
    call setline(1, "\#!/usr/bin/env bash")
    call append(line("."),   "")
    call append(line(".")+1, "\#########################################################################")
    call append(line(".")+2, "\# File Name: ".expand("%"))
    call append(line(".")+3, "\# Author: chloneda <chloneda@163.com>")
    call append(line(".")+4, "\# Created Time: ".strftime("%c"))
    call append(line(".")+5, "\#########################################################################")
    call append(line(".")+6, "")
  endif
  if &filetype == 'java'
    call append(line(".")+6,"public class ".expand("%:r"))
    call append(line(".")+7,"")
  endif
  " 新建文件后，自动定位到文件末尾
  autocmd BufNewFile * normal G
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 重新定义宏
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" A. 常规使用宏的流程：
"   1. qm 进入宏录制
"   2. 录制宏内容
"   3. q 退出宏录制
"   4. @m 使用字母指定的宏
"   5. @@ 重复最近使用过宏
"
" B. 重新定义宏的流程：
"   1. XXXXXX
" -------------------------------------------------------------------------------

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件 NERDTree-git 自定义配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 根据后缀名指定文件类型
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func SetFileType()
    " 自动识别 Markdown 文件
    autocmd BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}  set filetype=markdown
    autocmd BufRead,BufNewFile *.{go}     set filetype=go
    autocmd BufRead,BufNewFile *.{js}     set filetype=javascript

    autocmd BufRead,BufNewFile *.h        set ft=c
    autocmd BufRead,BufNewFile *.i        set ft=c
    autocmd BufRead,BufNewFile *.m        set ft=objc
    autocmd BufRead,BufNewFile *.di       set ft=d
    autocmd BufRead,BufNewFile *.ss       set ft=scheme
    autocmd BufRead,BufNewFile *.cl       set ft=lisp
    autocmd BufRead,BufNewFile *.phpt     set ft=php
    autocmd BufRead,BufNewFile *.inc      set ft=php
    autocmd BufRead,BufNewFile *.cson     set ft=coffee

    autocmd BufRead,BufNewFile *.sql      set ft=mysql
    autocmd BufRead,BufNewFile *.tpl      set ft=smarty
    autocmd BufRead,BufNewFile *.txt      set ft=txt
    autocmd BufRead,BufNewFile *.log      set ft=conf
    autocmd BufRead,BufNewFile hosts      set ft=conf
    autocmd BufRead,BufNewFile *.conf     set ft=dosini
    autocmd BufRead,BufNewFile http*.conf set ft=apache
    autocmd BufRead,BufNewFile *.ini      set ft=dosini

    autocmd BufRead,BufNewFile */nginx/*.conf        set ft=nginx
    autocmd BufRead,BufNewFile */nginx/**/*.conf     set ft=nginx
    autocmd BufRead,BufNewFile */openresty/*.conf    set ft=nginx
    autocmd BufRead,BufNewFile */openresty/**/*.conf set ft=nginx
    autocmd BufRead,BufNewFile *.yml.bak             set ft=yaml
    autocmd BufRead,BufNewFile *.yml.default         set ft=yaml
    autocmd BufRead,BufNewFile *.yml.example         set ft=yaml
    " 输出提示信息
    :echo ""
endfunc
" }}}



" 跨平台函数统一调用入口 (Global Functions) {{{
" ===============================================================================
" 跨平台 全局自定义函数 统一调用入口
" ===============================================================================
if 1    " Global function
    " 新建 .sh，.java 结尾的文件，自动插入文件头
    autocmd BufNewFile *.sh,*.java exec ":call SetTitle()"
    " 调用 根据后缀名指定文件类型 函数，过程调用
    :call  SetFileType()
endif

" ===============================================================================
" 判断操作系统是否是 Windows 还是 Unix，并执行自定义函数入口
" ===============================================================================
let g:is_windows = 0             " 声明全局 Windows 系统标识变量
let g:is_mac = 0                 " 声明全局 mac 系统标识变量
let g:is_unix = 0                " 声明全局 unix 系统标识变量
let g:is_gui = 0                 " 声明全局 gui 图形界面标识变量

" 若操作系统是 Windows 系统，设置该系统的 Vim 配置，并执行独有的自定义函数
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:is_windows = 1
else
    " 若操作系统是 Unix 系统，设置该系统的 Vim 配置，并执行独有的自定义函数
    let g:is_unix = 1
    set nocompatible                " 必须先设定的选项，关闭兼容 vi 模式，使用 Vim 自身的
    set shell=/bin/bash             " Vim 需要一个符合 Posix 的 Shell
    set go=                         " 不要图形按钮
    set langmenu=en_US.UTF-8        " 显示英文菜单语言
    language messages en_US.UTF-8   " 设置提示信息为英文

    " :W 或 \W 以超级用户权限保存文件
    command W w !sudo tee % > /dev/null
    nnoremap <Leader>W :w !sudo tee > /dev/null<CR>

    " 若操作系统是 Mac 系统，设置该系统的 Vim 配置，并执行独有的自定义函数
    if has("mac")
        let g:is_mac = 1
    endif
endif

" ===============================================================================
" 判断是 终端 还是 GUI，并执行独有自定义函数
" ===============================================================================
" 若 GVim 程序存在且运行，执行自定义函数
if has("gui_running")
    let g:is_gui = 1

    " 设置 Vim 字体，字体名称和尺寸是以冒号（:）分隔的；字体尺寸以字母 h 为前缀
    set guifont=fixedsys:h14,Consolas:h11,Courier_New:h11:cGB2312:qDRAFT
    colorscheme desert              " 配置 GVim 自定义配色主题；:h colo[rscheme]
    set guitablabel=%N.%t%M         " 标签页显示 Number+文件名和+符号，不显示完整路径+文件名，方便切换标签页
    set guioptions+=m               " 显示菜单栏 (Menu)
    set guioptions-=T               " 隐藏工具栏 (Tool bar)
    set guioptions-=r               " 隐藏右侧滚动条 (Right scrollbar)
    set guioptions-=L               " 隐藏左侧滚动条 (Left scrollbar)
    set guioptions-=b               " 隐藏底部滚动条 (Bottom scrollbar)
    set helplang=cn                 " 帮助系统设置为中文
    set langmenu=zh_CN.UTF-8        " 显示中文菜单语言
    set t_Co=256                    " 指定配色方案是 256 色
    language messages zh_CN.utf-8   " 设置提示信息为中文，解决 consle 输出乱码
    source $VIMRUNTIME/delmenu.vim  " 导入删除菜单脚本，删除乱码的菜单
    source $VIMRUNTIME/menu.vim     " 导入正常的菜单脚本

    " GVim 启动时最大化
    autocmd GUIEnter * simalt ~x
    " GVim 启动时窗口自动居中
    " au GUIEnter * call WindowCenterInScreen()

    if has("gui_macvim")    " OS X
        set guifont=Monaco:h10
    elseif has("gui_gtk")   " Linux
        let g:NERDTreeDirArrowExpandable = '+'
        let g:NERDTreeDirArrowCollapsible = '~'
    endif
else
    " This is console Vim. (NeoVim)
    " set guifont=MiscFixed\ Semi-Condensed\ 10   " 设置 Vim 字体
    colorscheme default             " 配置自定义配色主题

    if exists("+lines")
        set lines=45
    endif
    if exists("+columns")
        set columns=148
    endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}


