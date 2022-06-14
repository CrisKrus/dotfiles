#!/bin/bash

sudo apt install -y zlib-devel libssl-dev libbz2-dev build-essential libffi-dev

curl https://pyenv.run | bash

echo '' >> ~/.bashrc
echo '# PYENV' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc

pyenv install 3.10.4
pyenv global 3.10.4

python -m pip install -U pip

pip install pipenv
