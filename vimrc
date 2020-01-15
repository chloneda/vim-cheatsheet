" Vim定制化配置文件

" Vim 脚本注释是以 " 开头的，只存在行注释，不存在块注释

" 设置外观 -------------------------------------
set number                      " 显示行号 
set showtabline=0               " 隐藏顶部标签栏
set guioptions-=r               " 隐藏右侧滚动条 
set guioptions-=L               " 隐藏左侧滚动条
set guioptions-=b               " 隐藏底部滚动条
set cursorline                  " 突出显示当前行
set cursorcolumn                " 突出显示当前列
set langmenu=zh_CN.UTF-8        " 显示中文菜单

" 辅助配置 -------------------------------------
syntax on                       " 开启语法高亮
set showcmd			" 输入的命令显示出来
set hlsearch		 	" 高亮搜索的字符串
set nowrap                      " 设置代码不折行
set fileformat=unix             " 设置以unix的格式保存文件
set cindent                     " 设置C样式的缩进格式
set tabstop=4                   " tab 显示多少个空格，默认 8
set shiftwidth=4                " 每一级缩进是多少个空格
set backspace+=indent,eol,start " set backspace&可以对其重置
set showmatch                   " 显示匹配的括号
set scrolloff=5                 " 距离顶部和底部5行
set laststatus=2                " 命令行为两行
set t_Co=256			" 指定配色方案是256色
set autoindent			" 启用自动对齐功能，把上一行的对齐格式应用到下一行

" 其他配置 -------------------------------------
set mouse=a                     " 启用鼠标
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase                  " 忽略大小写
set incsearch
set noexpandtab                 " 不允许扩展table
set whichwrap+=<,>,h,l
set autorea



