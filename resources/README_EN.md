# Vim command cheat sheet

## Introduction

> Vim command cheat sheet, annotated vimrc configuration file, classic Vim keyboard map, practical Vim books, Markdown format, catalog search, quick and familiar use!

- [vim-cheatsheet](https://github.com/chloneda/vim-cheatsheet) | [Vim official website](https://www.vim.org/) | [Github](https://github.com/vim/vim) | [Vim Chinese Document](http://vimcdoc.sourceforge.net/doc/help.html)  
- [Vim custom configuration file - vimrc](../vimrc)        
- [God-level plugin for Chrome browser - Vimium](vimium.md)
- [Chinese](../README.md) | [English](./README_EN.md)   



## The power of repetition

```bash                                                          
.                   # Decimal point, repeat the last command                               
N<command>          # Repeat a command N times, for example: 10k, move the cursor up 10 lines                
```                                                              



## Cursor movement

**Note: In normal mode, any action can be repeated.**

```bash                                                                             
h                   # Move the cursor to the left, same as the <Left> key                                               
j                   # Move the cursor down, same as the <Down> key                                               
k                   # Move the cursor up, same as the <Up> key                                                 
l                   # Move the cursor to the right, the same as the <Right> key                                              
Ctrl+e              # Scroll up one line                                                        
Ctrl+y              # Scroll down one line                                                        
Ctrl+u              # Move up 1/2 a screen                               
Ctrl+d              # Move down 1/2 a screen                             
Ctrl+f              # Move forward one full screen                       
Ctrl+b              # Move back one full screen                          
0                   # Jump to the beginning of the line, the number 0, the effect is equivalent to the <Home> key                                      
^                   # Jump to the first non-blank character from the beginning of the line                                               
$                   # Jump to the end of the line, the effect is equivalent to the <End> key                                            
gg                  # Jump to the first line, the effect is equivalent to Ctrl+<Home>                                      
G                   # Jump to the last line, the effect is equivalent to Ctrl+<End>                                       
NG                  # Jump to the Nth row, for example 10G is to move to the tenth row                                        
:N                  # Jump to the Nth line, for example: 10<Enter> is to move to the tenth line                                 
10%                 # Move to 10% of the file                                                   
15|                 # Move to 15 columns of the current row                                                  
w                   # Skip to the beginning of the next word (word: words separated by punctuation or spaces)                                    
W                   # Skip to the beginning of the next word (Word: words separated by spaces)                                       
e                   # Jump to the end of the next word (word: words separated by punctuation or spaces)                                    
E                   # Jump to the end of the next word (Word: words separated by spaces)                                       
b                   # Jump to the beginning of the previous word (word: words separated by punctuation or spaces)                                    
B                   # Jump to the beginning of the previous word (Word: words separated by spaces）                                       
ge                  # Jump to the end of the previous word                                                     
)                   # Move forward one sentence (separated by periods)                                                
(                   # Move backward one sentence (period separated）                                                
}                   # Move forward one paragraph (separated by blank lines)                                                
{                   # Move backward one paragraph (separated by blank lines)                                                
<Enter>             # Move to the first non-blank character in the next line                                                  
N<Enter>            # Move the cursor down N lines                                                    
+                   # Move to the first non-blank character in the next line (same as the Enter key)                                            
-                   # Move to the first non-blank character in the previous line                                                  
H                   # Move to the upper part of the screen (H: High)                                              
M                   # Move to the middle of the screen (M: Middle)                                            
L                   # Move to the bottom of the screen (L: Low)                                               
<S+Left>            # Hold Shift and press the left button to move one word to the left                                         
<S+Right>           # Hold Shift and press the right button to move one word to the right                                         
<S+Up>              # Hold Shift and press the up button to page up                                             
<S+Down>            # Hold Shift and press the key to page down                                             
gm                  # Move to the middle of the line                                                         
gj                  # Move the cursor down one screen line (ignore automatic line wrapping)                                           
gk                  # Move the cursor up one screen line (ignore auto-wrap)                                           
zz                  # Adjust the cursor line to the center of the screen                                                  
zt                  # Adjust the cursor line to the upper part of the screen                                                  
zb                  # Adjust the cursor line to the bottom of the screen                                                  
```



## Insert mode

```bash                                                                                                                                                                                            
i                   # Enter insert mode at the cursor                                                                                                                                                                   
I                   # Enter insert mode at the beginning of the line                                                                                                                                                                    
a                   # Enter insert mode after the cursor                                                                                                                                                                   
A                   # Enter insert mode at the end of the line                                                                                                                                                                    
o                   # Insert a new row in the next row and enter insert mode                                                                                                                                                              
O                   # Insert a new row in the previous row and enter insert mode                                                                                                                                                              
gi                  # Go to the position of the last insert mode                                                                                                                                                                
<Esc>               # Exit insert mode                                                                                                                                                                       
Ctrl+[              # Exit insert mode (equivalent to Esc key)                                                                                                                                                            
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Insert mode commands

**Note: Enter insert mode by i, I, a, A, o, O command.**

```bash                                                                                                                                                                                            
<Up>                # Cursor up                                                                                                                                                                       
<Down>              # Cursor down                                                                                                                                                                       
<Left>              # Move the cursor to the left                                                                                                                                                                       
<Right>             # Move the cursor to the right                                                                                                                                                                       
<S+Left>            # Hold Shift and press the left button to move one word to the left                                                                                                                                                        
<S+Right>           # Hold Shift and press the right button to move one word to the right                                                                                                                                                        
<S+Up>              # Hold Shift and press the up button to page up                                                                                                                                                            
<S+Down>            # Hold Shift and press the key to page down                                                                                                                                                            
<PageUp>            # Page up                                                                                                                                                                          
<PageDown>          # Page down                                                                                                                                                                          
<Delete>            # Delete the character at the cursor                                                                                                                                                                      
<Backspace>         # Backspace key is to delete characters backward                                                                                                                                                             
<Home>              # Cursor jump to the beginning of the line                                                                                                                                                                       
<End>               # Cursor jump to end of line                                                                                                                                                                       
Ctrl+d              # Decrease indent                                                                                                                                                                         
Ctrl+f              # Decrease indent                                                                                                                                                                         
Ctrl+t              # Increase indent                                                                                                                                                                         
Ctrl+h              # Delete the previous character, equivalent to Backspace                                                                                                                                                     
Ctrl+o              # Temporarily exit insert mode, execute a single command and return to insert mode                                                                                                                                                       
Ctrl+u              # Delete all characters from the current line to the beginning of the line                                                                                                                                                                 
Ctrl+w              # Delete a word before the cursor                                                                                                                                                                   
Ctrl+\ Ctrl+O       # Temporarily exit insert mode (cursor hold), execute a single command and return to insert mode                                                                                                                                                 
Ctrl+R 0            # Insert the contents of the register (internal clipboard No. 0), the register name can be followed by Ctrl+R                                                                                                                                            
Ctrl+R "            # Insert anonymous register content, which is equivalent to p paste in insert mode                                                                                                                                                      
Ctrl+R =            # Insert expression calculation result, equal sign followed by expression                                                                                                                                                           
Ctrl+R :            # Insert the last command line command                                                                                                                                                                   
Ctrl+R /            # Insert the last search keyword                                                                                                                                                                  
Ctrl+v {char}       # Insert non-numeric literals                                                                                                                                                                    
Ctrl+v {code}       # Insert the ASCII/Unicode character encoding represented by three digits, such as Ctrl+v 065                                                                                                                                   
Ctrl+v 065          # Insert a decimal ASCII character (two digits) 065 is the A character                                                                                                                                            
Ctrl+v x41          # Insert hexadecimal ASCII characters (three numbers) x41 is the A character                                                                                                                                            
Ctrl+v o101         # Insert octal ASCII characters (three numbers) o101 is the A character                                                                                                                                            
Ctrl+v u1234        # Insert hexadecimal Unicode characters (four digits)                                                                                                                                                     
Ctrl+v U12345678    # Insert hexadecimal Unicode characters (eight digits)                                                                                                                                                     
Ctrl+K {ch1} {ch2}  # Insert digraph (see :h digraph), quickly enter Japanese or symbols, etc.                                                                                                                                          
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Autocomplete

In insert mode, the most commonly used completion.

```bash                                                                                                                                                                                            
Ctrl+n              # Automatic text completion in insert mode                                                                                                                                                                  
Ctrl+P              # Automatic text completion in insert mode                                                                                                                                                                  
Ctrl+e              # When there is a completion list, terminate this completion and continue typing                                                                                                                                                           
```

**Smart completion commands all start with the key combination Ctrl+X.**

```bash                                                                                                                                                                                            
Ctrl+X              # Enter completion mode                                                                                                                                                                       
Ctrl+X Ctrl+L       # Whole line completion                                                                                                                                                                         
Ctrl+X Ctrl+N       # In insert mode, complete according to keywords in the current file                                                                                                                                                           
Ctrl+X Ctrl+K       # Completion according to dictionary                                                                                                                                                                       
Ctrl+X Ctrl+T       # Completion according to the synonym dictionary                                                                                                                                                                    
Ctrl+X Ctrl+F       # Complete file name in insert mode                                                                                                                                                                   
Ctrl+X Ctrl+I       # Completion based on keywords in the header file                                                                                                                                                                  
Ctrl+X Ctrl+]       # Complete according to tags                                                                                                                                                                       
Ctrl+X Ctrl+D       # Complete macro definition                                                                                                                                                                        
Ctrl+X Ctrl+V       # Completing Vim commands                                                                                                                                                                    
Ctrl+X Ctrl+U       # User-defined completion method                                                                                                                                                                    
Ctrl+X Ctrl+S       # Spelling suggestions, for example: an English word                                                                                                                                                               
Ctrl+X Ctrl+O       # Insert Omnifunc completion                                                                                                                                                              
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Text Editor

```bash                                                                                                                                                                                            
r                   # Replace the current character                                                                                                                                                                       
R                   # Enter replacement mode until Esc leaves                                                                                                                                                             
s                   # Replace character (delete the character at the cursor and enter the insert mode, the number can be connected in front)                                                                                                                                                  
S                   # Replace line (delete the current line and enter the insert mode, the number can be accessed before)                                                                                                                                                     
cc                  # Rewrite the current line (delete the current line and enter insert mode), same as S                                                                                                                                                      
cw                  # Overwrite the current word at the beginning of the cursor                                                                                                                                                                 
ciw                 # Rewrite the word under the cursor                                                                                                                                                                    
caw                 # Rewrite the word under the cursor, and include leading and trailing spaces                                                                                                                                                    
c0                  # Rewrite to the beginning of the line                                                                                                                                                                        
c^                  # Rewrite to the beginning of the line (the first non-zero character)                                                                                                                                                               
c$                  # Rewrite to the end of the line                                                                                                                                                                        
C                   # Rewrite to the end of the line (same as c$)                                                                                                                                                                  
ci"                 # Rewrite the content in double quotes                                                                                                                                                                    
ci'                 # Rewrite the content in single quotes                                                                                                                                                                    
cib                 # Rewrite the content in parentheses                                                                                                                                                                    
cab                 # Rewrite the content in the parentheses (including the parentheses themselves)                                                                                                                                                           
ci)                 # Rewrite the content in parentheses                                                                                                                                                                    
ci]                 # Rewrite the content in the brackets                                                                                                                                                                     
ciB                 # Rewrite the content in the braces                                                                                                                                                                     
caB                 # Rewrite the content in the braces (including the braces themselves)                                                                                                                                                           
ci}                 # Rewrite the content in the braces                                                                                                                                                                     
cit                 # Rewrite the content in the XML tag                                                                                                                                                              
cis                 # Rewrite the current sentence                                                                                                                                                                       
c2w                 # Write two words instead                                                                                                                                                                      
ct(                 # Rewrite before the parentheses                                                                                                                                                                      
x                   # Delete the current character, you can receive a number in front, 3x means delete three characters                                                                                                                                                   
X                   # Delete characters forward                                                                                                                                                                       
dd                  # Delete (cut) a line                                                                                                                               
d0                  # Delete (cut) to the beginning of the line                                                                                                                                                                    
d^                  # Delete (cut) to the beginning of the line (the first non-zero character)                                                                                                                                                           
d$                  # Delete (cut) to the end of the line                                                                                                                                                                    
D                   # Delete (cut) to the end of the line (same as d$)                                                                                                                                                              
dw                  # Delete (cut) the current word                                                                                                                                                                   
diw                 # Delete (cut) the word under the cursor                                                                                                                                                                
daw                 # Delete (cut) the word under the cursor, and include leading and trailing spaces (if any)                                                                                                                                                 
di"                 # Delete the content in double quotes                                                                                                                                                                    
di'                 # Delete the content in single quotes                                                                                                                                                                    
dib                 # Delete the content in parentheses                                                                                                                                                                    
di)                 # Delete the content in parentheses                                                                                                                                                                    
dab                 # Delete the content in the parentheses (including the parentheses themselves)                                                                                                                                                           
di]                 # Delete the content in the square brackets                                                                                                                                                                     
diB                 # Delete the content in the braces                                                                                                                                                                     
di}                 # Delete the content in the braces                                                                                                                                                                     
daB                 # Delete the content inside the braces (including the braces themselves)                                                                                                                                                           
dit                 # Delete the content in the tag in XML                                                                                                                                                            
dis                 # Delete the current sentence                                                                                                                                                                       
d2w                 # Delete the next two words                                                                                                                                                                      
dt(                 # Delete to the front of the parenthesis                                                                                                                                                                      
dgg                 # Delete to the head of the file                                                                                                                                                                      
dG                  # Delete to the end of the file                                                                                                                                                                      
d}                  # Delete the next paragraph                                                                                                                                                                       
d{                  # Delete the previous paragraph                                                                                                                                                                      
10d                 # Delete 10 lines from the beginning of the current line                                                                                                                                                                
:10d                # Delete line 10                                                                                                                                                                     
:1,10d              # Delete 1-10 lines                                                                                                                                                                    
J                   # Combine multiple lines into one line                                                                                                                                                                      
.                   # Repeat the last operation                                                                                                                                                                      
~                   # Replace case                                                                                                                                                                        
g~iw                # Replace the case of the current word                                                                                                                                                                   
gUiw                # Convert words to uppercase                                                                                                                                                                      
guiw                # Convert the current word to lowercase                                                                                                                                                                    
guu                 # Convert the entire line to lowercase                                                                                                                                                                       
gUU                 # Convert the entire line to uppercase                                                                                                                                                                       
<<                  # Reduce indent                                                                                                                                                                         
>>                  # Increase indent                                                                                                                                                                         
==                  # Auto indent                                                                                                                                                                         
Ctrl+A              # Increase the number                                                                                                                                                                         
Ctrl+X              # Reduce the number                                                                                                                                                                         
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Copy and paste

**Format of the copy command**：

```bash                                                                                                                                                                                            
:[range]copy{address}                                                                                                                                                                              
```

**Parameter Description**：                                                                                                                                                                                          
- [range]：Indicates the range of lines to be copied, where copy can be abbreviated as :co or :t                                                                                                                                                          
- {address}：Indicates the destination of the copy. Both of these parameters can be defaulted to indicate the current line where the Vim cursor is located.

> For example: [:5copy.] means to copy line 5 of the file currently opened by Vim to the current line (indicated by .), that is, to create a copy of line 5 and place it below the current line.

The subscript lists some examples and uses of file copy using the abbreviation t of the copy command, which is used to understand the purpose of the copy command copy.

```bash                                                                                                                                                                                            
:3,5t.              # Copy the content from lines 3 to 5 below the current line                                                                                                                                                      
:t5                 # Copy the current line below line 5                                                                                                                                                               
:t.                 # Copy the current line below the current line (equivalent to yyp in normal mode)                                                                                                                                                   
:t$                 # Copy the current line to the end of the text                                                                                                                                                                  
:'<,'>t0            # Copy the highlighted line to the beginning of the file                                                                                                                                                               
```

**Common copy and paste commands**：

```bash                                                                                                                                                                                            
p                   # After pasting to the cursor                                                                                                                                                                       
P                   # Paste before the cursor                                                                                                                                                                       
v                   # Enter visual mode                                                                                                                                                                         
y                   # Copy marked content                                                                                                                                                                       
V                   # Visual mode is marked by line                                                                                                                                                                       
Ctrl+V              # Visual mode is marked by column                                                                                                                                                                        
y$                  # Copy the current position to the end of the line                                                                                                                                                               
yy                  # Yank (copy) a line                                                                                                                                                 
Y                   # Copy the current line, same as yy                                                                                                                                                                   
yiw                 # Copy the current word                                                                                                                                                                       
Nyy                 # Copy the contents of N lines under the cursor                                                                                                                                                                  
ddp                 # Cut the current line and paste (first delete the current line, copy it to the register, and paste)                                                                                                                                                   
v0                  # Select the current position to the beginning of the line                                                                                                                                                                    
v$                  # Select the current position to the end of the line                                                                                                                                                                    
viw                 # Select the current word                                                                                                                                                                       
vib                 # Select things in parentheses                                                                                                                                                                    
vi)                 # Select the content in parentheses                                                                                                                                                                    
vi]                 # Select the content in the square brackets                                                                                                                                                                    
viB                 # Select the content in the braces                                                                                                                                                                    
vi}                 # Select the content in the braces                                                                                                                                                                    
vis                 # Select the content in the sentence                                                                                                                                                                     
vab                 # Select the content in the parentheses (including the parentheses themselves)                                                                                                                                                           
va)                 # Select the content in the parentheses (including the parentheses themselves)                                                                                                                                                           
va]                 # Select the content in the brackets (including the brackets themselves)                                                                                                                                                           
vaB                 # Select the content inside the braces (including the braces themselves)                                                                                                                                                           
va}                 # Select the content inside the braces (including the braces themselves)                                                                                                                                                           
:set paste          # Allow paste mode (to avoid automatic indentation affecting formatting when pasting)                                                                                                                                                        
:set nopaste        # Prohibit paste mode                                                                                                                                                                       
"?yy                # Copy the current line to the register?, The question mark represents the register name from 0-9                                                                                                                                                 
"?d3j               # Delete the contents of the three lines under the cursor and put them in the register?, The question mark represents the register name of 0-9                                                                                                                                          
"?p                 # Paste the contents of the register? After the cursor                                                                                                                                                             
"?P                 # Paste the contents of the register? In front of the cursor                                                                                                                                                             
:registers          # Display the contents of all registers                                                                                                                                                                    
:[range]y           # Copy range, for example: 20,30y is to copy 20 to 30 lines, and :10y is to copy the tenth line                                                                                                                                    
:[range]d           # Delete range, for example: 20,30d is to delete 20 to 30 lines, and :10d is to delete the tenth line                                                                                                                                    
"_[command]         # Use [command] to delete content without copying (not polluting registers)                                                                                                                                           
"*[command]         # Use [command] to copy the content to the system clipboard (requires the Vim version to have clipboard support)                                                                                                                             
```

**The content in text editing, copy and paste can be summarized simply**

```bash                                                                                                                                                                                            
ci'、ci"、ci(、ci[、ci{、ci<                 # Change the text content in these paired punctuation marks separately                                                                                                                              
di'、di"、di( or dib、di[、di{ or diB、di<   # Delete the text content in these paired punctuation marks respectively                                                                                                                                        
yi'、yi"、yi(、yi[、yi{、yi<                 # Copy the text content of these paired punctuation marks separately                                                                                                                                       
vi'、vi"、vi(、vi[、vi{、vi<                 # Select the text content in these paired punctuation marks respectively                                                                                                                                       
```                                                                                                                                                                                                
cit、dit、yit、vit，Operate the content between a pair of tags separately, and edit HTML and XML are easy to use! In addition, if you change the above i to a, you can operate the matching punctuation and the content in the matching punctuation at the same time.

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Move text

```bash                                                                                                                                                                                            
:[range]move{address}                                                                                                                                                                              
```                                                                                                                                                                                                
**Parameter Description**                                                                                                                                                                                          
- [range]: Indicates the range of rows to be moved                                                                                                                                                                                
- {address}: Indicates the target position of the movement, both of these parameters can be defaulted

For example                                                                                                                                                                                                
```bash                                                                                                                                                                                            
:m+1                # Move down 1 line                                                                                                                                                                       
:m-2                # Move up 1 line                                                                                                                                                                       
:8,10m2             # Move the contents of lines 8~10 of the currently opened file to the bottom of line 2                                                                                                                                                 
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Text object

```bash                                                                                                                                                                                            
0                   # To the beginning of the line, the number 0                                                                                                                                                                     
^                   # To the non-blank character at the beginning of the line, you can use 0w instead of ^, which is more convenient to press                                                                                                                                                   
$                   # To the end of the line                                                                                                                                                                          
iw                  # The entire word Word (excluding separators)                                                                                                                                                            
aw                  # Whole word Word (including separator)                                                                                                                                                             
iW                  # Whole Word (excluding separators)                                                                                                                                                              
aW                  # Whole Word (including separators)                                                                                                                                                               
is                  # The entire sentence (s: sentence) (excluding separators)                                                                                                                                                   
ib                  # B: brackets                                                                                                                                                            
ab                  # Inside the parentheses (including the parentheses themselves)                                                                                                                                                                
iB                  # big parentheses                                                                                                                                                                         
aB                  # Inside the big parentheses (including the big parentheses themselves)                                                                                                                                                                
i)                  # Inside parentheses                                                                                                                                                                         
a)                  # Inside parentheses                                                                                                                                                                
i]                  # Inside brackets                                                                                                                                                                         
a]                  # Inside the brackets (including the brackets themselves)                                                                                                                                                                
i}                  # big parentheses                                                                                                                                                                        
a}                  # parentheses (including the parentheses themselves)                                                                                                                                                                
i'                  # single quotes                                                                                                                                                                         
a'                  # single quotes                                                                                                                                                                
i"                  # Double quotes                                                                                                                                                                         
a"                  # Double quotes                                                                                                                                                                
2i)                 # Two outer parentheses                                                                                                                                                                     
2a)                 # Two outer parentheses                                                                                                                                                            
2f)                 # To the second parenthesis                                                                                                                                                                     
2t)                 # To the second parenthesis                                                                                                                                                                     
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Revocation and restoration

```bash                                                                                                                                                                                            
u                   # The undo command (u: undo) can be combined. For example, Nu, N is any integer, which means to undo N operations, the same below                                                                                                                               
U                   # Undo the entire operation                                                                                                                                                                       
Ctrl+r              # Cancel the last u command (r: redo)                                                                                                                                                          
Ctrl+R              # Rewind the previous command                                                                                                                                                                     
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Find and replace

**Find command in normal mode**

```bash                                                                                                                                                                                            
/pattern            # Search pattern from the cursor to the end of the file                                                                                                                                                           
?pattern            # Search pattern from the cursor to the head of the file                                                                                                                                                           
n                   # Search down for matching content                                                                                                                                                                 
N                   # Search forward                                                                                                                                                                 
%                   # Matching bracket movement, including (), {}, []. Combining the following two commands is quite powerful for programmers (premise: you need to move the cursor to the parentheses first)                                                                                                                       
*                   # Search down the word under the cursor                                                                                                                                                                 
#                   # Search forward for the word under the cursor                                                                                                                                                                  
f<char>             # Search backward for the first character of the current line as <char>, 2fv can find the second character of v                                                                                                                                      
F<char>             # Search forward for the first character in the current line that is <char>                                                                                                                                                       
t<char>             # Search backward before the first character in the current line that is <char>                                                                                                                                                      
T<char>             # Search forward before the first character in the current line that is <char>                                                                                                                                                      
;                   # Repeat the last character search command (f/t command)                                                                                                                                                           
,                   # Reverse the direction to find the last character search command (f/t command)                                                                                                                                                       
tx                  # Search the current line before the specified string                                                                                                                                                              
fx                  # Search the current line to the specified string                                                                                                                                                              
```

**Replace command in normal mode** 

```bash                                                                                                                                                                                            
:[range]s[ubstitute]/{pattern}/{string}/[flags]                                                                                                                                                    
```

Parameter Description：                                                                                                                                                                                              
- pattern：It is the string to be replaced, which can be represented by regexp.                                                                                                                                                               
- string：Replace pattern by string.                                                                                                                                                                   
- [range]：There are the following values.

| [range] value | Description                                         |                                                                                                                                
| ----------  | ----------------------------------------------------- |                                                                                                                             
| 无          | Default cursor line                                   |                                                                                                                                  
| .          | The current line where the cursor is                   |                                                                                                                                  
| N          | Line N                                               |                                                                                                                               
| $          | the last line                                        |                                                                                                                                
| 'a         | Mark the line where a (has been marked with ma before) |                                                                                                                                        
| $-1        | The penultimate row, you can add or subtract a certain value to a certain row to obtain a certain row             |                                                                                                                                             
| 1,10       | Line 1~10                                             |                                                                                                                              
| 1,$        | First line to last line                               |                                                                                                                                  
| 1,.        | First line to current line                            |                                                                                                                                 
| .,$        | Current line to last line                             |                                                                                                                                  
| 'a,'b      | Mark the line where a is located to the line where the mark b is located (marked with ma, mb before) |                                                                                                                                            
| %          | All rows (equivalent to 1, $)                         |                                                                                                                                  
| ?str?      | Search upwards from the current position and find the first line of str (str can be regular)      |                                                                                                                                            
| /str/      | Search down from the current position to find the first line of str (str can be regular)      |

Note that all the above representation methods for range can be used to set the relative offset through + and-operations.

- [flags] has the following values:

                                                                                                                                                                                                   
| [flags]value | Description                                 |                                                                                                                                                
| ----------- | -------------------------------------------- |                                                                                                                                             
| g           | Replace all matches (global) in the specified range |                                                                                                                                                         
| c           | Ask the user to confirm before replacing (confirm)  |                                                                                                                                                      
| e           | Ask the user to confirm before replacing (confirm)  |                                                                                                                                                    
| i           | not case sensitive                           |                                                                                                                                                 
| 无          | Only replace the first match in the specified range  |

For example:

```bash                                                                                                                                                                                            
:s/p1/p2/g          # Replace all p1 with p2 in the current line                                                                                                                                                             
:%s/p1/p2/g         # Replace all p1 with p2 in the current file                                                                                                                                                            
:%s/p1/p2/gc        # Replace all p1 with p2 in the current file, and ask you whether to replace it everywhere                                                                                                                                                
:10,20s/p1/p2/g     # Replace all p1 in lines 10 to 20 with p2                                                                                                                                                    
:%s/1\\2\/3/123/g   # Replace "1\2/3" with "123" (special characters are marked with backslashes)                                                                                                                                             
:%s/\r//g           # Delete DOS line break ^M                                                                                                                                                                
:%s///gn            # Count the number of matches in a pattern                                                                                                                                                                  
:%s/^\s*$\n//g      # Delete all blank lines in the Vim open file                                                                                                                                                            
:g/^\s*$/d          # Delete all blank lines in the Vim open file                                                                                                                                                            
:%s/^M$//g          # Delete the explicit ^M symbol in the Vim file (operating system line break problem)                                                                                                                                               
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Visual mode

**Note: In Vim visual mode, you can select an editing area, and then perform operations such as inserting, deleting, replacing, and changing the case of the selected file content.**

```bash                                                                                                                                                                                            
v                   # Switch to character-oriented visual mode                                                                                                                                                                 
V                   # Switch to line-oriented visual mode                                                                                                                                                                  
Ctrl+V              # Switch to block-oriented visual mode                                                                                                                                                                 
>                   # Increase indent                                                                                                                                                                         
<                   # Decrease indent                                                                                                                                                                         
d                   # Delete the highlighted text                                                                                                                                                                    
x                   # Delete the highlighted text                                                                                                                                                                    
c                   # Rewrite the text, that is, delete the highlighted text and enter the insert mode                                                                                                                                                       
s                   # Rewrite the text, that is, delete the highlighted text and enter the insert mode                                                                                                                                                       
y                   # Copy text                                                                                                                                                                         
~                   # Convert case                                                                                                                                                                        
o                   # Jump to the other end of the marked area                                                                                                                                                                  
O                   # Jump to the other end of the marker block                                                                                                                                                                  
u                   # Marked area converted to lower case                                                                                                                                                                     
U                   # Convert marked area to uppercase                                                                                                                                                                     
gv                  # Reselect the last highlighted selection                                                                                                                                                                    
g Ctrl+G            # Show statistics of the selected area                                                                                                                                                                 
ggVG                # Select full text                                                                                                                                                                         
<Esc>               # Press Esc to exit visual mode                                                                                                                                                                
```

In addition: The Vim Normal command can execute commands in the normal mode in the command line mode. When the Normal command is combined with the Vim visualization mode, a lot of repetitive tasks can be completed with few operations.

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Comment command

**Multi-line comments**                                                                                                                                                                                           
```bash                                                                                                                                                                                            
Ctrl+v              # Enter the command line mode, press Ctrl+v to enter the visual mode, then press j or k to select multiple lines and mark the lines that need to be commented                                                                                                                          
I                   # Press the capital letter I, and then insert the comment character, such as #, //                                                                                                                                                      
<Esc>               # Press the Esc key to comment all                                                                                                                                                               
```

**Uncomment multiple lines**

```bash                                                                                                                                                                                            
Ctrl+v              # Enter the command line mode, press Ctrl+v to enter the visual mode, press the letter l to select the number of columns horizontally, such as #, // (need to select 2 columns)                                                                                                                     
j 或 k              # Press the letter j, or k to select the comment symbol                                                                                                                                                             
d                   # Press the d key to uncomment all                                                                                                                                                                
```

**Complex annotation**

```bash                                                                                                                                                                                            
:Start line, end line s/^/ comment character /g       # Add a comment at the beginning of the specified line                                                                                                                                                    
:Start line, end line s/^ comment character //g       # Uncomment at the beginning of the specified line

:3,5 s/^/#/g        # Comment lines 3-5                                                                                                                                                                    
:3,5 s/^#//g        # Uncomment lines 3-5

:1,$ s/^/#/g        # Annotate the entire document                                                                                                                                                                       
:1,$ s/^#//g        # Uncomment the entire document

:%s/^/#/g           # Annotate the entire document, this method is faster                                                                                                                                                                  
:%s/^#//g           # Uncomment the entire document                                                                                                                                                                     
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Position movement

```bash                                                                                                                                                                                            
Ctrl+O              # Jump to the previous position                                                                                                                                                                     
Ctrl+I              # Jump to the next position                                                                                                                                                                     
Ctrl+^              # Jump to alternate file (the previous file in the current window)                                                                                                                                               
%                   # Match jump to the corresponding {} () []                                                                                                                                                             
gd                  # Jump to the local definition (the definition of the word under the cursor)                                                                                                                                                           
gD                  # Jump to the global definition (the definition of the word under the cursor)                                                                                                                                                           
gf                  # Open the file whose name is the file name under the cursor                                                                                                                                                               
[[                  # Jump to the previous top-level function                                                                                                                                                      
]]                  # Jump to the next top-level function                                                                                                                                                      
[m                  # Jump to the previous member function                                                                                                                                                                   
]m                  # Jump to the next member function                                                                                                                                                                   
[{                  # Jump to the previous unmatched {                                                                                                                                                                 
]}                  # Jump to the next unmatched }                                                                                                                                                                 
[(                  # Jump to the previous unmatched (                                                                                                                                                                
])                  # Jump to the next unmatched )                                                                                                                                                                 
[c                  # The last difference (when diffing)                                                                                                                                                                
]c                  # The next difference (when diffing)                                                                                                                                                                
[/                  # Jump to the beginning of the C comment                                                                                                                                                                   
]/                  # Jump to the end of the C comment                                                                                                                                                                   
``                  # Go back to the last jumped position                                                                                                                                                                    
''                  # Go back to the last jumped position                                                                                                                                                                    
`.                  # Back to the last edited position                                                                                                                                                                    
'.                  # Back to the last edited position                                                                                                                                                                    
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## File operations

```bash                                                                                                                                                                                            
:w                  # Write the file and save it, the time stamp of the file will be modified                                                                                                                                                   
:w <filename>       # Save file by name                                                                                                                                                                      
:w !sudo tee %      # Save the file with super user privileges, you can also do this :w !sudo tee%> /dev/null                                                                                                                                 
:wa                 # Save all files                                                                                                                                                                       
:wall               # Save all files                                                                                                                                                                         
:wqall              # Save all files and exit                                                                                                                                                                      
:q                  # Close the window where the cursor is located and exit (q: quit)                                                                                                                                                        
:q!                 # Force quit (q: quit)                                                                                                                                                                
:qa！               # Abandon all file operations and force exit                                                                                                                                                                   
:qall               # Abandon all file operations and exit                                                                                                                                                                    
:x                  # Save the file and exit, the time stamp of the file will not be modified                                                                                                                                                       
:edit <filename>    # Open the file and edit, abbreviate (:e file), open the file by the absolute or relative path of the file, Tab key to complete the path                                                                                                                               
:edit .             # Open the file manager, abbreviate (:e.), browse the files in the current directory, select and edit                                                                                                                                            
:Explore            # Open the file manager, abbreviate (:E), and display the directory where the active buffer is located                                                                                                                                                 
:saveas <filename>  # Save as specified file                                                                                                                                                                        
:o <filename>       # Open (o: open) another file in the current window                                                                                                                                                        
:r <filename>       # Read the file and insert the content after the cursor                                                                                                                                                               
:r !dir             # Capture and insert the output of the dir command after the cursor                                                                                                                                                         
:on[ly]             # Close other windows except the window where the cursor is located, same as Ctrl+W o                                                                                                                                                 
:clo[se]            # Close the file in the window where the cursor is, the same as Ctrl+W c                                                                                                                                                       
:cd <path>          # Switch Vim current path                                                                                                                                                                  
:pwd                # Show Vim current path                                                                                                                                                                  
:n <filename>       # Open a new window to edit the new file filename                                                                                                                                                       
:new                # Open a new window to edit a new file                                                                                                                                                                
:enew               # Create a new file in the current window                                                                                                                                                                   
:vnew               # Edit the new file in a new window divided into left and right                                                                                                                                                              
:tabnew             # Edit the new file in a new tab                                                                                                                                                                 
:version            # Check the Vim version, and also check the priority order of Vim loading configuration files                                                                                                                                              
ZZ                  # Save the changed file, and close the exit window                                                                                                                                                          
ZQ                  # Close the window without saving the file                                                                                                                                                                    
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Open file

```bash                                                                                                                                                                                            
vim .               # Open the file manager, display the catalog file, edit by selecting the file                                                                                                                                                      
vim filename        # Open or create a new file, and place the cursor at the beginning of the first line                                                                                                                                                           
vim + filename      # Open the file and place the cursor at the beginning of the last line                                                                                                                                                             
vim +n filename     # Open the file and place the cursor at the beginning of line n                                                                                                                                                            
vim -c cmd file     # Before opening the file file, execute the specified Vim command cmd                                                                                                                                               
vim -b file         # Open the file in binary mode, some special characters (such as line break ^M) can be displayed in this mode                                                                                                                                         
vim -d file1 file2  # Use Vim to open file1 and file2 at the same time and diff the difference between the two files                                                                                                                                   
vim -r filename     # The system crashed the last time I was editing with Vim, restore the file                                                                                                                                                     
vim -R file         # Open the file as read-only, but you can still use :wq! to write                                                                                                                                                   
vim -M file         # The modification function is forcibly closed and cannot be used :wq! Write                                                                                                                                                       
vim -o file1 file2  # When you want to open a Vim file in the terminal, split and display multiple files horizontally                                                                                                                                                    
vim -O file1 file2  # When you want to open a Vim file in the terminal, split and display multiple files vertically                                                                                                                                                    
vim -x file         # Open the file encrypted                                                                                                                                                                    
vim +/target file   # Open file and move the cursor to the first target string found                                                                                                                                            
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Opened file operation

```bash                                                                                                                                                                                            
:ls                 # Investigation cache list                                                                                                                                                                       
:bn                 # Switch to the next cache                                                                                                                                                                     
:bp                 # Switch to the previous cache                                                                                                                                                                     
:bd                 # Delete cache                                                                                                                                                                         
:b 1                # Switch to cache 1                                                                                                                                                                    
:b abc              # Switch to the cache whose file name starts with abc                                                                                                                                                            
:badd <filename>    # Add files to the cache list                                                                                                                                                                   
:set hidden         # Set hidden mode (unsaved cache can be switched away or closed)                                                                                                                                                    
:set nohidden       # Turn off the hidden mode (unsaved cache cannot be switched away or closed)                                                                                                                                                    
n Ctrl+^            # To switch the cache, enter the numeric cache number first, then press Ctrl+6                                                                                                                                                    
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Multi-window operation

> The split-screen window is based on the Ctrl+W shortcut key, Ctrl is the control function key, W stands for Windom, and Ctrl+W stands for control window.

```bash                                                                                                                                                                                            
:sp <filename>      # Split the window horizontally and open the file in a new window filename                                                                                                                                            
:vs <filename>      # Split the window vertically and open the file in a new window filename                                                                                                                                  
:split              # Copy the current window to a horizontal window, the content is synchronized, the cursor can be different                                                                                                                                                 
:vsplit             # Copy the current window to another vertical window, the content is synchronized, the cursor can be different                                                                                                                                                 
Ctrl+W              # Switch to the next window                                                                                                                                                             
Ctrl+W s            # Horizo​​ntal split window                                                                                                                                                              
Ctrl+W v            # Split window longitudinally                                                                                                                                                     
Ctrl+W w            # Cycle to the next window                                                                                                                                                                   
Ctrl+W W            # Cycle to the previous window                                                                                                                                                                   
Ctrl+W p            # Skip to the last visited window                                                                                                                                                                  
Ctrl+W r            # reverse window                                                                                                                                                             
Ctrl+W c            # Close the current window, but cannot close the last window                                                                                                                                                 
Ctrl+W q            # Exit the current window, if it is the last window, close vi                                                                                                                                             
Ctrl+W o            # Keep only the active window, close other (o: other) windows, same as :on[ly]                                                                                                                                           
Ctrl+W h            # Jump to the left window                                                                                                                                                                      
Ctrl+W j            # Jump to the window below                                                                                                                                                                      
Ctrl+W k            # Jump to the upper window                                                                                                                                                                      
Ctrl+W l            # Jump to the right window                                                                                                                                                                      
Ctrl+W +            # Increase the row height of the current window, you can add a number in front                                                                                                                                                            
Ctrl+W -            # Decrease the row height of the current window, you can add a number in front                                                                                                                                                            
Ctrl+W <            # Reduce the column width of the current window, you can add a number in front                                                                                                                                                            
Ctrl+W >            # Increase the column width of the current window, you can add a number in front                                                                                                                                                            
Ctrl+W =            # Make all windows the same width and height                                                                                                                                                                    
Ctrl+W H            # Move the current window to the far left                                                                                                                                                                  
Ctrl+W J            # Move the current window to the bottom                                                                                                                                                                  
Ctrl+W K            # Move the current window to the top                                                                                                                                                                  
Ctrl+W L            # Move the current window to the far right                                                                                                                                                                  
Ctrl+W x            # Exchange window                                                                                                                                                                         
Ctrl+W f            # Open the file named under the cursor in a new window                                                                                                                                                           
Ctrl+W gf           # Open the file named under the cursor in a new tab                                                                                                                                                          
Ctrl+W T            # Move the current window to a new tab                                                                                                                                                                
Ctrl+W P            # Jump to the preview window                                                                                                                                                                      
Ctrl+W z            # Close preview window                                                                                                                                                                       
Ctrl+W _            # Maximize the current window vertically                                                                                                                                                                    
Ctrl+W |            # Maximize the current window horizontally                                                                                                                                                                    
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Tags

```bash                                                                                                                                                                                            
:tabs               # Show all tabs                                                                                                                                                                      
:tabe <filename>    # Open the file filename in a new tab                                                                                                                                                          
:tabn               # Next tab                                                                                                                                                                       
:tabp               # Previous tab                                                                                                                                                                       
:tabc               # Close current tab                                                                                                                                                                      
:tabo               # Close other tabs                                                                                                                                                                      
:tabn N             # Switch to the Nth tab page, for example: tabn 3 Switch to the third tab page                                                                                                                                              
:tabm n             # Label move                                                                                                                                                                         
:tabfirst           # Switch to the first tab                                                                                                                                                                    
:tablast            # Switch to the last tab                                                                                                                                                                   
:tab help           # Open help in tab                                                                                                                                                                     
:tab drop <file>    # If the file has been opened by other tabs and windows, skip over, otherwise open a new tab                                                                                                                                                 
:tab split          # Open the file in the current window in a new tab                                                                                                                                                            
:tab ball           # Open all files in the cache with tabs                                                                                                                                                               
:set showtabline=?  # Set to 0 to not display the tab page label, 1 will be displayed on demand, 2 will be permanently displayed                                                                                                                                              
Ngt                 # Switch to the Nth tab page, for example, 2gt will switch to the second tab page                                                                                                                                               
gt                  # Next tab                                                                                                                                                                       
gT                  # Previous tab                                                                                                                                                                       
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Vim bookmarks

```bash                                                                                                                                                                                            
:marks              # Show all bookmarks                                                                                                                                                                       
ma                  # Save the current position to bookmark a, the lowercase letter of the book signature is in the file, and the uppercase global                                                                                                                                                
'a                  # Jump to the line of bookmark a                                                                                                                                                                 
`a                  # Jump to the location of bookmark a                                                                                                                                                                 
`.                  # Jump to the last edited line                                                                                                                                                                   
'A                  # Jump to full text bookmark A                                                                                                                                                                    
['                  # Jump to the previous bookmark                                                                                                                                                                     
]'                  # Jump to the next bookmark                                                                                                                                                                     
'<                  # Jump to the beginning of the last visual mode selection area                                                                                                                                                              
'>                  # Jump to the end of the last visual mode selection area                                                                                                                                                              
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Help information

```bash                                                                                                                                                                                            
:help <command>     # To display the help of related commands, you can also enter :help instead of the command. To exit the help, you need to enter :q                                                                                                                                    
:h tutor            # Getting started document                                                                                                                                                                         
:h quickref         # Quick help                                                                                                                                                                         
:h index            # Query all keyboard command definitions in Vim                                                                                                                                                              
:h summary          # Help you better use the built-in help system                                                                                                                                                               
:h Ctrl+H           # Query what Ctrl+H does in normal mode                                                                                                                                                         
:h i_Ctrl+H         # Query what does Ctrl+H do in insert mode                                                                                                                                                         
:h i_<Up>           # Query what is on the arrow keys in insert mode                                                                                                                                                             
:h pattern.txt      # Regular expression help                                                                                                                                                                      
:h eval             # Scripting help                                                                                                                                                                       
:h function-list    # View the list of functions in VimScript                                                                                                                                                           
:h windows.txt      # Window help                                                                                                                                                                       
:h tabpage.txt      # Help on using tabs                                                                                                                                                                      
:h +timers          # Show help for the +timers feature                                                                                                                                                            
:h :!               # See how to run external commands                                                                                                                                                                   
:h tips             # View the documentation of common techniques built into Vim                                                                                                                                                             
:h set-termcap      # See how to set the key scan code                                                                                                                                                                  
:viusage            # Normal mode help                                                                                                                                                                  
:exusage            # EX command help                                                                                                                                                                      
:version            # Display the current version number and features of Vim                                                                                                                                                             
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## External command

```bash                                                                                                                                                                                            
:!command           # Execute a one-time Shell command, the following command: :!pwd, change the directory in the current Vim mode                                                                                                                                     
:shell              # Start an interactive Shell to execute multiple commands, the exit command exits and returns to Vim                                                                                                                                        
:!ls                # Run the external command ls and wait for the return                                                                                                                                                              
:r !ls              # Capture the output of the external command ls and insert it after the cursor                                                                                                                                                       
:w !sudo tee %      # sudo saves the current file in the future, it can also be like this :w !sudo tee % > /dev/null                                                                                                                               
:call system('ls')  # Call the ls command, but do not display the returned content                                                                                                                                                           
:!start notepad     # Start Notepad under Windows, you can add silent at the top                                                                                                                                            
:sil !start cmd     # Open cmd in the current directory under Windows                                                                                                                                                          
:%!prog             # Run a text filter program, such as sorting JSON format:%!python -m json.tool                                                                                                                                  
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Quickfix window

```bash                                                                                                                                                                                            
:copen              # Open the quickfix window (view compilation, grep and other information)                                                                                                                                                
:copen 10           # Open the quickfix window and set the height to 10                                                                                                                                                    
:cclose             # Close the quickfix window                                                                                                                                                               
:cfirst             # Jump to the first error message in quickfix                                                                                                                                                         
:clast              # Jump to the last error message in quickfix                                                                                                                                                        
:cc [nr]            # View error [nr]                                                                                                                                                                    
:cnext              # Skip to the next error message in quickfix                                                                                                                                                         
:cprev              # Jump to the previous error message in quickfix                                                                                                                                                         
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Spell Check

```bash                                                                                                                                                                                            
:set spell          # Turn on spell check                                                                                                                                                                       
:set nospell        # Turn off spell check                                                                                                                                                                       
]s                  # The next misspelled word                                                                                                                                                                   
[s                  # The last misspelled word                                                                                                                                                                   
zg                  # Add words to the spelling vocabulary                                                                                                                                                                   
zug                 # Undo the last word added                                                                                                                                                                   
z=                  # Spelling suggestion                                                                                                                                                                         
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Code folding

```bash                                                                                                                                                                                            
za                  # Toggle fold                                                                                                                                                                         
zA                  # Switch folding recursively                                                                                                                                                                       
zc                  # Fold the code under the cursor                                                                                                                                                                      
zC                  # Collapse all code under the cursor                                                                                                                                                                    
zd                  # Delete the fold under the cursor                                                                                                                                                                      
zD                  # Recursively delete all folds                                                                                                                                                                     
zE                  # Delete all folds                                                                                                                                                                       
zf                  # Create code folding                                                                                                                                                                       
zF                  # Specify the number of rows to create a fold                                                                                                                                                                     
zi                  # Toggle fold                                                                                                                                                                         
zm                  # All codes are folded one level                                                                                                                                                                     
zr                  # All codes open one layer                                                                                                                                                                     
zM                  # Fold all code, set foldlevel=0, set foldenable                                                                                                                                          
zR                  # Open all code and set foldlevel to the maximum                                                                                                                                                     
zn                  # Fold none, reset foldenable and open all codes                                                                                                                                                
zN                  # Fold Normal, reset foldenable and restore all folds                                                                                                                                              
zo                  # Open a layer of code                                                                                                                                                                       
zO                  # Turn on all code folding under the cursor                                                                                                                                                                  
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Document encryption/decryption

**Document Encryption**: When opening a file in encrypted mode, you will be prompted to enter the password twice in the lower left corner of the screen before you can operate. After saving the file and exiting, you must enter the normal password to open the file correctly, otherwise garbled characters will be displayed.

```bash                                                                                                                                                                                            
vim -x file_name	# Enter encryption password -> Confirm password! Note: Save the content if you don't modify it. :wq, otherwise the password setting will not take effect.                                                                                                                                 
:X                  # In the command line mode, enter the encryption password -> confirm the password! Note: Save the content without modifying it. :wq, otherwise the password setting will not take effect.                                                                                                                          
:set key=密码		# In the command line mode, enter the encryption password -> confirm the password! Note: Save the content without modifying it. :wq, otherwise the password setting will not take effect.                                                                                                                              
```

**Document decryption**

```bash                                                                                                                                                                                            
:X                  # In the command line mode, you are prompted to enter a password, press Enter instead of entering it. Note: Save the content without modifying it. :wq, otherwise the decryption setting will not take effect.                                                                                                                      
:set key=		    # In the command line mode, set the key password to be empty. Note: Save the content without modifying it. :wq, otherwise the password setting will not take effect.                                                                                                                             
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Macro recording

**Macro is the function of recording and playback. It is an integration of a series of Vim command operations. Using macros can achieve a lot of repetitive work.**

```bash                                                                                                                                                                                            
qa                  # Start recording the macro named a                                                                                                                                                                 
q                   # End recording macro                                                                                                                                                                        
@a                  # Play the macro named a                                                                                                                                                                   
@@                  # Play the previous macro                                                                                                                                                                       
@:                  # Repeat the last ex command (colon command)                                                                                                                                                           
```

**Macro example**：You need to type a Tab key at the beginning of the following multi-line text to indent the beginning of the line.

```                                                                                                                                                                                                
set nu                                                                                                                                                                                             
set tabstop=4                                                                                                                                                                                      
set shiftwidth=4                                                                                                                                                                                   
set softtabstop=4                                                                                                                                                                                  
set autoindent                                                                                                                                                                                     
set wrap                                                                                                                                                                                           
syntax on                                                                                                                                                                                          
```

### Record macro

- Move the cursor to the first line first.                                                                                                                                                                                      
- In Normal mode, press the q key and a letter to start recording. For example, press qa to register the macro as a.                                                                                                                                                     
- Press I to insert at the beginning of the line, and press Tab in edit mode. Press Esc to return to Normal mode.                                                                                                                                                   
- Press the j key to move the cursor to the next line.                                                                                                                                                                                  
- Press the q key to finish recording.

                                                                                                                                                                                                   
                                                                                                                                                                                                   
### Use macro

- Using the macro a recorded above, press @a to play the macro named a.                                                                                                                                                                     
- Move the cursor to the second line in Normal mode, press @a, and use macro a again.                                                                                                                                                             
- Press N@a for multiple operations, where N is a positive integer, which means that the macro is executed N times. For example, move the cursor to line 3, operate macro a on the remaining 5 lines, and press 5@a.

The above **recording macro, using macro** two common operations, complete the beginning of multiple lines of text, type a Tab key to indent the beginning of the line!

                                                                                                                                                                                                   
## Other commands

```bash                                                                                                                                                                                            
Ctrl+X Ctrl+E       # Scroll up in insert mode                                                                                                                                                                    
Ctrl+X Ctrl+Y       # Scroll down in insert mode                                                                                                                                                                    
Ctrl+G              # Display the name of the file being edited, as well as size and location information                                                                                                                                                         
g Ctrl+G            # Display file size, number of characters, number of words and number of lines, also available in visual mode                                                                                                                                                  
ga                  # Display the ASCII code or Unicode code of the character under the cursor                                                                                                                                                
g8                  # Display the UTF-8 encoding byte order of the character under the cursor                                                                                                                                                         
gi                  # Go back to the place where you entered the insert last time, and switch to insert mode                                                                                                                                                         
K                   # Query the help of the word under the cursor                                                                                                                                                                   
Ctrl+PgUp           # On the last tab page, GVim OK, some terminal software needs to set the corresponding keyboard code                                                                                                                                                 
Ctrl+PgDown         # The next tab page, GVim OK, some terminal software needs to set the corresponding keyboard code                                                                                                                                                 
Ctrl+R Ctrl+W       # Insert the word under the cursor in command mode                                                                                                                                                                 
Ctrl+Insert         # Copy to the system clipboard (GVIM)                                                                                                                                                               
Shift+Insert        # Paste the contents of the system clipboard (GVIM)                                                                                                                                                             
:set ff=unix        # Set change behavior unix                                                                                                                                                                   
:set ff=dos         # Set change behavior dos                                                                                                                                                                    
:set ff?            # View line break settings                                                                                                                                                                       
:set nohl           # Clear search highlight                                                                                                                                                                       
:set termcap        # See what will be received from the terminal and what commands will be sent to the terminal                                                                                                                                                       
:set guicursor=     # Solve the problem of some strange characters in NeoVim in SecureCRT/PenguiNet                                                                                                                                     
:set t_RS= t_SH=    # Solve the strange characters in the Vim8.0 terminal function in SecureCRT/PenguiNet                                                                                                                                     
:set fo+=a          # Enable real-time automatic formatting of text segments                                                                                                                                                                
:earlier 15m        # Go back to the contents of the file 15 minutes ago                                                                                                                                                              
:map                # To view the map shortcuts of the current Vim configuration                                                                                                                                                        
:inoremap           # To view the inoremap shortcuts of the current Vim configuration                                                                                                                                                   
:nnoremap           # To view the nnoremap shortcuts of the current Vim configuration                                                                                                                                                   
:.!date             # Insert time in current window                                                                                                                                                                    
:%!xxd              # Start binary editing                                                                                                                                                                      
:%!xxd -r           # Save binary edit                                                                                                                                                                      
:r !curl -sL {URL}  # After reading the URL content and adding it to the cursor                                                                                                                                                              
:g/^\s*$/d          # Delete blank lines                                                                                                                                                                         
:g/green/d          # Delete all lines containing green                                                                                                                                                              
:v/green/d          # Delete all lines that do not contain green                                                                                                                                                             
:g/gladiolli/#      # Search words and print the results, and add the line number before the results                                                                                                                                                           
:g/ab.*cd.*efg/#    # Search for lines containing ab, cd and efg, print the result and line number                                                                                                                                                 
:v/./,/./-j         # Compress blank lines                                                                                                                                                                         
:Man bash           # View man in Vim, first call :runtime! ftplugin/man.vim to activate                                                                                                                              
/fred\|joe          # Search for fred or joe                                                                                                                                                               
/\<\d\d\d\d\>       # Search exactly four numbers                                                                                                                                                                     
/^\n\{3}            # Search for three consecutive blank lines                                                                                                                                                                     
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## View historical commands

In command line mode                                                                                                                                                                                         
```bash                                                                                                                                                                                            
:history                  # View the history of all commands entered in the command line mode                                                                                                                                                      
:history search or / or ？ # View search history                                                                                                                                                                   
```

In normal mode                                                                                                                                                                                             
```bash                                                                                                                                                                                            
q/                  # View search history used q/ entered                                                                                                                                                               
q?                  # View usage q? Entered search history                                                                                                                                                                
q:                  # View command line history                                                                                                                                                                      
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Register

**View register value.**

```bash                                                                                                                                                                                            
:reg                   # View all register values                                                                                                                                                                  
:reg {register_name}   # View the specified register value                                                                                                                                                                  
```

                                                                                                                                                                                                   
**Recall register value.**

```bash                                                                                                                                                                                            
"{register_name}       # Recall register value in normal mode                                                                                                                                                               
:Ctrl+r "register_name # After entering Ctrl+r in command mode, Vim will automatically type "register reference symbol                                                                                                                                       
Ctrl+r register_name   # In insert mode (no need to enter register reference symbol")                                                                                                                                                          
```

**Vim register classification**

| Register name   | Citation method            | Description                                                                |                                                                                           
| --------------- | ------------------ | ------------------------------------------------------------------ |                                                                                      
| Unnamed register        | ""                 | The default register, all copy and modify operations (x, s, d, c, y) will copy the data to the unnamed register   |                                                                                                                
| Alphabet register        | "a - "z or "A - "Z | {register_name} can only be one of 26 English letters, from a-z, A-Z register contents will be merged into the corresponding lowercase letters |                                                                                               
| Copy special register     | "0(Number 0)      | Only when the copy operation (y) is used, the data will be copied to the unnamed register and the copy special register at the same time        |                                                                                                                   
| Step-by-step temporary cache register | "1 - "9  | All data without ranges ('(',')','{','}') and operations involving more than 1 line of delete and modify operations (x, s, d, c) will be copied to the stepwise temporary cache register , And when new data is added, it progresses step by step. The data of 1 is copied to 2, 2 to 3, and the contents of the last 9 registers will be deleted |                                        
| Black hole register        | "_                 | Almost all the data involved in the operation will be copied to the register. If you want the data to be operated not to pass through the register, you can specify a black hole register. The data will disappear when the register arrives, and it cannot be displayed and does not exist. |                                                                                     
| System clipboard        | "+ or "*            | When interacting with the GUI external to Vim, you need to use a special system clipboard                     |                                                                                                        
| Expression register      | "=                 | The most special one of all registers is used to calculate expressions. After entering the register application, it will prompt "=" in the command line, enter the expression as needed, and the result will be displayed at the cursor |                                                                                              
| Other registers         | -                  | - |

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Vim configuration file

Edit the Vim configuration file:

```bash                                                                                                                                                                                            
:edit $MYVIMRC      # Use this command to open the Vim configuration file in Vim command mode                                                                                                                                                    
:source $MYVIMRC    # After the Vim configuration file is changed, use this command to load the new configuration options. If the vimrc file happens to be the currently active buffer, this command can be simplified to: so %.                                                                                                               
```

**Vim configuration instructions, please refer to [vimrc configuration file](../vimrc) for details. Note: Vim configuration can be set individually in command mode and only takes effect in the current window！**                                                                                                                           
```bash                                                                                                                                                                                            
syntax              # List the defined grammar items                                                                                                                                                                   
syntax clear        # Clear defined grammar rules                                                                                                                                                                   
syntax on           # Allow syntax highlighting                                                                                                                                                                       
syntax off          # Prohibit syntax highlighting                                                                                                                                                                       
set history=200     # Record 200 historical commands                                                                                                                                                                 
set bs=?            # Set Backspace key mode, modern editor is :set bs=eol,start,indent                                                                                                                             
set sw=4            # Set the indent width to 4                                                                                                                                                                    
set ts=4            # Set the tab width to 4                                                                                                                                                                   
set noet            # Set not to expand Tab to space                                                                                                                                                                
set et              # Set expand Tab to space                                                                                                                                                                 
set winaltkeys=no   # Set the normal capture of the Alt key under GVim                                                                                                                                                          
set nowrap          # Turn off word wrap                                                                                                                                                                       
set ttimeout        # Allow terminal key detection to time out (the function key under the terminal is a series of scan codes starting with Esc)                                                                                                                                             
set ttm=100         # Set the terminal key detection timeout to 100 milliseconds                                                                                                                                                           
set term=?          # Set the terminal type, such as the common xterm                                                                                                                                                           
set ignorecase      # Set whether the search ignores case                                                                                                                                                                  
set smartcase       # Smart case, ignore case by default, unless the search content contains uppercase letters                                                                                                                                                  
set list            # Set to display tabs and line breaks                                                                                                                                                                  
set nu              # Set the display line number, you can use :set nonu to prohibit the display line number                                                                                                                                                   
set number          # Set the display line number, you can use :set nonumber to prohibit the display line number                                                                                                                                               
set relativenumber  # Set display relative line number (distance between other lines and current line)                                                                                                                                                         
set paste           # Enter paste mode (disable indentation when pasting and other things that affect formatting)                                                                                                                                                      
set nopaste         # End paste mode                                                                                                                                                                       
set spell           # Allow spell checking                                                                                                                                                                       
set hlsearch        # Set highlight search                                                                                                                                                                       
set ruler           # Always show cursor position                                                                                                                                                                     
set nocompatible    # The setting is not compatible with the original vi mode (must be set at the very beginning)                                                                                                                                                      
set incsearch       # Dynamic incremental display of search results during search input                                                                                                                                                              
set insertmode      # Vim is always in insert mode, use Ctrl+o to execute commands temporarily                                                                                                                                               
set all             # List all option settings                                                                                                                                                                   
```

                                                                                                                                                                                                   
## Vim plugins

**[vim-commentary](https://github.com/tpope/vim-commentary)**：Vim batch comment tool, you can comment multiple lines and remove multiple lines of comments.

```bash                                                                                                                                                                                            
gcc                 # Comment the current line                                                                                                                                                                        
gc{motion}          # Annotate the area marked by {motion}, such as gcap annotate the entire paragraph                                                                                                                                              
gci{                # Comment the content in braces                                                                                                                                                                    
gc                  # Press gc to annotate the selected area under Visual Mode                                                                                                                                                  
:7,17Commentary     # Comment lines 7 to 17                                                                                                                                                                  
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
**[NERDTree](https://github.com/preservim/nerdtree)**：This plugin is used to list the directory tree of the current path.

```bash                                                                                                                                                                                            
?                   # Quick help document                                                                                                                                                                       
o                   # Open a directory or open a file, create a buffer, can also be used to open bookmarks                                                                                                                                           
go                  # Open a file, but the cursor remains in NERDTree, creating a buffer                                                                                                                                         
t                   # Open a file and create a Tab, which is also effective for bookmarks                                                                                                                                                      
T                   # Open a file, but the cursor still stays in NERDTree. Tab is created, which is also effective for bookmarks                                                                                                                                    
i                   # Split the window to create the file horizontally, creating a buffer                                                                                                                                                      
gi                  # Split the window where the file was created horizontally, but the cursor remains in NERDTree                                                                                                                                                
s                   # Split the window that creates the file vertically, creating a buffer                                                                                                                                                      
gs                  # Similar to gi and go                                                                                                                                                                   
x                   # Collapse the currently open directory                                                                                                                                                                    
X                   # Collapse all open directories                                                                                                                                                                    
e                   # Open the selected directory by file management                                                                                                                                                              
D                   # Delete bookmark                                                                                                                                                                         
P                   # Uppercase, jump to the current root path                                                                                                                                                                  
p                   # Lowercase, jump to the previous path where the cursor is located                                                                                                                                                             
K                   # Jump to the first subpath                                                                                                                                                                    
J                   # Jump to the last subpath                                                                                                                                                                   
Ctrl+j Ctrl+k       # Move between directories and files at the same level, ignoring subdirectories and subfiles                                                                                                                                                        
C                   # Set the root path to the directory where the cursor is                                                                                                                                                               
u                   # Set the parent directory as the root path                                                                                                                                                                   
U                   # Set the parent directory to follow the path, but keep the original directory open                                                                                                                                                     
r                   # Refresh the directory where the cursor is                                                                                                                                                                    
R                   # Refresh the current root path                                                                                                                                                                      
I                   # Show or not show hidden files                                                                                                                                                                  
f                   # Turn file filters on and off                                                                                                                                                                   
q                   # Close NERDTree                                                                                                                                                                  
A                   # Show NERDTree in full screen, or close full screen                                                                                                                                                         
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
**[asyncrun.vim](https://github.com/skywind3000/asyncrun.vim)**：The plug-in uses the asynchronous mechanism of Vim 8 / NeoVim, allowing you to run shell commands in the background and display the results in Vim's Quickfix window in real time.

```bash                                                                                                                                                                                            
:AsyncRun ls        # Run the command ls asynchronously and output the result to quickfix. Use :copen to view                                                                                                                                        
:AsyncRun -raw ls   # Run the command asynchronously, the result of ls does not match errorformat                                                                                                                                                 
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Vim mode

```bash                                                                                                                                                                                            
Normal mode        # Press Esc or Ctrl+[ to enter, the file name is displayed in the lower left corner or empty                                                                                                                                                    
Insert mode        # Press i to enter, the lower left corner shows --INSERT--                                                                                                                                                          
Visual mode        # Press v to enter, the lower left corner shows --VISUAL--                                                                                                                                                          
Replacement mode   # Press r or R to start, the lower left corner shows --REPLACE--                                                                                                                                                     
Command line mode  # Press : or / or ? To start                                                                                                                                                                  
```

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Internet resources

- The latest version of：https://github.com/vim/vim                                                                                                                                                                  
- Windows version：https://github.com/vim/vim-win32-installer/releases                                                                                                                                    
- Plug-in browsing：http://vimawesome.com                                                                                                                                                                       
- Set the Alt key correctly：http://www.skywind.me/blog/archives/2021                                                                                                                                              
- Video tutorial：http://vimcasts.org/                                                                                                                                                                        
- Chinese help：http://vimcdoc.sourceforge.net/doc/help.html                                                                                                                                                
- Chinese version entry to proficiency：https://github.com/wsdjeg/vim-galore-zh_cn                                                                                                                                              
- Getting started with a five-minute script：http://www.skywind.me/blog/archives/2193                                                                                                                                                 
- Script mastery：http://learnvimscriptthehardway.stevelosh.com/                                                                                                                                              
- 16 years of experience：http://zzapper.co.uk/vimtips.html                                                                                                                                                        
- coloring scheme：http://vimcolors.com/

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Vim usage suggestions

- Never use Ctrl+C instead of <Esc>. It has a completely different meaning and is easy to mistakenly interrupt the running background script.                                                                                                                                                     
- Many people use Ctrl+[ instead of <Esc>, the little finger of the left hand is Ctrl, and the little finger of the right hand [ is very convenient after being proficient.                                                                                                                                                   
- If you see strange characters when using Vim 8 embedded terminal in some terminals, use :set t_RS= t_SH= to solve it.                                                                                                                                                
- If you see strange characters when using NeoVim in some terminals, use :set guicursor= to solve it.                                                                                                                                                    
- Use ciw, ci[, ci", ci( and diw, di[, di", di( commands to quickly rewrite/delete text.                                                                                                                                       
- When moving the cursor left or right in the line, use w b e or W B E instead of h l or the arrow keys, which will be much faster.                                                                                                                                                
- Shift is equivalent to moving the accelerator key, w b e moves the cursor very slowly, but W B E moves very fast.                                                                                                                                                      
- You should be good at summarizing new skills, such as moving to a non-blank character at the beginning of a line, using the 0w command is easier to enter than the ^ command.                                                                                                                                                       
- Use the dip command on a blank line to delete all adjacent blank lines, and viw can choose continuous blanking.                                                                                                                                                          
- It is much more convenient to use >8j >} <ap >ap =i} == when indenting.                                                                                                                                                               
- In insert mode, when you find a word is wrong, you should use Ctrl+W. This is faster than <Backspace>.                                                                                                                                                  
- The y d c command can be a good combination of f t and /X such as dt) and y/End<cr>.                                                                                                                                                      
- The c d x command will automatically fill the register "1 to "9, and the y command will automatically fill the "0 register."                                                                                                                                                     
- When using the v command to select text, you can use 0 to make a U-turn selection, which is sometimes useful.                                                                                                                                                                    
- When writing an article, you can write a code block, and then select it and execute it:! The python code block will be replaced with the result.                                                                                                                                                      
- After searching, you often use :nohl to eliminate the highlight. It is used very frequently and you can map it to <Backspace>.                                                                                                                                                
- When searching, you can use Ctrl+R Ctrl+W to insert the word under the cursor, and the command mode can also be used in this way.                                                                                                                                                         
- When mapping keys, noremap should be used by default, and map should only be used when specifically needed.                                                                                                                                                           
- After copying the text with y, press Ctrl+R in the command mode and then press the double quotation mark 0 to insert the previously copied content.                                                                                                                                                      
- GVim under Windows can set set rop=type:directx,renmode:5 to enhance the display.                                                                                                                                        
- When you feel that doing something is inefficient, you should stop and think about the correct and efficient way to do it.

                                                                                                                                                                                                   
## Books

[Practical Vim（English version）](https://www.amazon.com/Practical-Vim-Edit-Speed-Thought-ebook-dp-B018T6ZVPK/dp/B018T6ZVPK/ref=mt_other?_encoding=UTF8&me=&qid=) |  [Practical Vim（Chinese Version）](https://book.douban.com/subject/)
                                                                                                                                                                                                   
                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Vim keyboard diagram

![vim keyboard diagram](vim-commands_EN.png)

                                                                                                                                                                                                   
                                                                                                                                                                                                   
## Reference

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

                                                                                                                                                                                                   