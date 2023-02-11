# Deep Dive

## Vim

### Modes
```
i  # insert mode
v  # visual mode
jj # normal mode
```

### Open, Save, Exit etc
To open a file:
```
vim file.txt
vim          # just opens nerdtree
```

To save a file:
```
:w # saves file
:x # saves and exits
```

To exit a file:
```
:q  # exits a file
:q! # exit without saving a file
```

To switch tabs:
```
ctrl h/l
```

### Basic
```
a # appends after current letter
x # delete the letter
s # delete current letter and enter insert mode
```


### Manipulating words
```
r      # replace letter
u      # highlighted, lowercase words
U      # highlighted, uppercase words
C      # delete till eol and insert mode
D      # delete till eol
dw     # delete word
diw    # delete word from within
cw     # change word - works when you are at the start of the word
ciw    # change word - works when you are within a word too
cib    # change everything within paranthesis
ci[    # change everything within [
ci{    # change everything within {
```

### Horizontal Movements
To move word by word:
```
w # (forward)
b # (backward)
```

To move to specific word:
```
f <letter>
; # (jump forward)
, # (jump backward)
```

To get to last and first letter
```
^ # first letter
% # last letter
A # last letter and edit
I # first letter and edit
```

Highlight
```
vl/vw/vf<lettre> # hightlight letters/words/uptillword
vh/vb/vf<lettre> # hightlight letters/words/uptillword backward
```

### Vertical Movements
Delete lines
```
dd # deletes a line
```

To jump from one para to another:
```
{ # moves backward
} # moves forward
```

To jump to first line:
``` 
G  # last line
gg # first line
```

Add space below in normal mode:
```
o         # add space below and enter insert mode
O         # add space above and enter insert mode
<leader>o # add space below in nomral mode
<leader>O # add space above in normal mode
```

Highlight
```
V<move up or down>
```

### Searching
```
/<prefix> # same as ctrl f
n         # next match
N         # prev match
:noh      # resets highlighting
*         # moves to the next match of the word the cursor is on
```

### Plugins

#### nerdtree
*Note that opening a file closes nerdtree*

To open/close nerdtree:
```
CTRL + n
```

To open file/folders in nerdtree:   
```
o
```

To open a file in a new tab:
```
t
```
#### commentary
```
gcc    # comment out a single line
gc     # use it with a motion (select a few lines and then gc)
```

#### fzf
To find files:
```
CTRL + p
```

To walk through files
```
CTRL + j/k
```

To open a file in a new tab
```
CTRL + t
```

#### syntastic
As long as you have this, errors will turn up the moment (>>) you save the file
