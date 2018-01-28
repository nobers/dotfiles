"NeoBundle Script-----------------------------
" neobundle#begin - neobundle#endの間に導入するプラグインを記載する
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'simeji/winresizer'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------





"------------------------------------------------------
"基本的な設定
"------------------------------------------------------
set encoding=utf-8	"デフォルトの文字コード
set fileencoding=utf-8

set clipboard=unnamed,autoselect	"ヤンク、クリップボード連携

inoremap <silent> jj <ESC>		"jjでノーマルモードへ
inoremap <silent> っj <ESC>		"日本語入力対応版 jj

"自動判別に使用する文字コード
set fileencodings=iso-2022-jp,euc-jp,utf-8,ucs-2,cp932,sjis

set visualbell					"ビープ音を可視化
set nocompatible				"viとの互換性を取らない（vimの独自拡張を使う為）
set fileformats=unix,dos,mac	"改行コードの自動認識
set backspace=indent,eol,start	"バックスペースで削除できるものを指定
set scrolloff=3					"上下3行の視界を確保

"カーソルをinsert時はVertical Bar、ノーマル、ビジュアルモード時はBox
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

"------------------------------------------------------
"バックアップ関係
"------------------------------------------------------
set backup						"バックアップファイルを作成
set backupdir=~/.vim/backup		"バックアップファイルの保存場所
set undodir=~/.vim/undo			"undoファイルを一箇所に（dir先は作成しておく）

"------------------------------------------------------
"検索関係
"------------------------------------------------------
set ignorecase		"検索の時に大文字小文字を区別しない
set smartcase		"検索の時に大文字が含まれている場合は区別して検索
set incsearch		"インクリメンタルサーチ
set wrapscan		"最終行まで検索したら先頭行に戻る

"------------------------------------------------------
"表示関係
"------------------------------------------------------
colorscheme molokai	"カラースキーム molokai
set t_Co=256
set title			"編集中のファイル名をウィンドウ枠に表示
set number			"行番号を表示
set ruler			"カーソル位置を表示
set cursorline		"現在行を強調表示
set showmode		"モードを表示する
set showcmd			"入力中のコマンドをステータスに表示する
set laststatus=2	"ステータスラインを常に表示
set showmatch		"対応する括弧のハイライト表示
set matchtime=2		"対応するかっこの表示時間を2にする
syntax on			"シンタックスハイライトを有効にする
set hlsearch		"検索語をハイライト表示
set helpheight=999	"ヘルプを画面いっぱいに開く
nmap <Esc><Esc> :nohlsearch<CR><Esc>		"ESC連打でハイライト解除
set wildmenu wildmode=list:longest,full		"コマンドライン補完を拡張モードに
set textwidth=0		"入力されているテキストの最大幅（行がそれより長くなると、この幅を超えないように空白の後で改行される）を無効にする
set wrap			"ウィンドウの幅より長い行は折り返して、次の行に続けて表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/
set guioptions-=r		"ウィンドウの右側のスクロールバーを表示しない
set guioptions-=R		"縦分割された右側のスクロールバーを表示しない
set guioptions-=l		"ウィンドウの左側のスクロールバーを表示しない
set guioptions-=L		"縦分割された左側のスクロールバーを表示しない

"------------------------------------------------------
"インデント
"------------------------------------------------------
set autoindent		"オートインデント
set smartindent		"インデントはスマートインデント
set tabstop=4		"タブのスペース数
set shiftwidth=4	"vimが自動で生成する（読み込み時など）tab幅をスペース4つ分にする
set noexpandtab		"タブを挿入するとき、代わりに空白を使わない
set softtabstop=4	"タブやバックスペースの使用等の編集操作をするときに、タブが対応する空白の数

"------------------------------------------------------
"その他
"------------------------------------------------------
set cryptmethod=blowfish2	"利用する暗号化方式
set autoread				"編集中のファイルが変更されたら自動で読み直す
set hidden					"バッファが編集中でもその他のファイルを開けるように
set virtualedit=onemore		"行末の１文字先までカーソルを移動できるように
"
"vimgrepした時に自動的にquickfix-windowを開くようにする
autocmd QuickFixCmdPost vimgrep cwindow

nnoremap j gj	"折りたたまれた行内を下移動できるようにする
nnoremap k gk	"折りたたまれた行内を上移動できるようにする

"GUI Vimのみ
nnoremap <silent><Space>]] :set columns=180<CR>	"Space+]] でウィンドウ横幅2倍"
nnoremap <silent><Space>[[ :set columns=90<CR>	"Space+[[で横幅デフォルト(90)"

"------------------------------------------------------
"プラグイン設定
"------------------------------------------------------
"winresizer.vim用の設定
let g:winresizer_start_key='<C-@>'	"ウィンドウリサイズ開始
let g:winresizer_gui_enable=1		"GUIでウィンドウ自体をリサイズする
let g:winresizer_vert_resize=4		"横リサイズの増減量
let g:winresizer_horiz_resize=2		"縦リサイズの増減量

"airlinの設定
"ハイライトをキャッシュし、高速に描画
let g:airline_highlighting_cache = 0
"Poweline系フォントを利用する
let g:airline_poweline_fonts=1
"タブラインを有効
let g:airline#extensions#tabline#enabled=1
"番号がタブラインに表示され、バッファを直接選択できる (<leader>+1,2,3,...)
let g:airline#extensions#tabline#buffer_idx_mode=1
let g:airline#extensions#whitespace#mixed_indent_algo=1
let g:airline_theme='badwolf'
"let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
"ユニコード記号誤って上書きすることを避けるために存在するかどうかを確認
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_section_a = airline#section#create(['mode','','crypt'])
"let g:airline_section_a = airline#section#create(['mode','','branch'])
set guifont=Ricty\ Regular\ for\ Powerline:h18
let g:Powerline_symbols = 'fancy'

"unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '☰'
"let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.maxlinenr = '⭡'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.branch = '⭠'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
"let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

" powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
"let g:airline_branch_prefix = '⭠'
"let g:airline_symbols.readonly = '⭤'
"let g:airline_linecolumn_prefix = '⭡'
let g:airline#extensions#tabline#left_sep = '⮀'
let g:airline#extensions#tabline#left_alt_sep = '⮀'

"ステータスラインのワードカウントをミニマム '文字数 W' に
let g:airline#extensions#wordcount#formatter#default#fmt = '%sW'

"挿入モードからノーマルモードへの遅延解消
set ttimeoutlen=50

"空白エラーの検出を無効にする（ステータスラインのみ側表示を減らす為）
"let g:airline#extensions#whitespace#enabled = 1

"有効にする空白チェックを設定
let g:airline#extensions#whitespace#checks = [ 'trailing' ]

"暗号化検出を有効にする
let g:airline_detect_crypt=1

