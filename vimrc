" ==============================================
" ProjectLink: https://github.com/chloneda/vim-cheatsheet
" Author: chloneda
" Version: 1.0.0
" Email: chloneda@gmail.com
" Blog: https://www.cnblogs.com/chloneda
" LastModify: 2020-02-01
" Desc:  Vim个人定制化配置文件
" ==============================================

" Vim 脚本注释是以 " 开头的，只存在行注释，不存在块注释

" 设置外观 -------------------------------------
set number                      " 显示行号 
set showtabline=0               " 隐藏顶部标签栏
set guioptions-=r               " 隐藏右侧滚动条 
set guioptions-=L               " 隐藏左侧滚动条
set guioptions-=b               " 隐藏底部滚动条
set cursorline                  " 突出显示当前行
set cursorcolumn                " 突出显示当前列
set t_Co=256			        " 指定配色方案是256色

" 主要配置 -------------------------------------
syntax on                       " 开启语法高亮
set history=200                 " 记录 200 条历史命令
set encoding=utf-8              " Vim 内部buffer (缓冲区)、菜单文本等使用的编码方式
set fileencoding=utf-8          " 当前编辑文件的字符编码方式
set fileencodings=uft-8,gbk     " 使用utf-8或gbk打开文件
set termencoding=utf-8          " Vim 所工作的终端的字符编码方式
set langmenu=zh_CN.UTF-8        " 显示中文菜单
set helplang=cn                 " 帮助系统设置为中文
set showcmd                     " 输入的命令显示出来
set hlsearch                    " 高亮搜索的字符串
set incsearch                   " 即时搜索
set nowrap                      " 设置代码不折行
set fileformat=unix             " 设置以unix的格式保存文件
set cindent                     " 设置C样式的缩进格式
set tabstop=4                   " tab 显示多少个空格，默认 8
set softtabstop=4               " 统一缩进为4
set shiftwidth=4                " 每一级缩进是多少个空格
set smartindent                 " 开启智能缩进
set autoindent                  " 开启自动缩进
set backspace+=indent,eol,start " set backspace&可以对其重置
set scrolloff=5                 " 光标距离顶部和底部5行
set laststatus=2                " 命令行为两行
set cmdheight=2                 " 总是显示状态行
set autoindent                  " 启用自动对齐功能，把上一行的对齐格式应用到下一行
set clipboard+=unnamed          " 共享剪贴板   
set showmatch                   " 高亮显示匹配的括号
set matchtime=1                 " 匹配括号高亮的时间（单位是十分之一秒） 
set autoread                    " 设置当文件被改动时自动载入
set autowrite                   " 自动保存

" 其他配置 -------------------------------------
filetype on                     " 检测文件类型
filetype indent on
set mouse=a                     " 启用鼠标
set ruler                       " 显示光标当前位置
set title                       " show file in titlebar
set foldmethod=indent           " 基于缩进进行代码折叠
set nofoldenable                " 启动 Vim 时关闭折叠
set selection=exclusive         " 指定在选择文本时光标所在位置也属于被选中的范围
set selectmode=mouse,key        " 使鼠标和键盘都可以控制光标选择文本
set ignorecase                  " 搜索忽略大小写
set smartcase                   " 智能大小写敏感, 只要有一个字母大写, 就大小写敏感, 否则不敏感
set noexpandtab                 " 不允许扩展table
set whichwrap+=<,>,h,l          " 允许backspace和光标键跨越行边界
set confirm                     " 在处理未保存或只读文件的时候，弹出确认
set nobackup                    " 禁止备份
set noswapfile                  " 禁止生成临时文件
set noundofile                  " 不生成 undo 文件
set report=0                    " 通过使用: commands命令，告诉我们文件的哪一行被改变过
set equalalways                 " 分割窗口时保持相等的宽/高
set splitright                  " 竖直split时,在右边开启
set splitbelow                  " 水平split时,在下边开启

" Vim 重新打开文件时，回到上次历史所编辑文件的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
" 让vimrc配置变更立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 按键映射 -----------------------------------
map Y y$                        " 复制 从光标到行尾 所在范围的文本
map <C-A> ggVG                  " 全选
map <C-h> <C-W>h                " 切换到左边的分割窗口
map <C-j> <C-W>j                " 切换到下面的分割窗口
map <C-k> <C-W>k                " 切换到上面的分割窗口
map <C-l> <C-W>l                " 切换到右边的分割窗口

" 无论是 normal模式 / Insert模式，按 Crtl+s 保存文件
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a
"在插入模式下快速进行行首/行尾跳转
imap <C-f> <Esc>^
imap <C-e> <Esc>$

inoremap vv <esc>               " 映射插入模式下的 vv 键为 esc 键

" 插入模式上下左右
" inoremap <C-h> <left>
" inoremap <C-j> <down>
" inoremap <C-k> <up>
" inoremap <C-l> <right>

" 括号等自动补全
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap " ""<ESC>i
inoremap ' ''<Esc>i

" Vim搜索结果居中展示，silien 命令用于安静地执行命令，既不显示正常的消息，也不会把它加进消息历史
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

nnoremap U <C-r>                " 取消撤销操作，减少按键操作
nnoremap <F1> :nohls<CR>        " 取消 Vim 查找高亮显示
nnoremap <F2> :set nu! nu?<CR>  " 普通模式下按 F2 打开(或关闭)显示行号 
nnoremap <F3> :set list! list?<CR>
nnoremap <F4> :set wrap! wrap?<CR>
nnoremap <F5> :g/^\s*$/d<CR>    " 去空行
" 普通模式下按 F6 打开(或关闭) 语法高亮
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>

" 文件保存退出命令映射
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

"unmap <F10>                     " 取消一个映射 

" 插件安装 ------------------------------------ 
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'        " Vim启动插件
Plug 'preservim/nerdtree'        " 显示Vim目录树插件
" Initialize plugin system
call plug#end()

" 自定义函数 ----------------------------------
" 新建.sh,.java文件，自动插入文件头 -----------
autocmd BufNewFile *.sh,*.java exec ":call SetTitle()"
" 定义函数SetTitle，自动插入文件头
func SetTitle()
	"如果文件类型为.sh文件
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
	"新建文件后，自动定位到文件末尾
	autocmd BufNewFile * normal G
endfunc



