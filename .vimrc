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
set fileencodings=iso-2022-jp,euc-jp,utf-8,ucs-2,cp932,sjis	
"自動判別に使用する文字コード
set visualbell		"ビープ音を可視化
set nocompatible	"viとの互換性を取らない（vimの独自拡張を使う為）
set fileformats=unix,dos,mac	"改行コードの自動認識
set backspace=indent,eol,start	"バックスペースで削除できるものを指定
set scrolloff=5		"上下5行の視界を確保

"------------------------------------------------------
"バックアップ関係
"------------------------------------------------------
set backup		"バックアップファイルを作成
set backupdir=~/.vim/backup		"バックアップファイルの保存場所
set undodir=~/.vim/undo		"undoファイルを一箇所に（ディレクトリ先は作成しておく）

"------------------------------------------------------
"検索関係
"------------------------------------------------------
set ignorecase	"検索の時に大文字小文字を区別しない
set smartcase	"検索の時に大文字が含まれている場合は区別して検索
set incsearch	"インクリメンタルサーチ
set wrapscan	"最終行まで検索したら先頭行に戻る

"------------------------------------------------------
"表示関係
"------------------------------------------------------
colorscheme molokai	"カラースキーム molokai
set t_Co=256
set title	"編集中のファイル名をウィンドウ枠に表示
set number	"行番号を表示
set ruler	"カーソル位置を表示
set cursorline	"現在行を強調表示
set showmode	"モードを表示する
set showcmd		"入力中のコマンドをステータスに表示する
set laststatus=2	"ステータスラインを常に表示
set showmatch	"対応する括弧のハイライト表示
set matchtime=2	"対応するかっこの表示時間を2にする
syntax on	"シンタックスハイライトを有効にする
set hlsearch	"検索語をハイライト表示
set helpheight=999	"ヘルプを画面いっぱいに開く
nmap <Esc><Esc> :nohlsearch<CR><Esc>	"ESC連打でハイライト解除
set wildmenu wildmode=list:longest,full "コマンドライン補完を拡張モードに
set textwidth=0		"入力されているテキストの最大幅（行がそれより長くなると、この幅を超えないように空白の後で改行される）を無効にする
set wrap	"ウィンドウの幅より長い行は折り返して、次の行に続けて表示
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/
set guioptions-=r		"ウィンドウの右側のスクロールバーを表示しない
set guioptions-=R		"縦分割された右側のスクロールバーを表示しない
set guioptions-=l		"ウィンドウの左側のスクロールバーを表示しない
set guioptions-=L		"縦分割された左側のスクロールバーを表示しない

"------------------------------------------------------
"インデント
"------------------------------------------------------
set autoindent	"オートインデント
set smartindent	"インデントはスマートインデント
set tabstop=4	"タブのスペース数
set softtabstop=4	"タブやバックスペースの使用等の編集操作をするときに、タブが対応する空白の数
set noexpandtab		"タブを挿入するとき、代わりに空白を使わない

"------------------------------------------------------
"その他
"------------------------------------------------------
set cryptmethod=blowfish2	"利用する暗号化方式
set autoread	"編集中のファイルが変更されたら自動で読み直す
set hidden		"バッファが編集中でもその他のファイルを開けるように
set virtualedit=onemore		"行末の１文字先までカーソルを移動できるように
autocmd QuickFixCmdPost vimgrep cwindow		"vimgrepした時に自動的にquickfix-windowを開くようにする
nnoremap j gj	"折りたたまれた行内を下移動できるようにする
nnoremap k gk	"折りたたまれた行内を上移動できるようにする
nnoremap <silent><Space>[[ :set columns=180<CR>	"Space+[[ でウィンドウ横幅2倍"
nnoremap <silent><Space>]] :set columns=90<CR>	"Space+]] で横幅デフォルト(90)"

"------------------------------------------------------
"プラグイン設定
"------------------------------------------------------
"winresizer.vim用の設定
let g:winresizer_start_key='<C-@>'	"ウィンドウリサイズ開始
let g:winresizer_gui_enable=1		"GUIでウィンドウ自体をリサイズする
let g:winresizer_vert_resize=4		"横リサイズの増減量
let g:winresizer_horiz_resize=2		"縦リサイズの増減量

"airlinの設定
"Poweline系フォントを利用する
let g:airline_poweline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_idx_mode=1
let g:airline#extensions#whitespace#mixed_indent_algo=1
let g:airline_theme='badwolf'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_section_a = airline#section#create(['mode','','branch'])
set guifont=Ricty\ Regular\ for\ Powerline:h18
let g:Powerline_symbols = 'fancy'

"unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
"let g:airline_symbols.branch = '⎇'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

" powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_branch_prefix = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_linecolumn_prefix = '⭡'
let g:airline#extensions#tabline#left_sep = '⮀'
let g:airline#extensions#tabline#left_alt_sep = '⮀'
