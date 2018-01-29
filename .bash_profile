#.bashrcを読み込ませるために必要な記述
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

#ディレクトリに色を付け、後ろに"/"を表示し、エイリアス設定する
alias ls='ls -FG'
