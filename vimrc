" =======================================================
" ProjectLink: https://github.com/chloneda/vim-cheatsheet
" Author: chloneda
" Version: 1.0.0
" Email: chloneda@gmail.com
" Blog: https://www.cnblogs.com/chloneda
" LastModify: 2020-02-01
" Desc:  Vim 个人定制化配置文件
" =======================================================
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc
"
" +----------+-----------------------+
" | Key      | Function              |
" +----------+-----------------------+
" | F1       | 取消 Vim 查找高亮显示 |
" | F2       | 打开(或关闭)显示行号  |
" | F3       | 显示非可见字符        |
" | F4       | 设置代码自动折行      |
" | F5       | 去空行                |
" | F6       | 打开(或关闭) 语法高亮 |
" | F7       | 自动补全代码          |
" | F8       | 普通模式打开 md 预览  |
" | F9       | 普通模式关闭 md 预览  |
" | F10      |                       |
" | F12      |                       |
" | <Ctrl+c> | 快速推出 Vim（:qall!）|
" +----------+-----------------------+
" =======================================================

" Vim 脚本注释是以 " 开头的，只存在行注释，不存在块注释

" 环境设置 -------------------------------------
" 关闭兼容 vi 键盘模式，而使用 Vim 自己的
set nocompatible                " 首先必须设定的选项，避免 vi 以前版本 Bug 和局限，从而产生副作用
" Change shell
set shell=/bin/bash             " Vim 需要一个符合 Posix 的 Shell

" 设置外观 -------------------------------------
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
set t_Co=256			        " 指定配色方案是 256 色

" 主要配置 -------------------------------------
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
set backspace+=indent,eol,start " set backspace& 可以对其重置
set scrolloff=5                 " 光标距离顶部和底部 5 行
set laststatus=2                " 命令行为两行
set cmdheight=2                 " 总是显示状态行
set autoindent                  " 启用自动对齐功能，把上一行的对齐格式应用到下一行
set clipboard+=unnamed          " 共享剪贴板   
set showmatch                   " 高亮显示匹配的括号
set showmode                    " 显示我们当前正在编辑的模式
set matchtime=1                 " 匹配括号高亮的时间（单位是十分之一秒） 
set autoread                    " 设置当文件被改动时自动载入
set autowrite                   " 自动保存

set helplang=cn                 " 帮助系统设置为中文
set langmenu=zh_CN.UTF-8        " 显示中文菜单
set encoding=utf-8              " Vim 内部 buffer (缓冲区)、菜单文本等使用的编码方式
set fileencoding=utf-8          " 当前编辑文件的字符编码方式
set fileencodings=uft-8,gbk,gb2312,gb18030     " 使用 UTF-8、GBK 等打开文件
set termencoding=utf-8          " Vim 所工作的终端的字符编码方式

" 其他配置 -------------------------------------
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

" Vim 重新打开文件时，回到上次历史所编辑文件的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
" 让 vimrc 配置变更立即生效
" autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 设置在状态行显示的信息
" set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\

" 按键映射，尽量使用 nnoremap 代理 nmap，比如 ----------------------
" :map 递归映射，可以映射的模式：normal, visual, operator-pending
" nmap j k                      " nmap 是递归映射，会出现不可预期的问题
" nmap k G                      " 当按下 j 键时，实际上执行的是 G 键
map Y y$                        " 复制 从光标到行尾 所在范围的文本
map <C-A> ggVG                  " 全选
nnoremap <Leader>h <C-W>h       " 切换到左边的分割窗口
nnoremap <Leader>j <C-W>j       " 切换到下面的分割窗口
nnoremap <Leader>k <C-W>k       " 切换到上面的分割窗口
nnoremap <Leader>l <C-W>l       " 切换到右边的分割窗口

" 分割窗口后通过 "\" 和方向键 调整窗口大小
nnoremap <Leader><Right> :vertical resize +5<CR>
nnoremap <Leader><Left>  :vertical resize -5<CR>
nnoremap <Leader><Up>    :resize +5<CR>
nnoremap <Leader><Down>  :resize -5<CR>

" 无论是 Normal/Insert 模式，按 Ctrl+s 保存文件
nnoremap <C-s> :wq!<CR>         " Normal 模式，按 Ctrl+s 保存文件并退出
inoremap <C-s> <Esc>:w<CR>a     " Insert 模式，按 Ctrl+s 保存文件并重新进入插入模式
inoremap <C-f> <Esc>^           " 在插入模式下快速进行行首/行尾跳转
inoremap <C-e> <Esc>$
" <Leader> 为用户自定义命令的名字空间，<Leader> 键是 "\"
inoremap <Leader>p <Esc>pa      " 插入模式粘贴
inoremap vv <Esc>               " 插入模式下的 vv 键为 Esc 键
vnoremap vv <Esc>               " 可视模式下的 vv 键为 Esc 键

" 括号等自动补全
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap < <><Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

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

" 戒掉使用方向键的习惯，善用 h、j、k 及 l 移动光标
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

" 插入模式禁用方向键，解决办法呢？ 1、退出插入模式使用 h j k l。 2、重新映射方向键，如下
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>

" 插入模式上下左右
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
inoremap <F7> <C-X><C-O>           " 按下 F7 自动补全代码，注意该映射语句后不能有其他字符，包括 Tab；否则按下F3会自动补全一些乱码

" 标签页导航
noremap <Leader>1 1gt
noremap <Leader>2 2gt
noremap <Leader>3 3gt
noremap <Leader>4 4gt
noremap <Leader>5 5gt
noremap <Leader>6 6gt
noremap <Leader>7 7gt
noremap <Leader>8 8gt
noremap <Leader>9 9gt
noremap <Leader>0 :tablast<CR>

" 可视模式选中行时，可以用 < 或 > 来调整缩进，同时连续按下 g v 来重新选中他们，避免调整后不会保持选中状态
xnoremap <  <gv
xnoremap >  >gv

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

" unmap <F10>                      " 取消一个映射
" mapclear                         " 对应取消所有 :map 绑定的，慎用

" 编辑 vimrc 相关配置文件 ----------------------------
" nnoremap <Leader>e :edit $MYVIMRC<CR>
" nnoremap <silent> <Leader>s :so $MYVIMRC<CR>
nnoremap <Leader>e :vsp $MYVIMRC<CR>            " 纵向分屏编辑配置文件
nnoremap <Leader>s :source $MYVIMRC<CR>         " 重新加载 vimrc 文件，Leader 即前缀键默认为 “\”

" 插件相关映射按键设置 --------------------------------
" 查看、安装、更新、删除插件 命令映射
nnoremap <Leader><Leader>s :PlugStatus<CR>
nnoremap <Leader><Leader>i :PlugInstall<CR>
nnoremap <Leader><Leader>u :PlugUpdate<CR>
nnoremap <Leader><Leader>g :PlugUpgrade<CR>     " 升级 vim-plug 本身
nnoremap <Leader><Leader>c :PlugClean<CR>

" 预览插件 markdown-preview 快捷键 -------------------
nmap <silent> <F8> <Plug>MarkdownPreview        " 普通模式打开 md 预览
imap <silent> <F8> <Plug>MarkdownPreview        " 插入模式打开 md 预览
nmap <silent> <F9> <Plug>StopMarkdownPreview    " 普通模式关闭 md 预览
imap <silent> <F9> <Plug>StopMarkdownPreview    " 插入模式关闭 md 预览

" 插件 NERDTree 设置
nnoremap <Leader>n :NERDTreeFocus<CR>
nnoremap <Leader>m :NERDTreeClose<CR>:NERDTreeFind<CR>
nnoremap <Leader>N :NERDTreeClose<CR>

" 插件安装 -----------------------------------------
" 需要提前安装 vim-plug 管理插件
call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'                " Vim 启动插件
Plug 'vim-airline/vim-airline'           " Vim 状态栏提供更优秀的显示功能
Plug 'morhetz/gruvbox'                   " 界面配色方案
Plug 'preservim/nerdtree'                " 显示 Vim 目录树插件
Plug 'iamcco/mathjax-support-for-mkdp'   " 用于 Markdown 预览数学公式
Plug 'iamcco/markdown-preview.vim'       " Markdown 预览工具

" Initialize plugin system
call plug#end()

" 自定义函数 ---------------------------------------
" autocmd BufNewFile,BufReadPost *.md set filetype=markdown                           " 自动识别 Markdown 文件
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=markdown   " 自动识别 Markdown 文件
au BufRead,BufNewFile *.{go}   set filetype=go
au BufRead,BufNewFile *.{js}   set filetype=javascript
" 当前行高亮（请参阅 :h cursorline）功能，该设置会让效果出现在当前窗口，但在插入模式中关闭这个效果
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline

" 新建 .sh，.java 文件，自动插入文件头 ----------------
autocmd BufNewFile *.sh,*.java exec ":call SetTitle()"
func SetTitle()                          " 定义函数 SetTitle，自动插入文件头
	" 如果文件类型为 .sh 文件
	if &filetype == 'sh'
		call setline(1,"\#########################################################################")
		call append(line("."), "\# File Name: ".expand("%"))
		call append(line(".")+1, "\# Author: chloneda")
		call append(line(".")+2, "\# mail: chloneda@gmail.com")
		call append(line(".")+3, "\# Created Time: ".strftime("%c"))
		call append(line(".")+4, "\#########################################################################")
		call append(line(".")+5, "\#!/usr/bin/env bash")
		call append(line(".")+6, "")
	endif
	if &filetype == 'java'
		call append(line(".")+6,"public class ".expand("%:r"))
		call append(line(".")+7,"")
	endif
	" 新建文件后，自动定位到文件末尾
	autocmd BufNewFile * normal G
endfunc


