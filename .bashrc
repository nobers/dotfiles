#!/bin/bash

#ターミナルにgitブランチ名等を表示させるシェルを呼び出す
source ~/.git-prompt.sh
source ~/.git-completion.bash

#ターミナルにブランチ名を表示するために必要
GIT_PS1_SHOWDIRTYSTATE=true

#以下のようにすると、"[ユーザ名@ホスト名 ディレクトリ名 (ブランチ名)]$ "となる
#また、文字色は30m〜37mで順番に、黒、赤、緑、黄、青、マゼンダ、シアン、白
# /uユーザ名、/hホスト名（ローカルpc）、/wディレクトリ名（Wでパスを含まない）
export PS1='\[\e[36m\]\u@\h \[\e[33m\]\w \[\e[31m\]$(__git_ps1 "[%s]")\[\e[0m\]\$ '

#上記の改行付きバージョン
#export PS1='\[\e[32m\]\u@\h \[\e[33m\]\w \[\e[31m\]$(__git_ps1 "[%s]")\[\e[0m\]\n\$ '

#Kaoriya版Vimをターミナル上で呼び出す
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env_LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'



#[[ $(jobs | grep -c vim) != 0 ]] && SUSPEND="[VIM]"

#if [ $(jobs | grep -c vim) != 0 ]; then text="[VIM]"
#fi

