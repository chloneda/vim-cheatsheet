# Vim 命令速查表

## 简介

> Vim 命令速查表，注释化 vimrc 配置文件，经典 Vim 键盘图，实用 Vim 书籍，Markdown 格式，目录化检索，快速熟悉使用！

- [vim-cheatsheet](https://github.com/chloneda/vim-cheatsheet) | [Vim 官网](https://www.vim.org/) | [Github](https://github.com/vim/vim) | [Vim 中文文档](http://vimcdoc.sourceforge.net/doc/help.html)
- [Vim 自定义配置文件 - vimrc](./vimrc)
- [Chrome 浏览器神级插件 - Vimium](./resources/vimium.md)
- [简体中文](./README.md) | [English](./resources/README_EN.md) 



## 重复的威力

```bash
.                   # 小数点，重复上一次的命令
N<command>          # 重复某个命令 N 次，例如：10k，光标上移 10 行
```



## 光标移动

**注：一般模式下，任意一个动作都可以重复。**

```bash
h                   # 光标左移，同 <Left> 键
j                   # 光标下移，同 <Down> 键
k                   # 光标上移，同 <Up> 键
l                   # 光标右移，同 <Right> 键
Ctrl+e              # 向上滚动一行
Ctrl+y              # 向下滚动一行
Ctrl+u              # 向上滚动半屏 --> Move up 1/2 a screen
Ctrl+d              # 向下滚动半屏 --> Move down 1/2 a screen
Ctrl+f              # 向下滚动一屏 --> Move forward one full screen
Ctrl+b              # 向上滚动一屏 --> Move back one full screen
0                   # 跳到行首，数字 0，效用等同于 <Home> 键
^                   # 跳到从行首开始第一个非空白字符
$                   # 跳到行尾，效用等同于 <End> 键
gg                  # 跳到第一行，效用等同于 Ctrl+<Home>
G                   # 跳到最后一行，效用等同于 Ctrl+<End>
NG                  # 跳到第 N 行，比如 10G 是移动到第十行
:N                  # 跳到第 N 行，比如 :10<Enter> 是移动到第十行
10%                 # 移动到文件 10% 处
15|                 # 移动到当前行的 15 列
w                   # 跳到下一个单词开头（word：标点或空格分隔的单词）
W                   # 跳到下一个单词开头（Word：空格分隔的单词）
e                   # 跳到下一个单词尾部（word：标点或空格分隔的单词）
E                   # 跳到下一个单词尾部（Word：空格分隔的单词）
b                   # 跳到上一个单词开头（word：标点或空格分隔的单词）
B                   # 跳到上一个单词开头（Word：空格分隔的单词）
ge                  # 跳到前一个单词结尾
)                   # 向前移动一个句子（句号分隔）
(                   # 向后移动一个句子（句号分隔）
}                   # 向前移动一个段落（空行分隔）
{                   # 向后移动一个段落（空行分隔）
<Enter>             # 移动到下一行首个非空字符
N<Enter>            # 光标向下移动 N 行
+                   # 移动到下一行首个非空字符（同回车键）
-                   # 移动到上一行首个非空字符
H                   # 移动到屏幕上部（H: High）
M                   # 移动到屏幕中部（M: Middle）
L                   # 移动到屏幕下部（L: Low）
<S+Left>            # 按住 Shift 按左键，向左移动一个单词
<S+Right>           # 按住 Shift 按右键，向右移动一个单词
<S+Up>              # 按住 Shift 按上键，向上翻页
<S+Down>            # 按住 Shift 按下键，向下翻页
gm                  # 移动到的行中间
gj                  # 光标向下移动一个屏幕行（忽略自动换行）
gk                  # 光标向上移动一个屏幕行（忽略自动换行）
zz                  # 调整光标所在行到屏幕中央
zt                  # 调整光标所在行到屏幕上部
zb                  # 调整光标所在行到屏幕下部
```



## 插入模式

```bash
i                   # 在光标处进入插入模式
I                   # 在行首进入插入模式
a                   # 在光标后进入插入模式
A                   # 在行尾进入插入模式
o                   # 在下一行插入新行并进入插入模式
O                   # 在上一行插入新行并进入插入模式
gi                  # 进入到上一次插入模式的位置
<Esc>               # 退出插入模式
Ctrl+[              # 退出插入模式，等价于 Esc 键
```



## 插入模式的命令

**注：由 i, I, a, A, o, O 等命令进入插入模式。**

```bash
<Up>                # 光标向上移动
<Down>              # 光标向下移动
<Left>              # 光标向左移动
<Right>             # 光标向右移动
<S+Left>            # 按住 Shift 按左键，向左移动一个单词
<S+Right>           # 按住 Shift 按右键，向右移动一个单词
<S+Up>              # 按住 Shift 按上键，向上翻页
<S+Down>            # 按住 Shift 按下键，向下翻页
<PageUp>            # 向上翻页
<PageDown>          # 向下翻页
<Delete>            # 删除光标处字符
<Backspace>         # Backspace 键是向后删除字符
<Home>              # 光标跳转行首
<End>               # 光标跳转行尾
Ctrl+d              # 减少缩进
Ctrl+f              # 减少缩进
Ctrl+t              # 增加缩进
Ctrl+h              # 删除前一个字符，相当于回格键 Backspace
Ctrl+o              # 临时退出插入模式，执行单条命令又返回插入模式
Ctrl+u              # 当前行删除到行首所有字符
Ctrl+w              # 删除光标前的一个单词
Ctrl+\ Ctrl+O       # 临时退出插入模式（光标保持），执行单条命令又返回插入模式
Ctrl+R 0            # 插入寄存器（内部 0 号剪贴板）内容，Ctrl+R 后可跟寄存器名
Ctrl+R "            # 插入匿名寄存器内容，相当于插入模式下 p 粘贴
Ctrl+R =            # 插入表达式计算结果，等号后面跟表达式
Ctrl+R :            # 插入上一次命令行命令
Ctrl+R /            # 插入上一次搜索的关键字
Ctrl+v {char}       # 插入非数字的字面量
Ctrl+v {code}       # 插入用三位数字表示的 ASCII/Unicode 字符编码，如 Ctrl+v 065
Ctrl+v 065          # 插入 10 进制 ASCII 字符（两数字） 065 即 A 字符
Ctrl+v x41          # 插入 16 进制 ASCII 字符（三数字） x41 即 A 字符
Ctrl+v o101         # 插入 8 进制 ASCII 字符（三数字） o101 即 A 字符
Ctrl+v u1234        # 插入 16 进制 Unicode 字符（四数字）
Ctrl+v U12345678    # 插入 16 进制 Unicode 字符（八数字）
Ctrl+K {ch1} {ch2}  # 插入 digraph（见 :h digraph），快速输入日文或符号等
```



## 自动补全

在插入模式下，最常用的补全。

```bash
Ctrl+n              # 插入模式下文字自动补全 
Ctrl+P              # 插入模式下文字自动补全
Ctrl+e              # 有补全列表时，终止这次补全，继续输入
```

**智能补全 命令均以组合键 Ctrl+X 作为起始操作。**

```bash
Ctrl+X              # 进入补全模式
Ctrl+X Ctrl+L       # 整行补全
Ctrl+X Ctrl+N       # 插入模式下，根据当前文件里关键字补全
Ctrl+X Ctrl+K       # 根据字典补全
Ctrl+X Ctrl+T       # 根据同义词字典补全
Ctrl+X Ctrl+F       # 插入模式下补全文件名
Ctrl+X Ctrl+I       # 根据头文件内关键字补全
Ctrl+X Ctrl+]       # 根据标签补全
Ctrl+X Ctrl+D       # 补全宏定义
Ctrl+X Ctrl+V       # 补全 Vim 命令
Ctrl+X Ctrl+U       # 用户自定义补全方式
Ctrl+X Ctrl+S       # 拼写建议，例如：一个英文单词
Ctrl+X Ctrl+O       # 插入下 Omnifunc 补全
```



## 文本编辑

```bash
r                   # 替换当前字符
R                   # 进入替换模式，直至 Esc 离开
s                   # 替换字符（删除光标处字符，并进入插入模式，前可接数量）
S                   # 替换行（删除当前行，并进入插入模式，前可接数量）
cc                  # 改写当前行（删除当前行并进入插入模式），同 S
cw                  # 改写光标开始处的当前单词
ciw                 # 改写光标所处的单词
caw                 # 改写光标所处的单词，并且包括前后空格（如果有的话）
c0                  # 改写到行首
c^                  # 改写到行首（第一个非零字符）
c$                  # 改写到行末
C                   # 改写到行尾（同 c$）
ci"                 # 改写双引号中的内容
ci'                 # 改写单引号中的内容
cib                 # 改写小括号中的内容
cab                 # 改写小括号中的内容（包含小括号本身）
ci)                 # 改写小括号中的内容
ci]                 # 改写中括号中内容
ciB                 # 改写大括号中内容
caB                 # 改写大括号中的内容（包含大括号本身）
ci}                 # 改写大括号中内容
cit                 # 改写 XML tag 中的内容
cis                 # 改写当前句子
c2w                 # 改写下两个单词
ct(                 # 改写到小括号前
x                   # 删除当前字符，前面可以接数字，3x 代表删除三个字符
X                   # 向前删除字符
dd                  # 删除（剪切）当前行，并把删除的行存到剪贴板里 --> Delete (cut) a line 
d0                  # 删除（剪切）到行首
d^                  # 删除（剪切）到行首（第一个非零字符）
d$                  # 删除（剪切）到行末
D                   # 删除（剪切）到行末（同 d$）
dw                  # 删除（剪切）当前单词
diw                 # 删除（剪切）光标所处的单词
daw                 # 删除（剪切）光标所处的单词，并包含前后空格（如果有的话）
di"                 # 删除双引号中的内容
di'                 # 删除单引号中的内容
dib                 # 删除小括号中的内容
di)                 # 删除小括号中的内容
dab                 # 删除小括号内的内容（包含小括号本身）
di]                 # 删除中括号中内容
diB                 # 删除大括号中内容
di}                 # 删除大括号中内容
daB                 # 删除大括号内的内容（包含大括号本身）
dit                 # 删除 XML 中 tag 中的内容
dis                 # 删除当前句子
d2w                 # 删除下两个单词
dt(                 # 删除到小括号前
dgg                 # 删除到文件头部
dG                  # 删除到文件尾部
d}                  # 删除下一个段落
d{                  # 删除上一个段落
10d                 # 删除当前行开始的 10 行
:10d                # 删除第 10 行
:1,10d              # 删除 1-10 行
J                   # 将多行合并为一行
.                   # 重复上一次操作
~                   # 替换大小写
g~iw                # 替换当前单词的大小写
gUiw                # 将单词转成大写
guiw                # 将当前单词转成小写
guu                 # 全行转为小写
gUU                 # 全行转为大写
<<                  # 减少缩进
>>                  # 增加缩进
==                  # 自动缩进
Ctrl+A              # 增加数字
Ctrl+X              # 减少数字
```



## 复制粘贴

**copy 命令的格式为**：

```bash
:[range]copy{address}
```

**参数说明**：
- [range]：表示要复制的行范围，其中 copy 可缩写为 :co 或 :t。
- {address}：表示复制的目标位置，这两个参数都可以缺省，用于表示 Vim 光标所在当前行。

> 例如 :5copy. 表示复制 Vim 当前打开的文件的第 5 行到当前行（用 . 表示），即为第 5 行创建一份副本，并放到当前行下方。

下标列出了使用 copy 命令的缩写形式 t 进行文件复制的一些实例及用途，用于理解复制命令 copy 的用途。

```bash
:3,5t.              # 把第 3 行到第 5 行的内容复制到当前行下方
:t5                 # 把当前行复制到第 5 行下方
:t.                 # 复制当前行到当前行下方（等价于普通模式下的 yyp）
:t$                 # 把当前行复制到文本结尾
:'<,'>t0            # 把高亮选中的行复制到文件开头
```

**常用复制粘贴命令**：

```bash
p                   # 粘贴到光标后
P                   # 粘贴到光标前
v                   # 进入可视模式
y                   # 复制标记内容
V                   # 可视模式按行标记
Ctrl+V              # 可视模式按列标记
y$                  # 复制当前位置到本行结束的内容
yy                  # 复制当前行 --> Yank (copy) a line 
Y                   # 复制当前行，同 yy
yiw                 # 复制当前单词
Nyy                 # 复制光标下 N 行内容
ddp                 # 剪切当前行并粘贴（先删除当前行复制到寄存器，并粘贴）
v0                  # 选中当前位置到行首
v$                  # 选中当前位置到行末
viw                 # 选中当前单词
vib                 # 选中小括号内的内容
vi)                 # 选中小括号内的内容
vi]                 # 选中中括号内的内容
viB                 # 选中大括号内的内容
vi}                 # 选中大括号内的内容
vis                 # 选中句子中的内容
vab                 # 选中小括号内的内容（包含小括号本身）
va)                 # 选中小括号内的内容（包含小括号本身）
va]                 # 选中中括号内的内容（包含中括号本身）
vaB                 # 选中大括号内的内容（包含大括号本身）
va}                 # 选中大括号内的内容（包含大括号本身）
:set paste          # 允许粘贴模式（避免粘贴时自动缩进影响格式）
:set nopaste        # 禁止粘贴模式
"?yy                # 复制当前行到寄存器 ? ，问号代表 0-9 的寄存器名称
"?d3j               # 删除光标下三行内容，并放到寄存器 ? ，问号代表 0-9 的寄存器名称
"?p                 # 将寄存器 ? 的内容粘贴到光标后
"?P                 # 将寄存器 ? 的内容粘贴到光标前
:registers          # 显示所有寄存器内容
:[range]y           # 复制范围，比如 :20,30y 是复制 20 到 30 行，:10y 是复制第十行
:[range]d           # 删除范围，比如 :20,30d 是删除 20 到 30 行，:10d 是删除第十行
"_[command]         # 使用 [command] 删除内容，并且不进行复制（不会污染寄存器）
"*[command]         # 使用 [command] 复制内容到系统剪贴板（需要 Vim 版本有 clipboard 支持）
```

**文本编辑、复制粘贴中的内容可以简单总结为：**

```bash
ci'、ci"、ci(、ci[、ci{、ci<                 # 分别更改这些配对标点符号中的文本内容
di'、di"、di( 或 dib、di[、di{ 或 diB、di<    # 分别删除这些配对标点符号中的文本内容
yi'、yi"、yi(、yi[、yi{、yi<                 # 分别复制这些配对标点符号中的文本内容
vi'、vi"、vi(、vi[、vi{、vi<                 # 分别选中这些配对标点符号中的文本内容
```
cit、dit、yit、vit，分别操作一对标签之间的内容，编辑 HTML、XML 很好用！另外，如果把上面的 i 改成 a 可以同时操作配对标点和配对标点内的内容。



## 移动文本

```bash
:[range]move{address}
```
**参数说明**
- [range]：表示要移动的行范围。
- {address}：表示移动的目标位置，这两个参数都可以缺省。

例如：
```bash
:m+1                # 下移 1 行
:m-2                # 上移 1 行
:8,10m2             # 把当前打开文件的第 8~10 行内容移动到第 2 行下方
```



## 文本对象

```bash
0                   # 到行首，数字 0
^                   # 到行首非空字符，可以使用 0w 代替 ^，按键更方便
$                   # 到行尾
iw                  # 整个单词 Word（不包括分隔符）
aw                  # 整个单词 Word（包括分隔符）
iW                  # 整个 Word（不包括分隔符）
aW                  # 整个 Word（包括分隔符）
is                  # 整个句子 (s: sentence)（不包括分隔符）
ib                  # 小括号内（b: brackets）
ab                  # 小括号内（包含小括号本身）
iB                  # 大括号内
aB                  # 大括号内（包含大括号本身）
i)                  # 小括号内
a)                  # 小括号内（包含小括号本身）
i]                  # 中括号内
a]                  # 中括号内（包含中括号本身）
i}                  # 大括号内
a}                  # 大括号内（包含大括号本身）
i'                  # 单引号内
a'                  # 单引号内（包含单引号本身）
i"                  # 双引号内
a"                  # 双引号内（包含双引号本身）
2i)                 # 往外两层小括号内
2a)                 # 往外两层小括号内（包含小括号本身）
2f)                 # 到第二个小括号处
2t)                 # 到第二个小括号前
```



## 撤销与恢复

```bash
u                   # 撤销命令（u: undo），可以组合，例如 Nu，N 是任意整数，表示撤销 N 步操作，下同
U                   # 撤销整行操作
Ctrl+r              # 撤销上一次 u 命令（r: redo）
Ctrl+R              # 回退前一个命令
```



## 查找替换

**一般模式下的查找命令：**

```bash
/pattern            # 从光标处向文件尾搜索 pattern
?pattern            # 从光标处向文件头搜索 pattern
n                   # 向同一方向执行上一次搜索
N                   # 向相反方向执行上一次搜索
%                   # 匹配括号移动，包括 ()，{}，[]。结合以下两个命令对程序员来说是相当强大（前提：需要把光标先移到括号上）
*                   # 向下搜索光标所在的单词
#                   # 向前搜索光标所在的单词
f<char>             # 向后搜索当前行第一个为 <char> 的字符，2fv 可以找到第二个 v 字符
F<char>             # 向前搜索当前行第一个为 <char> 的字符
t<char>             # 向后搜索当前行第一个为 <char> 的字符前
T<char>             # 向前搜索当前行第一个为 <char> 的字符前
;                   # 重复上次的字符查找命令（f/t命令）
,                   # 反转方向查找上次的字符查找命令（f/t命令）
tx                  # 搜索当前行到指定 字符串 之前
fx                  # 搜索当前行到指定 字符串 之处
```

**一般模式下的替换命令：** 

```bash
:[range]s[ubstitute]/{pattern}/{string}/[flags]
```

参数说明：
- pattern：就是要被替换掉的字串，可以用 regexp 來表示。
- string：將 pattern 由 string 所取代。
- [range]：有以下一些取值。

| [range]取值 | 含义                                                  |
| ---------- | ----------------------------------------------------- |
| 无         | 默认光标所在行                                           |
| .          | 光标所在当前行                                          |
| N          | 第 N 行                                               |
| $          | 最后一行                                               |
| 'a         | 标记 a 所在的行（之前要用 ma 做过标记）                    |
| $-1        | 倒数第二行，可以对某一行加减某个数值获得确定的某行             |
| 1,10       | 第 1~10 行                                             |
| 1,$        | 第一行到最后一行                                         |
| 1,.        | 第一行到当前行                                           |
| .,$        | 当前行到最后一行                                         |
| 'a,'b      | 标记 a 所在的行 到 标记 b 所在的行（之前要用 ma、mb 做过标记） |
| %          | 所有行（和 1，$ 等价）                                    |
| ?str?      | 从当前位置向上搜索，找到第一个 str 的行（str 可以是正则）      |
| /str/      | 从当前位置向下搜索，找到第一个 str 的行（str 可以是正则）      |

注意，上面的所有用于 range 的表示方法都可以通过 +、- 操作来设置相对偏移量。

- [flags]有以下一些取值：


| [flags]取值  | 含义                                 |
| ----------- | ------------------------------------ |
| g           | 对指定范围内的所有匹配项（global）进行替换 |
| c           | 在替换前请求用户进行确认（confirm）       |
| e           | 忽略执行过程中的错误                    |
| i           | 不区分大小写                           |
| 无          | 只在指定范围内的第一个匹配项进行替换        |

举例：

```bash
:s/p1/p2/g          # 将当前行中全替换 p1 为 p2
:%s/p1/p2/g         # 将当前文件中全替换 p1 为 p2
:%s/p1/p2/gc        # 将当前文件中全替换 p1 为 p2，并且每处询问你是否替换
:10,20s/p1/p2/g     # 将第 10 到 20 行中所有 p1 替换为 p2
:%s/1\\2\/3/123/g   # 将 "1\2/3" 替换为 "123"（特殊字符使用反斜杠标注）
:%s/\r//g           # 删除 DOS 换行符 ^M
:%s///gn            # 统计某个模式的匹配个数
:%s/^\s*$\n//g      # 删除 Vim 打开文件中所有空白行
:g/^\s*$/d          # 删除 Vim 打开文件中所有空白行
:%s/^M$//g          # 删除 Vim 文件中显式的 ^M 符号（操作系统换行符问题）
```



## 可视模式

**注：Vim 可视模式下可以选择一块编辑区域，然后对选中的文件内容执行插入、删除、替换、改变大小写等操作。**

```bash
v                   # 切换到面向字符的可视模式
V                   # 切换到面向行的可视模式
Ctrl+V              # 切换到面向列块的可视模式
>                   # 增加缩进
<                   # 减少缩进
d                   # 删除高亮选中的文字
x                   # 删除高亮选中的文字
c                   # 改写文字，即删除高亮选中的文字并进入插入模式
s                   # 改写文字，即删除高亮选中的文字并进入插入模式
y                   # 拷贝文字
~                   # 转换大小写
o                   # 跳转到标记区的另外一端
O                   # 跳转到标记块的另外一端
u                   # 标记区转换为小写
U                   # 标记区转换为大写
gv                  # 重选上次的高亮选区
g Ctrl+G            # 显示所选择区域的统计信息
ggVG                # 选择全文
<Esc>               # 按 Esc 键退出可视模式
```

此外： Vim Normal 命令可以在命令行模式执行普通模式下的命令，当 Normal 命令与 Vim 可视化模式结合时，只需很少的操作就能完成大量重复性工作。



## 注释命令

**多行注释**
```bash
Ctrl+v              # 进入命令行模式，按 Ctrl+v 进入可视模式，然后按 j，或者 k 选中多行，把需要注释的行标记起来
I                   # 按大写字母 I，再插入注释符，例如 #、//
<Esc>               # 按 Esc 键就会全部注释了
```

**取消多行注释**

```bash
Ctrl+v              # 进入命令行模式，按 Ctrl+v 进入可视模式，按字母 l 横向选中列的个数，例如 #、//（需要选中 2 列）
j 或 k              # 按字母 j，或者 k 选中注释符号
d                   # 按 d 键就可全部取消注释
```

**复杂注释**

```bash
:起始行号,结束行号 s/^/ 注释符 /g（注意冒号）       # 在指定的行首添加注释
:起始行号,结束行号 s/^ 注释符 //g（注意冒号）       # 在指定的行首取消注释

:3,5 s/^/#/g        # 注释第 3-5 行
:3,5 s/^#//g        # 解除 3-5 行的注释

:1,$ s/^/#/g        # 注释整个文档
:1,$ s/^#//g        # 取消注释整个文档

:%s/^/#/g           # 注释整个文档，此法更快
:%s/^#//g           # 取消注释整个文档
```



## 位置跳转

```bash
Ctrl+O              # 跳转到上一个位置
Ctrl+I              # 跳转到下一个位置
Ctrl+^              # 跳转到 alternate file（当前窗口的上一个文件）
%                   # 匹配跳转到对应的 {} () []
gd                  # 跳转到局部定义（光标下的单词的定义）
gD                  # 跳转到全局定义（光标下的单词的定义）
gf                  # 打开名称为光标下文件名的文件
[[                  # 跳转到上一个顶层函数（比如C语言以大括号分隔）
]]                  # 跳转到下一个顶层函数（比如C语言以大括号分隔）
[m                  # 跳转到上一个成员函数
]m                  # 跳转到下一个成员函数
[{                  # 跳转到上一处未匹配的 {
]}                  # 跳转到下一处未匹配的 }
[(                  # 跳转到上一处未匹配的 (
])                  # 跳转到下一处未匹配的 )
[c                  # 上一个不同处（diff时）
]c                  # 下一个不同处（diff时）
[/                  # 跳转到 C 注释开头
]/                  # 跳转到 C 注释结尾
``                  # 回到上次跳转的位置
''                  # 回到上次跳转的位置
`.                  # 回到上次编辑的位置
'.                  # 回到上次编辑的位置
```



## 文件操作

```bash
:w                  # 写入文件并保存，会修改文件的时间戳
:w <filename>       # 按名称保存文件
:w !sudo tee %      # 以超级用户权限保存文件，也可以这样 :w !sudo tee % > /dev/null
:wa                 # 保存所有文件
:wall               # 保存所有文件
:wqall              # 保存所有文件并退出
:q                  # 关闭光标所在的窗口并退出（q: quit）
:q!                 # 不保存文件并强制退出（q: quit）
:qa！               # 放弃所有文件操作并强制退出
:qall               # 放弃所有文件操作并退出
:x                  # 保存文件并退出，不会修改文件的时间戳
:edit <filename>    # 打开文件并编辑，缩写（:e file），通过文件的绝对或相对路径打开文件，Tab 键补全路径
:edit .             # 打开文件管理器，缩写（:e .），浏览当前目录下的文件，选中并编辑   
:Explore            # 打开文件管理器，缩写（:E），并显示活动缓冲区所在的目录
:saveas <filename>  # 另存为指定文件
:o <filename>       # 在当前窗口打开（o: open）另一个文件
:r <filename>       # 读取文件并将内容插入到光标后
:r !dir             # 将 dir 命令的输出捕获并插入到光标后
:on[ly]             # 关闭除光标所在的窗口之外的其他窗口，同 Ctrl+W o
:clo[se]            # 关闭光标所在窗口的文件，同 Ctrl+W c
:cd <path>          # 切换 Vim 当前路径
:pwd                # 显示 Vim 当前路径
:n <filename>       # 打开一个新的窗口编辑新文件 filename 
:new                # 打开一个新的窗口编辑新文件
:enew               # 在当前窗口创建新文件
:vnew               # 在左右切分的新窗口中编辑新文件
:tabnew             # 在新的标签页中编辑新文件
:version            # 查看 Vim 版本，同时也查看 Vim 载入配置文件的优先顺序
ZZ                  # 保存已改动的文件，并关闭退出窗口
ZQ                  # 不保存文件关闭窗口
```



## 打开文件

```bash
vim .               # 打开文件管理器，显示目录文件，通过选中文件编辑
vim filename        # 打开或新建文件，并将光标置于第一行首
vim + filename      # 打开文件，并将光标置于最后一行首
vim +n filename     # 打开文件，并将光标置于第 n 行首
vim -c cmd file     # 在打开文件 file 前，先执行指定的 Vim 命令 cmd
vim -b file         # 以二进制模式打开文件，该模式某些特殊字符（如换行符 ^M）都可以显示出来
vim -d file1 file2  # 使用 Vim 同时打开 file1 和 file2 文件并 diff 两个文件的差异
vim -r filename     # 在上次正用 Vim 编辑时发生系统崩溃，恢复文件
vim -R file         # 以只读形式打开文件，但是仍然可以使用 :wq! 写入
vim -M file         # 强制性关闭修改功能，无法使用 :wq! 写入 
vim -o file1 file2  # 终端中要打开 Vim 文件时，横向分割显示多个文件
vim -O file1 file2  # 终端中要打开 Vim 文件时，纵向分割显示多个文件
vim -x file         # 以加密方式打开文件
vim +/target file   # 打开 file 并将光标移动到找到的第一个 target 字符串上
```



## 已打开文件操作

```bash
:ls                 # 查案缓存列表
:bn                 # 切换到下一个缓存
:bp                 # 切换到上一个缓存
:bd                 # 删除缓存
:b 1                # 切换到 1 号缓存
:b abc              # 切换到文件名为 abc 开头的缓存
:badd <filename>    # 将文件添加到缓存列表
:set hidden         # 设置隐藏模式（未保存的缓存可以被切换走，或者关闭）
:set nohidden       # 关闭隐藏模式（未保存的缓存不能被切换走，或者关闭）
n Ctrl+^            # 切换缓存，先输入数字的缓存编号，再按 Ctrl+6
```



## 多窗口操作

> 分屏窗口是基于 Ctrl+W 快捷键的，Ctrl 是控制功能键，W 是代表 Windom，Ctrl+W 代表控制窗口的意思。

```bash
:sp <filename>      # 上下横向切分（split）窗口并在新窗口打开文件 filename
:vs <filename>      # 左右纵向切分（vertical split）窗口并在新窗口打开文件 filename
:split              # 将当前窗口再复制一个横向窗口出来，内容同步，游标可以不同
:vsplit             # 将当前窗口再复制一个纵向窗口出来，内容同步，游标可以不同
Ctrl+W              # 切换到下一个窗口（Window） 
Ctrl+W s            # 上下横向（split）切分窗口          
Ctrl+W v            # 左右纵向（vertical split）切分窗口 
Ctrl+W w            # 循环切换到下一个窗口 
Ctrl+W W            # 循环切换到上一个窗口 
Ctrl+W p            # 跳到上一个访问过的窗口 
Ctrl+W r            # 互换（r: reverse）窗口
Ctrl+W c            # 关闭（c: close）当前窗口，但不能关闭最后一个窗口
Ctrl+W q            # 退出（q: quit）当前窗口，如果是最后一个窗口，则关闭 vi
Ctrl+W o            # 只保留活动窗口，关闭其他（o: other）窗口，同 :on[ly] 
Ctrl+W h            # 跳到左边的窗口
Ctrl+W j            # 跳到下边的窗口
Ctrl+W k            # 跳到上边的窗口
Ctrl+W l            # 跳到右边的窗口
Ctrl+W +            # 增加当前窗口的行高，前面可以加数字
Ctrl+W -            # 减少当前窗口的行高，前面可以加数字
Ctrl+W <            # 减少当前窗口的列宽，前面可以加数字
Ctrl+W >            # 增加当前窗口的列宽，前面可以加数字
Ctrl+W =            # 让所有窗口宽高相同
Ctrl+W H            # 将当前窗口移动到最左边
Ctrl+W J            # 将当前窗口移动到最下边
Ctrl+W K            # 将当前窗口移动到最上边
Ctrl+W L            # 将当前窗口移动到最右边
Ctrl+W x            # 交换窗口
Ctrl+W f            # 在新窗口中打开名为光标下文件名的文件
Ctrl+W gf           # 在新标签页中打开名为光标下文件名的文件
Ctrl+W T            # 将当前窗口移到新的标签页中
Ctrl+W P            # 跳转到预览窗口
Ctrl+W z            # 关闭预览窗口
Ctrl+W _            # 纵向最大化当前窗口
Ctrl+W |            # 横向最大化当前窗口
```



## 标签页

```bash
:tabs               # 显示所有标签页
:tabe <filename>    # 在新标签页中打开文件 filename
:tabn               # 下一个标签页
:tabp               # 上一个标签页
:tabc               # 关闭当前标签页
:tabo               # 关闭其他标签页
:tabn N             # 切换到第 N 个标签页，比如：tabn 3 切换到第三个标签页
:tabm n             # 标签移动
:tabfirst           # 切换到第一个标签页
:tablast            # 切换到最后一个标签页
:tab help           # 在标签页打开帮助
:tab drop <file>    # 如果文件已被其他标签页和窗口打开则跳过去，否则新标签打开
:tab split          # 在新的标签页中打开当前窗口里的文件
:tab ball           # 将缓存中所有文件用标签页打开
:set showtabline=?  # 设置为 0 就不显示标签页标签，1 会按需显示，2 会永久显示
Ngt                 # 切换到第 N 个标签页，比如 2gt 将会切换到第二个标签页
gt                  # 下一个标签页
gT                  # 上一个标签页
```



## Vim 书签

```bash
:marks              # 显示所有书签
ma                  # 保存当前位置到书签 a ，书签名小写字母为文件内，大写全局
'a                  # 跳转到书签 a 所在的行
`a                  # 跳转到书签 a 所在位置
`.                  # 跳转到上一次编辑的行
'A                  # 跳转到全文书签 A
['                  # 跳转到上一个书签
]'                  # 跳转到下一个书签
'<                  # 跳到上次可视模式选择区域的开始
'>                  # 跳到上次可视模式选择区域的结束
```




## 帮助信息

```bash
:help <command>     # 显示相关命令的帮助，也可以就输入 :help 而不跟命令，退出帮助需要输入 :q
:h tutor            # 入门文档
:h quickref         # 快速帮助
:h index            # 查询 Vim 所有键盘命令定义
:h summary          # 帮助你更好的使用内置帮助系统
:h Ctrl+H           # 查询普通模式下 Ctrl+H 是干什么的
:h i_Ctrl+H         # 查询插入模式下 Ctrl+H 是干什么的
:h i_<Up>           # 查询插入模式下方向键上是干什么的
:h pattern.txt      # 正则表达式帮助
:h eval             # 脚本编写帮助
:h function-list    # 查看 VimScript 的函数列表 
:h windows.txt      # 窗口使用帮助
:h tabpage.txt      # 标签页使用帮助
:h +timers          # 显示对 +timers 特性的帮助
:h :!               # 查看如何运行外部命令
:h tips             # 查看 Vim 内置的常用技巧文档
:h set-termcap      # 查看如何设置按键扫描码
:viusage            # Normal 模式帮助
:exusage            # EX 命令帮助
:version            # 显示当前 Vim 的版本号和特性
```



## 外部命令

```bash
:!command           # 执行一次性 Shell 命令，如下命令：:!pwd，当前 Vim 模式下改变目录
:shell              # 启动一个交互的 Shell 执行多个命令，exit 命令退出并返回 Vim
:!ls                # 运行外部命令 ls，并等待返回
:r !ls              # 将外部命令 ls 的输出捕获，并插入到光标后
:w !sudo tee %      # sudo 以后保存当前文件，也可以这样 :w !sudo tee % > /dev/null
:call system('ls')  # 调用 ls 命令，但是不显示返回内容
:!start notepad     # Windows 下启动 Notepad，最前面可以加 silent
:sil !start cmd     # Windows 下当前目录打开 cmd
:%!prog             # 运行文字过滤程序，如整理 JSON 格式 :%!python -m json.tool
```



## Quickfix 窗口

```bash
:copen              # 打开 quickfix 窗口（查看编译，grep 等信息）
:copen 10           # 打开 quickfix 窗口，并且设置高度为 10
:cclose             # 关闭 quickfix 窗口
:cfirst             # 跳到 quickfix 中第一个错误信息
:clast              # 跳到 quickfix 中最后一条错误信息
:cc [nr]            # 查看错误 [nr]
:cnext              # 跳到 quickfix 中下一个错误信息
:cprev              # 跳到 quickfix 中上一个错误信息
```



## 拼写检查

```bash
:set spell          # 打开拼写检查
:set nospell        # 关闭拼写检查
]s                  # 下一处错误拼写的单词
[s                  # 上一处错误拼写的单词
zg                  # 加入单词到拼写词表中
zug                 # 撤销上一次加入的单词
z=                  # 拼写建议
```



## 代码折叠

```bash
za                  # 切换折叠
zA                  # 递归切换折叠
zc                  # 折叠光标下代码
zC                  # 折叠光标下所有代码
zd                  # 删除光标下折叠
zD                  # 递归删除所有折叠
zE                  # 删除所有折叠
zf                  # 创建代码折叠
zF                  # 指定行数创建折叠
zi                  # 切换折叠
zm                  # 所有代码折叠一层
zr                  # 所有代码打开一层
zM                  # 折叠所有代码，设置 foldlevel=0，设置 foldenable
zR                  # 打开所有代码，设置 foldlevel 为最大值
zn                  # 折叠 none，重置 foldenable 并打开所有代码
zN                  # 折叠 Normal，重置 foldenable 并恢复所有折叠
zo                  # 打开一层代码
zO                  # 打开光标下所有代码折叠
```



## 文档加/解密

**文档加密**：加密方式打开文件时，并在屏幕左下角提示输入密码两次才可进行操作，保存文件退出后必须输入正常密码才能正确打开文件，否则会显示乱码。

```bash
vim -x file_name	# 输入加密密码 -> 确认密码! 注意：不修改内容也要保存。:wq，不然密码设定不会生效。
:X                  # 命令行模式下，输入加密密码 -> 确认密码! 注意：不修改内容也要保存。:wq，不然密码设定不会生效。
:set key=密码		# 命令行模式下，输入加密密码 -> 确认密码! 注意：不修改内容也要保存。:wq，不然密码设定不会生效。
```

**文档解密**

```bash
:X                  # 命令行模式下，提示输入密码，不输入而是按 Enter。注意：不修改内容也要保存。:wq，不然解密设定不会生效。
:set key=		    # 命令行模式下，设置 key 的密码为空。注意：不修改内容也要保存。:wq，不然密码设定不会生效。
```



## 宏录制

**宏是录制和播放功能，是一系列 Vim 命令操作的集成，利用宏可以实现很多重复的劳动。**

```bash
qa                  # 开始录制名字为 a 的宏
q                   # 结束录制宏
@a                  # 播放名字为 a 的宏
@@                  # 播放上一个宏
@:                  # 重复上一个 ex 命令（即冒号命令）
```

**宏 举例**：需要将如下多行文本的行首键入一个 Tab 键进行行首缩进。

```
set nu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set wrap
syntax on
```

### 录制宏

- 先将光标移动到第一行。
- 在 Normal 模式下，按 q 键加一个字母开始录制。例如按下 qa，将该宏注册为 a。
- 按下 I 在行首插入，在编辑模式按下 Tab 键。按 Esc 键返回到 Normal 模式。
- 按下 j 键将光标移动到下一行。
- 按下 q 键完成录制。



### 使用宏

- 使用上面录制的宏 a，按下 @a，播放名字为 a 的宏。
- Normal 模式下将光标移动到第二行，按下 @a，再使用了一次宏 a。
- 多次操作按下 N@a，其中 N 为正整数，代表执行 N 次宏。例如将光标移动到第 3 行，对余下的 5 行操作宏 a，按下 5@a。

以上 **录制宏、使用宏** 两个共同操作，完成多行文本的行首键入一个 Tab 键进行行首缩进！


## 其他命令

```bash
Ctrl+X Ctrl+E       # 插入模式下向上滚屏
Ctrl+X Ctrl+Y       # 插入模式下向下滚屏
Ctrl+G              # 显示正在编辑的文件名，文件大小和位置信息
g Ctrl+G            # 显示文件的大小、字符数、单词数和行数，可视模式下也可用
ga                  # 显示光标下字符的 ASCII 码或者 Unicode 编码
g8                  # 显示光标下字符的 UTF-8 编码字节序
gi                  # 回到上次进入插入的地方，并切换到插入模式
K                   # 查询光标下单词的帮助
Ctrl+PgUp           # 上个标签页，GVim OK，部分终端软件需设置对应键盘码
Ctrl+PgDown         # 下个标签页，GVim OK，部分终端软件需设置对应键盘码
Ctrl+R Ctrl+W       # 命令模式下插入光标下单词
Ctrl+Insert         # 复制到系统剪贴板（GVim）
Shift+Insert        # 粘贴系统剪贴板的内容（GVim）
:set ff=unix        # 设置换行为 unix
:set ff=dos         # 设置换行为 dos
:set ff?            # 查看换行设置
:set nohl           # 清除搜索高亮
:set termcap        # 查看会从终端接收什么以及会发送给终端什么命令
:set guicursor=     # 解决 SecureCRT/PenguiNet 中 NeoVim 局部奇怪字符问题
:set t_RS= t_SH=    # 解决 SecureCRT/PenguiNet 中 Vim8.0 终端功能奇怪字符
:set fo+=a          # 开启文本段的实时自动格式化
:earlier 15m        # 回退到 15 分钟前的文件内容
:map                # 来查看当前 Vim 配置的 map 快捷键
:inoremap           # 来查看当前 Vim 配置的 inoremap 快捷键
:nnoremap           # 来查看当前 Vim 配置的 nnoremap 快捷键
:.!date             # 在当前窗口插入时间
:%!xxd              # 开始二进制编辑
:%!xxd -r           # 保存二进制编辑
:r !curl -sL {URL}  # 读取 URL 内容添加到光标后
:g/^\s*$/d          # 删除空行
:g/green/d          # 删除所有包含 green 的行
:v/green/d          # 删除所有不包含 green 的行
:g/gladiolli/#      # 搜索单词打印结果，并在结果前加上行号
:g/ab.*cd.*efg/#    # 搜索包含 ab，cd 和 efg 的行，打印结果以及行号
:v/./,/./-j         # 压缩空行
:Man bash           # 在 Vim 中查看 man，先调用 :runtime! ftplugin/man.vim 激活
/fred\|joe          # 搜索 fred 或者 joe
/\<\d\d\d\d\>       # 精确搜索四个数字
/^\n\{3}            # 搜索连续三个空行
```



## 查看历史命令

命令行模式下：
```bash
:history                  # 查看所有命令行模式下输入的命令历史
:history search 或 / 或 ？ # 查看搜索历史
```

普通模式下：
```bash
q/                  # 查看使用 q/ 输入的搜索历史
q?                  # 查看使用 q？输入的搜索历史
q:                  # 查看命令行历史
```



## 寄存器

**查看寄存器值**

```bash
:reg                   # 查看所有寄存器值
:reg {register_name}   # 查看指定寄存器值
```


**调取寄存器值**

```bash
"{register_name}       # 普通模式下调取寄存器值
:Ctrl+r "寄存器名称      # 命令模式下输入 Ctrl+r 后 Vim 会自动打出 "寄存器引用符号
Ctrl+r 寄存器名称        # 插入模式下（无需输入寄存器引用符号"）
```

**Vim 寄存器分类**

| 寄存器名称        | 引用方式            | 说明                                                                |
| --------------- | ------------------ | ------------------------------------------------------------------ |
| 无名寄存器        | ""                 | 默认寄存器，所有的复制和修改操作（x、s、d、c、y）都会将该数据复制到无名寄存器   |
| 字母寄存器        | "a - "z 或 "A - "Z | {register_name}只能是一位的 26 个英文字母，从 a-z，A-Z 寄存器内容将会合并到对应小写字母内容后边 |
| 复制专用寄存器     | "0（数字 0）        | 仅当使用复制操作(y)时，该数据将会同时被复制到无名寄存器和复制专用寄存器        |
| 逐级临时缓存寄存器 | "1 - "9            | 所有不带范围（‘(’，‘)’，‘{’，‘}’）、操作涉及 1 行以上的删除修改操作（x、s、d、c）的数据都会复制到逐级临时缓存寄存器，并在新的数据加入时，逐级先后推移。1 的数据复制到 2，2 到 3，最后的 9 寄存器内容将会被删除 |
| 黑洞寄存器        | "_                 | 几乎所有的操作涉及的数据都会被复制到寄存器，如果想让操作的数据不经过寄存器，可以指定黑洞寄存器，数据到该寄存器就会消失掉，不能显示，也不存在 |
| 系统剪切板        | "+ 或 "*           | 与 Vim 外部的 GUI 交互数据时，需要使用专用的系统剪切板                     |
| 表达式寄存器      | "=                 | 所有寄存器里最特殊的一个，用于计算表达式。输入完该寄存器应用后，会在命令行里提示“=”，按需输入表达式，结果将会显示到光标处 |
| 其他寄存器        | -                  | - |



## Vim 配置文件

编辑 Vim 配置文件：

```bash
:edit $MYVIMRC      # Vim 命令模式下使用该命令打开 Vim 配置文件
:source $MYVIMRC    # Vim 配置文件改动后，使用该命令加载新的配置选项，若 vimrc 文件恰好是当前活动的缓冲区，则此命令可简化为:so %。
```

**Vim 配置说明，详情请查看 [vimrc 配置文件](./vimrc)。注意：Vim 配置可以在命令模式下单个设置，只在当前窗口生效！**
```bash
syntax              # 列出已经定义的语法项
syntax clear        # 清除已定义的语法规则
syntax on           # 允许语法高亮
syntax off          # 禁止语法高亮
set history=200     # 记录 200 条历史命令
set bs=?            # 设置 Backspace 键模式，现代编辑器为 :set bs=eol,start,indent
set sw=4            # 设置缩进宽度为 4
set ts=4            # 设置制表符宽度为 4
set noet            # 设置不展开 Tab 成空格
set et              # 设置展开 Tab 成空格
set winaltkeys=no   # 设置 GVim 下正常捕获 Alt 键
set nowrap          # 关闭自动换行
set ttimeout        # 允许终端按键检测超时（终端下功能键为一串 Esc 开头的扫描码）
set ttm=100         # 设置终端按键检测超时为 100 毫秒
set term=?          # 设置终端类型，比如常见的 xterm
set ignorecase      # 设置搜索是否忽略大小写
set smartcase       # 智能大小写，默认忽略大小写，除非搜索内容里包含大写字母
set list            # 设置显示制表符和换行符
set nu              # 设置显示行号，禁止显示行号可以用 :set nonu
set number          # 设置显示行号，禁止显示行号可以用 :set nonumber
set relativenumber  # 设置显示相对行号（其他行与当前行的距离）
set paste           # 进入粘贴模式（粘贴时禁用缩进等影响格式的内容）
set nopaste         # 结束粘贴模式
set spell           # 允许拼写检查
set hlsearch        # 设置高亮查找
set ruler           # 总是显示光标位置
set nocompatible    # 设置不兼容原始 vi 模式（必须设置在最开头）
set incsearch       # 查找输入时动态增量显示查找结果
set insertmode      # Vim 始终处于插入模式下，使用 Ctrl+o 临时执行命令
set all             # 列出所有选项设置情况
```


## Vim 常用插件

**[vim-commentary](https://github.com/tpope/vim-commentary)**：Vim 批量注释工具，可以注释多行和去除多行注释。

```bash
gcc                 # 注释当前行
gc{motion}          # 注释 {motion} 所标注的区域，比如 gcap 注释整段
gci{                # 注释大括号内的内容
gc                  # 在 Visual Mode 下面按 gc 注释选中区域
:7,17Commentary     # 注释 7 到 17 行
```



**[NERDTree](https://github.com/preservim/nerdtree)**：该插件用于列出当前路径的目录树。

```bash
?                   # 快速帮助文档
o                   # 打开一个目录或者打开文件，创建的是 buffer，也可以用来打开书签
go                  # 打开一个文件，但是光标仍然留在 NERDTree，创建的是 buffer
t                   # 打开一个文件，创建的是 Tab，对书签同样生效
T                   # 打开一个文件，但是光标仍然留在 NERDTree，创建的是 Tab，对书签同样生效
i                   # 水平分割创建文件的窗口，创建的是 buffer
gi                  # 水平分割创建文件的窗口，但是光标仍然留在 NERDTree
s                   # 垂直分割创建文件的窗口，创建的是 buffer
gs                  # 和 gi，go 类似
x                   # 收起当前打开的目录
X                   # 收起所有打开的目录
e                   # 以文件管理的方式打开选中的目录
D                   # 删除书签
P                   # 大写，跳转到当前根路径
p                   # 小写，跳转到光标所在的上一级路径
K                   # 跳转到第一个子路径
J                   # 跳转到最后一个子路径
Ctrl+j Ctrl+k       # 在同级目录和文件间移动，忽略子目录和子文件
C                   # 将根路径设置为光标所在的目录
u                   # 设置上级目录为根路径
U                   # 设置上级目录为跟路径，但是维持原来目录打开的状态
r                   # 刷新光标所在的目录
R                   # 刷新当前根路径
I                   # 显示或者不显示隐藏文件
f                   # 打开和关闭文件过滤器
q                   # 关闭 NERDTree
A                   # 全屏显示 NERDTree，或者关闭全屏
```



**[asyncrun.vim](https://github.com/skywind3000/asyncrun.vim)**：该插件使用 Vim 8 / NeoVim 的异步机制，让你在后台运行 shell 命令，并将结果实时显示到 Vim 的 Quickfix 窗口中。

```bash
:AsyncRun ls        # 异步运行命令 ls 结果输出到 quickfix 使用 :copen 查看
:AsyncRun -raw ls   # 异步运行命令 ls 结果不匹配 errorformat
```



## Vim 模式

```bash
普通模式            # 按 Esc 或 Ctrl+[ 进入，左下角显示文件名或为空
插入模式            # 按 i 进入，左下角显示 --INSERT--
可视模式            # 按 v 进入，左下角显示 --VISUAL--
替换模式            # 按 r 或 R 开始，左下角显示 --REPLACE--
命令行模式          # 按 : 或者 / 或者 ? 开始
```



## 网络资源

- 最新版本：https://github.com/vim/vim   
- Windows 版：https://github.com/vim/vim-win32-installer/releases
- 插件浏览：http://vimawesome.com
- 正确设置 Alt 键：http://www.skywind.me/blog/archives/2021
- 视频教程：http://vimcasts.org/
- 中文帮助：http://vimcdoc.sourceforge.net/doc/help.html
- 中文版入门到精通：https://github.com/wsdjeg/vim-galore-zh_cn
- 五分钟脚本入门：http://www.skywind.me/blog/archives/2193
- 脚本精通：http://learnvimscriptthehardway.stevelosh.com/
- 十六年使用经验：http://zzapper.co.uk/vimtips.html
- 配色方案：http://vimcolors.com/



## Vim 使用建议

- 永远不要用 Ctrl+C 代替 <Esc> 完全不同的含义，容易错误中断运行的后台脚本。
- 很多人使用 Ctrl+[ 代替 <Esc>，左手小指 Ctrl，右手小指 [ 熟练后很方便。
- 某些终端中使用 Vim 8 内嵌终端如看到奇怪字符，使用 :set t_RS= t_SH= 解决。
- 某些终端中使用 NeoVim 如看到奇怪字符，使用 :set guicursor= 解决。
- 多使用 ciw, ci[, ci", ci( 以及 diw, di[, di", di( 命令来快速改写/删除文本。
- 在行内左右移动光标时，多使用 w b e 或 W B E，而不是 h l 或方向键，这样会快很多。
- Shift 相当于移动加速键， w b e 移动光标很慢，但是 W B E 走的很快。
- 自己要善于总结新技巧，比如移动到行首非空字符时用 0w 命令比 ^ 命令更容易输入。
- 在空白行使用 dip 命令可以删除所有临近的空白行，viw 可以选择连续空白。
- 缩进时使用 >8j >} <ap >ap =i} == 会方便很多。
- 插入模式下，当你发现一个单词写错了，应该多用 Ctrl+W 这比 <Backspace> 快。
- y d c 命令可以很好结合 f t 和 /X 比如 dt) 和 y/End<cr>。
- c d x 命令会自动填充寄存器 "1 到 "9 ， y 命令会自动填充 "0 寄存器。
- 用 v 命令选择文本时，可以用 0 掉头选择，有时很有用。
- 写文章时，可以写一段代码块，然后选中后执行 :!python 代码块就会被替换成结果。
- 搜索后经常使用 :nohl 来消除高亮，使用很频繁，可以 map 到 <Backspace> 上。
- 搜索时可以用 Ctrl+R Ctrl+W 插入光标下的单词，命令模式也能这么用。
- 映射按键时，应该默认使用 noremap ，只有特别需要的时候使用 map。
- 用 y 复制文本后，命令模式中 Ctrl+R 然后按双引号 0 可以插入之前复制内容。
- Windows 下的 GVim 可以设置 set rop=type:directx,renmode:5 增强显示。
- 当你觉得做某事很低效时，你应该停下来，然后思考正确的高效方式来完成。


## 相关书籍

[Vim 实用技巧（英文版）](https://www.amazon.com/Practical-Vim-Edit-Speed-Thought-ebook-dp-B018T6ZVPK/dp/B018T6ZVPK/ref=mt_other?_encoding=UTF8&me=&qid=) |  [Vim 实用技巧（中文版）](https://book.douban.com/subject/26967597/)



## Vim 键盘图

![vim 命令键盘图](resources/vim-commands_CN.png)



## 参考

- https://github.com/skywind3000/awesome-cheatsheets/blob/master/editors/vim.txt
- http://blog.g-design.net/post/4789778607/vim-cheat-sheet
- http://www.fprintf.net/vimCheatSheet.html
- http://www.ouyaoxiazai.com/article/24/654.html
- http://bbs.it-home.org/thread-80794-1-1.html
- http://www.lpfrx.com/wp-content/uploads/2008/09/vi.jpg
- https://github.com/glts/vim-cottidie/blob/master/autoload/cottidie/tips
- https://github.com/hobbestigrou/vimtips-fortune/blob/master/fortunes/vimtips
- http://michael.peopleofhonoronly.com/vim/



---

