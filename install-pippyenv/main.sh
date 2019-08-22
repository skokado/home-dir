#!/bin/bash
### check permisson of sudo.
sudo cat /etc/shadow > /dev/null 2>&1
if [ $? -ne 0 ] ; then
    echo "Error. you don't have a permission of sudo."
    exit 1
fi

### install pip
echo "install pip:"
curl -kL https://bootstrap.pypa.io/get-pip.py | sudo python

### upgrade pip
echo "upgrade pip:"
pip install --upgrade pip

### install pyenv
echo "install pyenv:"
sudo yum -y install zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel xz xz-devel libffi-devel findutils
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# edit .bash_profile
echo '### for pyenv.' >> ~/.bash_profile
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

### upgrade pyenv
echo "update pyenv:"
git clone git://github.com/yyuu/pyenv-update.git ~/.pyenv/plugins/pyenv-update
pyenv update

# Logout to relogin
echo 'Please re-login to apply profiles !!'
