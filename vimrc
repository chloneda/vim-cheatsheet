" ==================================================================
" Author: chloneda <chloneda@gmail.com>
" Repository: https://github.com/chloneda/vim-cheatsheet
" Blog: https://www.cnblogs.com/chloneda
" Create Date: 2020-02-01
" Desc:  Vim 定制化配置文件
" License: MIT
" ==================================================================
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc
" +----------+------------------------------------------------------
" | Key      | Function
" +----------+------------------------------------------------------
" | F1       | 取消 Vim 查找高亮显示
" | F2       | 打开(或关闭)显示行号
" | F3       | 显示非可见字符
" | F4       | 设置代码自动折行
" | F5       | 去空行
" | F6       | 打开(或关闭) 语法高亮
" | F7       | 自动补全代码
" | F8       | 普通模式打开 md 预览
" | F9       | 普通模式关闭 md 预览
" | F10      | 新建标签页
" | F12      |
" | <Ctrl+c> | 快速推出 Vim（:qall!）
" +----------+------------------------------------------------------
"
" Notes:
"   1、Vim 脚本注释是以 " 开头的，只存在行注释，不存在块注释
"   2、配置文件中的 <Leader> 前缀键是指 "\" 键
" ==================================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 环境设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                " 必须先设定的选项，关闭兼容 vi 模式，使用 Vim 自身的
set shell=/bin/bash             " Vim 需要一个符合 Posix 的 Shell
set viminfo=<100,'100,/50,:100,h,r$TEMP:,s10
"           |    |    |   |    | |       + 不保存超过10KB寄存器
"           |    |    |   |    | + 不保存TEMP目录下文件的相关信息
"           |    |    |   |    + 载入viminfo文件时关闭hlsearch高亮
"           |    |    |   + 保存命令历史条数
"           |    |    + 保存搜索历史条数
"           |    + 保存最近100个文件中的标记
"           + 每个寄存器中保存的行数

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 外观设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number                      " 显示行号
set relativenumber              " 行号以相对当前行的方式显示，方便跳转
set showtabline=0               " 隐藏顶部标签栏
set guioptions-=r               " 隐藏右侧滚动条 
set guioptions-=L               " 隐藏左侧滚动条
set guioptions-=b               " 隐藏底部滚动条
set cursorline                  " 突出显示当前行
set cursorcolumn                " 突出显示当前列
set shortmess=atI               " 启动的时候不显示那个援助乌干达儿童的提示
set go=                         " 不要图形按钮
set background=dark             " Theme 主题
set t_Co=256                    " 指定配色方案是 256 色

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 主要配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable                   " 启用语法高亮度
syntax on                       " 开启语法高亮
set history=1000                " 记录 1000 条历史命令
set magic                       " 设置魔术
set showcmd                     " 输入的命令显示出来
set hlsearch                    " 高亮搜索的字符串
set incsearch                   " 即时搜索
set wrap                        " 设置代码自动折行
set fileformat=unix             " 设置以 UNIX 的格式保存文件
set cindent                     " 设置 C 样式的缩进格式
set tabstop=4                   " Tab 显示多少个空格，默认 8
set softtabstop=4               " 统一缩进为 4
set shiftwidth=4                " 每一级缩进是多少个空格
set smartindent                 " 开启智能缩进
set autoindent                  " 开启自动缩进
set backspace=2                 " 设置退格键可用，正常处理indent,eol,start
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码方式及菜单设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8              " Vim 内部 buffer (缓冲区)、菜单文本等使用的编码方式
set termencoding=utf-8          " Vim 所工作的终端的字符编码方式
set fileencoding=utf-8          " 当前编辑文件的字符编码方式，保存文件也使用这种编码方式
set fileencodings=uft-8,gbk,gb2312,gb18030     " Vim 启动时逐一按顺序使用第一个匹配到的编码方式打开文件
set helplang=cn                 " 帮助系统设置为中文
"set langmenu=zh_CN.UTF-8       " 显示中文菜单语言
set langmenu=en_US.UTF-8        " 显示英文菜单语言
"language messages zh_CN.utf-8  " 设置提示信息为中文
language messages en_US.UTF-8   " 设置提示信息为英文
source $VIMRUNTIME/delmenu.vim  " 导入删除菜单脚本，删除乱码的菜单
source $VIMRUNTIME/menu.vim     " 导入正常的菜单脚本

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 其他配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on                     " 检测文件类型
filetype indent on              " 为特定文件类型载入相关缩进文件
filetype plugin on              " 允许载入文件类型插件
filetype plugin indent on       " Vim 对不同类型的文件进行补全时，设置不同文件类型的补全函数，需要打开文件类型检测
set completeopt=longest,menu    " 打开预览窗口会导致下拉菜单抖动，一般都去掉预览窗口的显示
set mouse=a                     " 启用鼠标
set noeb                        " 去掉输入错误的提示声音
set ruler                       " 显示光标当前位置
set title                       " Show file in titlebar
set foldmethod=indent           " 基于缩进进行代码折叠
set nofoldenable                " 启动 Vim 时关闭折叠
set selection=exclusive         " 指定在选择文本时光标所在位置也属于被选中的范围
set selectmode=mouse,key        " 使鼠标和键盘都可以控制光标选择文本
set ignorecase                  " 搜索忽略大小写
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 按键映射
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 尽量使用 nnoremap 代替 nmap，比如： :map 递归映射，可以映射的模式：normal, visual, operator-pending
" nmap j k                      " nmap 是递归映射，会出现不可预期的问题
" nmap k G                      " 当按下 j 键时，实际上执行的是 G 键
" let mapleader = ","           " 定义 <Leader> 前缀键由 "\" 变为 ","
map Y y$                        " 复制 从光标到行尾 所在范围的文本
nmap <C-A> ggVG                 " 全选

" \v 从公共剪贴板粘贴。<Leader> 为用户自定义命令的名字空间，<Leader> 是前缀键即 "\"
inoremap <Leader>v <Esc>"+p
nnoremap <Leader>v "+p
vnoremap <Leader>v "+p
inoremap <Leader>p <Esc>pa      " 插入模式粘贴
nnoremap <Leader><Leader>p "+p  " 将系统剪切板内容粘贴到 Vim
vnoremap <Leader><Leader>y "+y  " 复制当前选中到系统剪切板

nnoremap <Leader>h <C-W>h       " 切换到左边的分割窗口
nnoremap <Leader>j <C-W>j       " 切换到下面的分割窗口
nnoremap <Leader>k <C-W>k       " 切换到上面的分割窗口
nnoremap <Leader>l <C-W>l       " 切换到右边的分割窗口

" 分割窗口后通过前缀键 "\" 和方向键 调整窗口大小
nnoremap <Leader><Up>    :resize +5<CR>
nnoremap <Leader><Down>  :resize -5<CR>
nnoremap <Leader><Right> :vertical resize +5<CR>
nnoremap <Leader><Left>  :vertical resize -5<CR>

" 无论是 Normal/Insert 模式，按 Ctrl+s 保存文件
nnoremap <C-s> :wq!<CR>         " Normal 模式，按 Ctrl+s 保存文件并退出
inoremap <C-s> <Esc>:w<CR>a     " Insert 模式，按 Ctrl+s 保存文件并重新进入插入模式
inoremap <C-f> <Esc>^           " 在插入模式下快速进行行首跳转
inoremap <C-e> <Esc>$           " 在插入模式下快速进行行尾跳转
nnoremap gh ^                   " 在一般模式下快速进行行首跳转
nnoremap gl $                   " 在一般模式下快速进行行尾跳转

inoremap vv <Esc>               " 插入模式下的 vv 键为 Esc 键
vnoremap vv <Esc>               " 可视模式下的 vv 键为 Esc 键
inoremap jj <Esc>               " 插入模式下的 jj 键为 Esc 键
inoremap jk <Esc>               " 插入模式下的 jk 键为 Esc 键

" 括号等自动补全
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap < <><Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap ` ``<ESC>i

" Vim 搜索结果居中展示，silien 命令（sil[ent][!] {command}）用于安静地执行命令，既不显示正常的消息，也不会把它加进消息历史
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

nnoremap }   }zz
nnoremap {   {zz
nnoremap ]]  ]]zz
nnoremap [[  [[zz
nnoremap []  []zz
nnoremap ][  ][zz

" 加快视口的滚动速度
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" 戒掉使用方向键的习惯，善用 h j k l 移动光标
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

" 插入模式禁用方向键，解决办法呢？ 1、退出插入模式使用 h j k l。 2、重新映射方向键，如下
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" 插入模式上下左右 按键映射
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

nnoremap U <C-r>                   " 取消撤销操作，减少按键操作
nnoremap <F1> :nohls<CR>           " 取消 Vim 查找高亮显示
nnoremap <F2> :set nu! nu?<CR>     " 普通模式下按 F2 打开(或关闭)显示行号
nnoremap <F3> :set list! list?<CR> " 显示非可见字符，如制表符被显示为 “^I”，而行尾则标识为 “$”。
nnoremap <F4> :set wrap! wrap?<CR> " 设置代码自动折行
nnoremap <F5> :g/^\s*$/d<CR>       " 去空行
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>      " 普通模式下按 F6 打开(或关闭) 语法高亮
inoremap <F7> <C-X><C-O>           " 按下 F7 自动补全代码，注意该映射语句后不能有其他字符，包括 Tab；否则按下 F3 会自动补全一些乱码
nnoremap <F10> <Esc>:tabnew<CR>    " 指定 F10 键来新建标签页

" 标签页导航 按键映射
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt
nnoremap <Leader>0 :tablast<CR>
nnoremap <C-Insert> :tabnew<CR>
nnoremap <C-Delete> :tabclose<CR>
nnoremap <silent><Tab>m :tabnew<CR>
nnoremap <silent><Tab>c :tabclose<CR>
nnoremap <silent><Tab>n :tabn<CR>
nnoremap <silent><Tab>p :tabp<CR>
nnoremap <silent><s-tab> :tabnext<CR>
inoremap <silent><s-tab> <Esc>:tabnext<CR>

" 缩进后依然保持选中
xnoremap <  <gv
xnoremap >  >gv

" Using very magic mode
nnoremap / /\v
vnoremap / /\v
cnoremap %s/ %s/\v
nnoremap :g/ :g/\v

" 文件保存退出命令映射
" :command W w!                    " 映射为 为超级用户权限保存文件
:command WQ wq
:command Wq wq
" :W 以超级用户权限保存文件
command W w !sudo tee % > /dev/null
:command Q q
:command Qa qa
:command QA qa
nnoremap <Leader>q :q!<CR>         " Quickly close the current window
nnoremap <Leader>w :w!<CR>         " Quickly save the current file
nnoremap <C-c> :qall!<CR>          " 快速退出 Vim

nnoremap <Leader>cd :cd %:p:h<CR>:pwd<CR>           " Set current directory to current file with ,cd
nnoremap <Leader>cc :!start cmd /k cd %:p:h:8<CR>   " open windows command prompt in the current file's directory
nnoremap <Leader>ce :!start explorer %:p:h:8<CR>    " open explorer in the current file's directory
nnoremap <space> za                                 " Space 空格键切换折叠

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
" 一键清理当前代码文件(\d)
nnoremap <Leader>d <Esc>ggVGd

" unmap <F10>                      " 取消一个映射
" mapclear                         " 对应取消所有 :map 绑定的，慎用

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimrc 配置文件按键映射
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <Leader>tv :tabe $MYVIMRC<CR>  " 新标签页编辑配置文件
nnoremap <Leader>e <Esc>:edit $MYVIMRC<CR>       " 当前窗口编辑配置文件
nnoremap <Leader>ev :vsp $MYVIMRC<CR>            " 纵向分屏编辑配置文件
nnoremap <Leader>sv :source $MYVIMRC<CR>         " 重新加载 vimrc 文件，source 可缩写为 so
autocmd BufWritePost $MYVIMRC source $MYVIMRC    " 让 vimrc 配置变更立即生效

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件按键映射
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 查看、安装、更新、删除插件 按键映射
nnoremap <Leader><Leader>s :PlugStatus<CR>      " 查看插件状态
nnoremap <Leader><Leader>i :PlugInstall<CR>     " 安装在配置文件中声明的插件
nnoremap <Leader><Leader>u :PlugUpdate<CR>      " 更新插件
nnoremap <Leader><Leader>g :PlugUpgrade<CR>     " 升级 vim-plug 本身
nnoremap <Leader><Leader>d :PlugDiff<CR>        " 查看插件的变化状态，简单地回滚有问题的插件
nnoremap <Leader><Leader>c :PlugClean<CR>       " 删除插件

" 预览插件 Markdown-preview 按键映射
nmap <silent> <F8> <Plug>MarkdownPreview        " 普通模式打开 md 预览
imap <silent> <F8> <Plug>MarkdownPreview        " 插入模式打开 md 预览
nmap <silent> <F9> <Plug>StopMarkdownPreview    " 普通模式关闭 md 预览
imap <silent> <F9> <Plug>StopMarkdownPreview    " 插入模式关闭 md 预览

" 插件 NERDTree 按键映射，NERDTree激活后，善用 Shift + ? 快速调出帮助文档
nnoremap <Leader>n :NERDTreeToggle<CR>          " 打开/关闭目录树
" nnoremap <Leader>n :NERDTreeFocus<CR>         " 打开目录树，同 NERDTree
" nnoremap <Leader>N :NERDTreeClose<CR>         " 关闭目录树
nnoremap <Leader>f :NERDTreeFind<CR>            " 打开目录树并定位到当前文件

let NERDTreeShowHidden=0                        " 是否显示隐藏文件 0/1
let NERDTreeShowLineNumbers=1                   " 显示目录树行号

" 插件 Tarbar 按键映射，要善于使用 Shift + ? 查看帮助
nnoremap <Leader>t :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件列表
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

" File manage
Plug 'mhinz/vim-startify'                " Vim 启动插件
Plug 'preservim/nerdtree'                " 显示 Vim 目录树插件，常与 Tarbar、Ctrlp 搭配使用
Plug 'Xuyuanp/nerdtree-git-plugin'       " 显示 NERDTree 目录树的 Git 状态信息 

" Markdown
Plug 'iamcco/mathjax-support-for-mkdp'   " 用于 Markdown 预览数学公式
Plug 'iamcco/markdown-preview.vim'       " Markdown 预览工具

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件 NERDTree-git 自定义配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 根据后缀名指定文件类型
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd BufNewFile,BufReadPost *.md set filetype=markdown                         " 自动识别 Markdown 文件
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=markdown   " 自动识别 Markdown 文件
au BufRead,BufNewFile *.{go}   set filetype=go
au BufRead,BufNewFile *.{js}   set filetype=javascript

au BufRead,BufNewFile *.h        set ft=c
au BufRead,BufNewFile *.i        set ft=c
au BufRead,BufNewFile *.m        set ft=objc
au BufRead,BufNewFile *.di       set ft=d
au BufRead,BufNewFile *.ss       set ft=scheme
au BufRead,BufNewFile *.cl       set ft=lisp
au BufRead,BufNewFile *.phpt     set ft=php
au BufRead,BufNewFile *.inc      set ft=php
au BufRead,BufNewFile *.cson     set ft=coffee

au BufRead,BufNewFile *.sql      set ft=mysql
au BufRead,BufNewFile *.tpl      set ft=smarty
au BufRead,BufNewFile *.txt      set ft=txt
au BufRead,BufNewFile *.log      set ft=conf
au BufRead,BufNewFile hosts      set ft=conf
au BufRead,BufNewFile *.conf     set ft=dosini
au BufRead,BufNewFile http*.conf set ft=apache
au BufRead,BufNewFile *.ini      set ft=dosini

au BufRead,BufNewFile */nginx/*.conf        set ft=nginx
au BufRead,BufNewFile */nginx/**/*.conf     set ft=nginx
au BufRead,BufNewFile */openresty/*.conf    set ft=nginx
au BufRead,BufNewFile */openresty/**/*.conf set ft=nginx
au BufRead,BufNewFile *.yml.bak      set ft=yaml
au BufRead,BufNewFile *.yml.default  set ft=yaml
au BufRead,BufNewFile *.yml.example  set ft=yaml

" 当前行高亮（请参阅 :h cursorline）功能，该设置会让效果出现在当前窗口，但在插入模式中关闭这个效果
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline

" Vim 重新打开文件时，回到上次历史所编辑文件的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
" 设置在状态行显示的信息
" set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自定义函数
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 新建 .sh，.java 文件，自动插入文件头
autocmd BufNewFile *.sh,*.java exec ":call SetTitle()"
func SetTitle()                          " 定义函数 SetTitle，自动插入文件头
	" 如果文件类型为 .sh 文件
	if &filetype == 'sh'
		call setline(1,          "\#########################################################################")
		call append(line("."),   "\# File Name: ".expand("%"))
		call append(line(".")+1, "\# Author: chloneda <chloneda@gmail.com>")
		call append(line(".")+2, "\# Created Time: ".strftime("%c"))
		call append(line(".")+3, "\#########################################################################")
		call append(line(".")+4, "\#!/usr/bin/env bash")
		call append(line(".")+5, "")
	endif
	if &filetype == 'java'
		call append(line(".")+6,"public class ".expand("%:r"))
		call append(line(".")+7,"")
	endif
	" 新建文件后，自动定位到文件末尾
	autocmd BufNewFile * normal G
endfunc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



