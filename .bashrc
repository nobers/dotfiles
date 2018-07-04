#!/bin/bash

#ターミナルにgitブランチ名等を表示させるシェルを呼び出す
source ~/.git-prompt.sh
source ~/.git-completion.bash

#ターミナルにブランチ名を表示するために必要
GIT_PS1_SHOWDIRTYSTATE=true

#以下のようにすると、"[ユーザ名@ホスト名 ディレクトリ名 (ブランチ名)]$ "となる
# /uユーザ名、/hホスト名（ローカルpc）、/wディレクトリ名（Wでパスを含まない）
export PS1='\[\e[38;5;208m\]$(jobs -p)\[\e[36m\]\u@\h \[\e[38;5;226m\]\w \[\e[38;5;196m\]$(__git_ps1 "[%s]")\[\e[0m\]\$ \[\e[38;5;208m\]>>> \[\e[0m\]'

#上記の改行付きバージョン
#export PS1='\[\e[32m\]\u@\h \[\e[33m\]\w \[\e[31m\]$(__git_ps1 "[%s]")\[\e[0m\]\n\$ '

#Kaoriya版Vimをターミナル上で呼び出す
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env_LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

#ターミナル256色表示
export TERM=xterm-256color






#export PS1='\[\e[35m\]$(jobs -p)\[\e[36m\]\u@\h \[\e[33m\]\w \[\e[31m\]$(__git_ps1 "[%s]")\[\e[0m\]\$ '


#export PS1='\[\e[38;5;208m\]$(jobs -p)\[\e[36m\]\u@\h \[\e[38;5;226m\]\w \[\e[38;5;196m\]$(__git_ps1 "[%s]")\[\e[0m\]\$ \[\e[38;5;208m\]>>> \[\e[0m\]'

#export PS1='\[\e[38;5;208m\]$(jobs -p)\[\e[36m\]\u@\h \[\e[38;5;226m\]\w \[\e[38;5;196m\]$(__git_ps1 "[%s]")\[\e[0m\]\$ \[\e[38;5;196m\]>\[\e[38;5;226m\]>\[\e[38;5;46m\]> \[\e[0m\]'

