"======================================================================
"
" init-keymaps.vim - 按键设置，按你喜欢更改
"
"   - 快速移动
"   - 标签切换
"   - 窗口切换
"   - 终端支持
"   - 编译运行
"   - 符号搜索
"
" Created by skywind on 2018/05/30
" Last Modified: 2018/05/30 17:59:31
"
"======================================================================
" vim: set ts=4 sw=4 tw=78 noet :

"----------------------------------------------------------------------
" Switch cusor focus
"----------------------------------------------------------------------
nmap <silent> <C-left> :wincmd h<CR>
nmap <silent> <C-down> :wincmd j<CR>
nmap <silent> <C-up> :wincmd k<CR>
nmap <silent> <C-right> :wincmd l<CR>

"----------------------------------------------------------------------
"Switch buffer tab
"----------------------------------------------------------------------
nmap <A-h> :bp <cr> zz
nmap <A-l> :bn <cr> zz

"----------------------------------------------------------------------
"QucikFix window open and close
"----------------------------------------------------------------------
nmap <A-k> :copen<CR>
nmap <A-j> :cclose<CR>

"----------------------------------------------------------------------
"Focus on middle screen
"----------------------------------------------------------------------
nmap ]] ]]zz
nmap [[ [[zz

"----------------------------------------------------------------------
"Split windows
"----------------------------------------------------------------------
nmap sh :split<CR>
nmap sv :vsplit<CR>

"----------------------------------------------------------------------
" F1 ~ F12 key mapping
"----------------------------------------------------------------------

"<F2> Save
nmap <F2> :w! <cr>

"<F4>Quit
nmap <F4> :q! <cr>

" <F6> Replace words
nmap <F6> :1,$s/<C-R>=expand("<cword>")<CR>//gic<left><left><left><left>
cmap <F6> <Esc> :1,$s/<C-R>=expand("<cword>")<CR>//gic<left><left><left><left>
imap <F6> <Esc> :1,$s/<C-R>=expand("<cword>")<CR>//gic<left><left><left><left>
vmap <F6> <Esc> :1,$s/<C-R>=expand("<cword>")<CR>//gic<left><left><left><left>
omap <F6> <Esc> :1,$s/<C-R>=expand("<cword>")<CR>//gic<left><left><left><left>

" <F10> Show syntax highlighting group under cursor.
" http://vim.wikia.com/wiki/VimTip99
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" <F12> strip the trailing whitespace
nmap <F12> :call StripTrailingWhitespace()

