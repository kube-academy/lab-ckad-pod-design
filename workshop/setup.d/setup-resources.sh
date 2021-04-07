#!/bin/bash

cat >> ~/.inputrc << EOF
"\e[A": history-search-backward
"\e[B": history-search-forward
EOF

cat >> ~/.bashrc << EOF
set -o vi
export DR="--dry-run=client -oyaml"
complete -F __start_kubectl k
EOF

cat >> ~/.vimrc << EOF
set tabstop=2 softtabstop=2 shiftwidth=2
set number expandtab ruler autoindent smartindent
syntax enable
filetype plugin indent on
EOF

# install kubens/kubectx ..
git clone https://github.com/ahmetb/kubectx.git ~/.kubectx
mkdir ~/bin
ln -s ~/.kubectx/kubectx ~/bin/
ln -s ~/.kubectx/kubens ~/bin/
