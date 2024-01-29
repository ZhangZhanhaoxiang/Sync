" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

filetype indent on
set number
syntax on
" set showmod
set showcmd
set wrap
set showmatch
set hlsearch
set wildmenu
set ruler

" 设置缩进
set expandtab tabstop=4 softtabstop=4 shiftwidth=4
set shiftround autoindent cindent
set nosmartindent nosmarttab
retab
" 详解：
" tabstop: TAB符(\t)的宽度
" shiftwidth：在一般模式(normal mode)和可视模式(visual mode)下的一个缩进的长度
" softtabstop: 在插入模式(insert mode)下一个缩进的长度
" expandtab：将TAB符(\t)转换成空格\s
" shiftround：保证缩进的宽度是shiftwidth的倍数。影响的操作有>和<,即插入模式时的CTRL-T和CTRL-D
" autoindent：换行时，复制上一行的缩进到新起一行的前面
" smartindent：一般与autoindent一起使用，一些特殊的字符或关键此，如{， }, if, else会自动增加一个缩进，在编写代码如c/c++, go, javascript时会比较有用。
" cindent：类似smartindent但规则更严格，且不能与smartindent一起使用，一般用于编写c/c++一类的编程语言。
" smarttab：基于已有行的缩进，来确定，在新行的开始位置，按<TAB>输入的缩进的长度
" retab: 将文件中已有的TAB符(\t)替换成空格符(\s)
" !!注意：在复制含有缩进的代码前，要先执行:set paste命令避免缩进错乱，再输入:set nopaste解除.

