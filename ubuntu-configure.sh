#! /usr/bin/env bash
#
cp /etc/apt/sources.list /etc/apt/sources.list_backup

echo "\
deb http://mirrors.163.com/ubuntu/ precise main restricted universe multiverse 
deb http://mirrors.163.com/ubuntu/ precise-security main restricted universe multiverse 
deb http://mirrors.163.com/ubuntu/ precise-updates main restricted universe multiverse 
deb http://mirrors.163.com/ubuntu/ precise-proposed main restricted universe multiverse 
deb http://mirrors.163.com/ubuntu/ precise-backports main restricted universe multiverse 
deb-src http://mirrors.163.com/ubuntu/ precise main restricted universe multiverse 
deb-src http://mirrors.163.com/ubuntu/ precise-security main restricted universe multiverse 
deb-src http://mirrors.163.com/ubuntu/ precise-updates main restricted universe multiverse 
deb-src http://mirrors.163.com/ubuntu/ precise-proposed main restricted universe multiverse 
deb-src http://mirrors.163.com/ubuntu/ precise-backports main restricted universe multiverse 
" > /tmp/sources.list 
mv /tmp/sources.list  /etc/apt/sources.list

apt-get update

apt-get install -y git mysql-server subversion tmux curl wget zsh python gcc++ 

curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

sudo passwd vagrant

chsh -s `which zsh` 

cd /tmp && wget http://nodejs.org/dist/v0.10.26/node-v0.10.26-linux-x64.tar.gz  && tar -zxvf node-v0.10.26.tar.gz  && cd node-v0.10.26 && ./configure && make && make install 

npm i -g --registry http://r.cnpmjs.org cnpm