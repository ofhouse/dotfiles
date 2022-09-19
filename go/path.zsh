# Setup Go
# See: https://jimkang.medium.com/install-go-on-mac-with-homebrew-5fa421fc55f5

export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
