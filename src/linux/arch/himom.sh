function install(){
    pacman -S git
}

function JS(){
    pacman -S nodejs npm
    git clone https://github.com/hi-mom-org/js.git
    cd js
    node .
}

function python(){
    pacman -S python 3.10.4-1
    git clone https://github.com/hi-mom-org/python.git
    cd python
    python3 main.py
}

function go(){
    curl -L https://git.io/vQhTU | bash
    git clone https://github.com/hi-mom-org/go.git
    cd go
    go run main.go
}