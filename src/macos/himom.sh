#!/bin/bash

function install(){
    echo "Installing homebrew and xcode command line tools..."
    sudo xcode-select --install
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "export PATH=/usr/local/bin:$PATH" >> ~/.bash_profile && source ~/.bash_profile
    echo "Installing git!"
    brew install git
}

function JS(){
    brew install node
    git clone https://github.com/hi-mom-org/js.git
    cd js
    node .
}

function python(){
    brew install python@3.10
    git clone https://github.com/hi-mom-org/python.git
    cd python
    python3 main.py
}

function go(){
    brew install go
    git clone https://github.com/hi-mom-org/go.git
    cd go
    go run main.go
}

"$@"
