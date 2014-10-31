set nocompatible
filetype off


set rtp+=~/.vim/vundle.git/
call vundle#rc()


"----------------
"Install
"----------------
""vundle
Bundle 'gmarik/vundle'
""unite 融合プラグイン
Bundle 'Shougo/unite.vim'
""vimfiler ファイラー
Bundle 'Shougo/vimfiler'
""neocomplcache 自動補完
Bundle 'Shougo/neocomplcache'
""abolish 変数命名規則変換
"Bundle 'tpope/vim-abolish'
""tcomment コメントアウトトグル
"Bundle 'tomtom/tcomment_vim'
"" platex.vim コンパイルできる
Bundle 'lambdalisue/platex.vim'

"----------------
"Plugin option
"----------------
""neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 0
"バッファや辞書ファイル中で、補完の対象となるキーワードの最小長さ。初期値は4。
let g:neocomplcache_min_keyword_length = 4
"シンタックスファイル中で、補完の対象となるキーワードの最小長さ。初期値は4。
let g:neocomplcache_min_syntax_length = 4
"DTと入力するとD*T*と解釈され、DateTime等にマッチする。
let g:neocomplcache_enable_camel_case_completion = 0
"改行で補完ウィンドウを閉じる
inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>"
"tabで補完候補の選択を行う
inoremap <expr><TAB> pumvisible() ? "\<Down>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<Up>" : "\<S-TAB>"
"C-yで補完候補の確定
inoremap <expr><C-y> neocomplcache#close_popup()
"C-eで補完のキャンセルし、ウィンドウを閉じる。ポップアップが開いていないときはEndキー
inoremap <expr><C-e> pumvisible() ? neocomplcache#cancel_popup() : "\<End>"
"C-gで補完を元に戻す
inoremap <expr><C-g> neocomplcache#undo_completion()

""vimfiler


""Unite.vim
nnoremap <Space> <silent>
nnoremap <Space>u :Unite
nnoremap <Space>f :Unite file<CR>
nnoremap <Space>c :Unite tab buffer<CR>
nnoremap <Space>h :Unite file_mru directory_mru<CR>
nnoremap <Space>b :Unite bookmark<CR>

""platex.vim
let g:platex_suite_main_file       = "index"
let g:platex_suite_latex_compiler  = "platex"
let g:platex_suite_dvipdf_compiler = "dvipdfmx"
let g:platex_suite_viewer          = "evince"
augroup platex
	autocmd!
	autocmd BufNewFile,BufRead *.tex let g:platex_suite_main_file = "%:r"
augroup END

"----------------
"last
"----------------
filetype plugin indent on
