set smartindent                 " 智能缩进
set autoindent                  " 自动缩进
set tabstop=4                   " 制表符显示为 4 个空格宽度
set shiftwidth=4                " 自动缩进 4 个空格
set expandtab                   " 制表符转换为空格
syntax on                       " 启用语法高亮
set noruler                     " 关闭底部标尺
set hlsearch                    " 启用高亮匹配
set incsearch                   " 搜索实时高亮
set scrolloff=5                 " 启用行缓冲
set cursorline                  " 启用光标线
set mouse=a                     " 启用鼠标支持

" 自定义状态栏格式
set laststatus=2                                                 " 启用始终显示状态栏
set noshowmode                                                   " 禁用默认的模式显示
set statusline=
set statusline+=%f\                                              " 文件路径
set statusline+=[FORMAT=%{&ff}:%{&fenc}]\ [TYPE=%{toupper(&ft)}] " 文件格式/编码/类型
set statusline+=\ [ASCII=%03.3b,HEX=0x%02.B]\                    " 当前字符ASCII/HEX
set statusline+=%=[Line=%l/%L,Col=%c]\                           " 行号/列号/百分比
set statusline+=\ [%{strftime('%Y-%m-%d\ %H:%M')}]               " 日期时间
" 在状态栏中增加颜色分组
highlight StatusLine ctermbg=black ctermfg=green


" 加载局部配置文件
if filereadable(getcwd() . "/.vimrc.local")
    execute "source " . getcwd() . "/.vimrc.local"
endif

" 保存浏览位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 递归查找 tags 实现代码跳转
set tags=./tags;,tags
