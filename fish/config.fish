set -xg GOPATH "$HOME/code"
set -xg CDPATH $CDPATH "$GOPATH/src" . ~
set -xg PATH "$GOPATH/bin" $PATH

set -xg GOROOT "$HOME/go"
set -xg PATH "$GOROOT/bin" $PATH


if test -d "/home/linuxbrew/.linuxbrew/bin"
  set -xg PATH "/home/linuxbrew/.linuxbrew/bin" $PATH
end

if test -d "/usr/local/sbin"
  set -xg PATH $PATH "/usr/local/sbin"
end

if test -d "/snap/bin"
  set -xg PATH $PATH "/snap/bin"
end

set -xg EDITOR (which vim)

set fish_greeting ""
