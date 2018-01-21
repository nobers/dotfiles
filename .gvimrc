set lines=50	"ウィンドウの縦幅
set columns=90	"ウィンドウの横幅
set guifont=Ricty\ Regular\ for\ Powerline:h18
set transparency=10		"デフォルト背景の透明度 10
colorscheme molokai
set background=dark		"ダーク系のカラースキームを使う

"背景の透明・不透明の切り替えトグル （space + t +t）
function! s:toggle_transparence()
    if &transparency == 10
        set transparency=0
    else
        set transparency=10
    endif
endfunction
nnoremap <silent> <Space>tt :<C-u>call <SID>toggle_transparence()<CR>
