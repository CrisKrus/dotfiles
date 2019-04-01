export ZSH="/home/criskrus/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    command-not-found
    history
    sudo
    aterminal # need to be installed
    git
    # python pip django
    docker
    mvn
    npm
    ng
)

source $ZSH/oh-my-zsh.sh
