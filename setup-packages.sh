VIRTUALENV_FOLDER=~/.virtualenvs/crosscompute

if [ ! -d $VIRTUALENV_FOLDER ]; then
    virtualenv $VIRTUALENV_FOLDER -p $(which python3)
    source $VIRTUALENV_FOLDER/bin/activate
fi

pip install -U \
    ansible-lint \
    black \
    flake8 \
    vim-vint

# curl -sL https://rpm.nodesource.com/setup_11.x | bash -

npm install -g \
    bash-language-server \
    dockerfile_lint \
    eslint \
    fixjson \
    markdownlint