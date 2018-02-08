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


" 日本語入力に関する設定:
if has('multi_byte_ime') || has('xim')
  " IME ON時のカーソルの色を設定(設定例:紫)
  highlight CursorIM guibg=Purple guifg=NONE
  " 挿入モード・検索モードでのデフォルトのIME状態設定
  set iminsert=0 imsearch=0
  if has('xim') && has('GUI_GTK')
    " XIMの入力開始キーを設定:
    " 下記の s-space はShift+Spaceの意味でkinput2+canna用設定
    "set imactivatekey=s-space
  endif
  " 挿入モードでのIME状態を記憶させない場合、次行のコメントを解除
  "inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>
endif
