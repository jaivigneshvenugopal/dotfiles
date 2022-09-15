# Deep Dive


## Vim

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

### Horizontal Movements

### Vertical Movements

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
#### coc 
