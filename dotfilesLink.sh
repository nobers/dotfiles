 #!/bin/sh
 #----------------------------------------------------
 # gitで新規にファイルを追加したい場合はここに、
 # シンボリックリンクを記述する
 #----------------------------------------------------

 #----------------------------------------------------
 # 他のPCへクローンする場合は、このシェルを実行して、
 # 自PCへシンボリックリンクを貼る
 #----------------------------------------------------
 
 ln -sf ~/dotfiles/.vimrc ~/.vimrc
 ln -sf ~/dotfiles/.gvimrc ~/.gvimrc
 ln -sf ~/dotfiles/.bashrc ~/.bashrc
 ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
 ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
