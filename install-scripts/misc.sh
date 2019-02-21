#GO installation:
GO_VERSION=1.11.5
wget https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz
tar -C . -xzf go${GO_VERSION}.linux-amd64.tar.gz
sudo mv go /usr/local/
rm -rf go go${GO_VERSION}.linux-amd64.tar.gz

