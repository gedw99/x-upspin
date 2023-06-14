# x-upspin

This is quick start playground for quick prototyping of https://github.com/upspin.

It can also be used to bootstrap Upsin itself.

We assume you have make installed.

## 1. install golang

Using https://github.com/kevincobain2000/gobrew

```
curl -sLk https://raw.githubusercontent.com/kevincobain2000/gobrew/master/git.io.sh | sh
``` 

```
Installed successfully to: /Users/apple/.gobrew/bin/gobrew
============================

gobrew 1.8.5

Usage:

    gobrew use <version>           Install and set <version>
    gobrew ls                      Alias for list
    gobrew ls-remote               List remote versions (including rc|beta versions)

    gobrew install <version>       Only install <version> (binary from official or GOBREW_REGISTRY env)
    gobrew uninstall <version>     Uninstall <version>
    gobrew list                    List installed versions
    gobrew self-update             Self update this tool
    gobrew prune                   Uninstall all go versions except current version
    gobrew version                 Show gobrew version
    gobrew help                    Show this message

Examples:
    gobrew use 1.16                # use go version 1.16
    gobrew use 1.16.1              # use go version 1.16.1
    gobrew use 1.16rc1             # use go version 1.16rc1

    gobrew use 1.16@latest         # use go version latest of 1.16

    gobrew use 1.16@dev-latest     # use go version latest of 1.16, including rc and beta
                                   # Note: rc and beta become no longer latest upon major release

    gobrew use mod                 # use go version listed in the go.mod file
    gobrew use latest              # use go version latest available
    gobrew use dev-latest          # use go version latest avalable, including rc and beta

Installation Path:

    # Add gobrew to your ~/.bashrc or ~/.zshrc
    export PATH="$HOME/.gobrew/current/bin:$HOME/.gobrew/bin:$PATH"
    export GOROOT="$HOME/.gobrew/current/go"

```

``` 
gobrew use latest
==> [Info] Fetching remote versions

==> [Info] Downloading version: 1.20.5 
==> [Info] Downloading from: https://go.dev/dl/go1.20.5.darwin-amd64.tar.gz 
==> [Info] Downloading to: /Users/apple/.gobrew/downloads 
Downloading 100% |███████████████████████████████████████████████████████████| (96/96 MB, 7.0 MB/s)         
==> [Info] Extracting from: /Users/apple/.gobrew/downloads/go1.20.5.darwin-amd64.tar.gz 
==> [Info] Extracting to: /Users/apple/.gobrew/versions/1.20.5 
==> [Success] Untar to /Users/apple/.gobrew/versions/1.20.5
==> [Success] Downloaded version: 1.20.5
==> [Info] Fetching remote versions

==> [Info] Changing go version to: 1.20.5 
==> [Success] Changed go version to: 1.20.5
```

## 2. install the Upspin 

Wil install the binaries in your local .bin folder.

```

make dep-all

mkdir -p /Users/apple/workspace/go/src/github.com/gedw99/x-upsin/.bin
# OS level
# https://github.com/mattn/goreman
go install github.com/mattn/goreman@latest && mv /Users/apple/go/bin/goreman /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
# https://github.com/hashicorp/go-getter
go install github.com/hashicorp/go-getter/cmd/go-getter@v1.7.1 && mv /Users/apple/go/bin/go-getter /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
# https://github.com/a8m/tree
go install github.com/a8m/tree/cmd/tree@latest && mv /Users/apple/go/bin/tree /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
# https://github.com/n2vi/lsr
go install github.com/n2vi/lsr@latest && mv /Users/apple/go/bin/lsr /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
### UPSPIN
# https://github.com/upspin/upspin/tree/master/cmd/cacheserver
go install upspin.io/cmd/cacheserver@latest && mv /Users/apple/go/bin/cacheserver /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
# https://github.com/upspin/upspin/tree/master/cmd/dirserver
go install upspin.io/cmd/dirserver@latest && mv /Users/apple/go/bin/dirserver /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
# https://github.com/upspin/upspin/tree/master/cmd/frontend
go install upspin.io/cmd/frontend@latest && mv /Users/apple/go/bin/frontend /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
# https://github.com/upspin/upspin/tree/master/cmd/keyserver
go install upspin.io/cmd/keyserver@latest && mv /Users/apple/go/bin/keyserver /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
# https://github.com/upspin/upspin/tree/master/cmd/storeserver
go install upspin.io/cmd/storeserver@latest && mv /Users/apple/go/bin/storeserver /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
# https://github.com/upspin/upspin/tree/master/cmd/upbox
go install upspin.io/cmd/upbox@latest && mv /Users/apple/go/bin/upbox /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
# https://github.com/upspin/upspin/tree/master/cmd/upspin-audit
go install upspin.io/cmd/upspin-audit@latest && mv /Users/apple/go/bin/upspin-audit /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
# https://github.com/upspin/upspin/tree/master/cmd/upspin-setupstorage
go install upspin.io/cmd/upspin-setupstorage@latest && mv /Users/apple/go/bin/upspin-setupstorage /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
# https://github.com/upspin/upspin/tree/master/cmd/upspin
go install upspin.io/cmd/upspin@latest && mv /Users/apple/go/bin/upspin /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
# https://github.com/upspin/upspin/tree/master/cmd/upspinfs
go install upspin.io/cmd/upspinfs@latest && mv /Users/apple/go/bin/upspinfs /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
# https://github.com/upspin/upspin/tree/master/cmd/upspinserver
go install upspin.io/cmd/upspinserver@latest && mv /Users/apple/go/bin/upspinserver /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
### EXP 
# https://github.com/upspin/exp/tree/master/cmd/camclient
go install exp.upspin.io/cmd/camclient@latest && mv /Users/apple/go/bin/camclient /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
# https://github.com/upspin/exp/tree/master/cmd/camserver
go install exp.upspin.io/cmd/camserver@latest && mv /Users/apple/go/bin/camserver /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
# https://github.com/upspin/exp/tree/master/cmd/demoserver
go install exp.upspin.io/cmd/demoserver@latest && mv /Users/apple/go/bin/demoserver /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
go-getter github.com/upspin/exp.git//cmd/demoserver /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin//templates/demoserver
2023/06/14 12:29:33 success!
# https://github.com/upspin/exp/tree/master/cmd/fileserver
go install exp.upspin.io/cmd/fileserver@latest && mv /Users/apple/go/bin/fileserver /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
go-getter github.com/upspin/exp.git//cmd/fileserver /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin//templates/fileserver
2023/06/14 12:29:38 success!
# https://github.com/upspin/exp/tree/master/cmd/issueserver
go install exp.upspin.io/cmd/issueserver@latest && mv /Users/apple/go/bin/issueserver /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
go-getter github.com/upspin/exp.git//cmd/issueserver /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin//templates/issueserver
2023/06/14 12:29:48 success!
# https://github.com/upspin/exp/tree/master/cmd/upspin-sharebot
go install exp.upspin.io/cmd/upspin-sharebot@latest && mv /Users/apple/go/bin/upspin-sharebot /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
# https://github.com/upspin/exp/tree/master/cmd/upspin-warden
go install exp.upspin.io/cmd/upspin-warden@latest && mv /Users/apple/go/bin/upspin-warden /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/
# https://github.com/upspin/exp/tree/master/cmd/upsync
go install exp.upspin.io/cmd/upsync@latest && mv /Users/apple/go/bin/upsync /Users/apple/workspace/go/src/github.com/gedw99/x-upspin/.bin/

```

## 3. Boot it all up.

```
make start-all

goreman start
12:19:40 upspinserver | Starting upspinserver on port 5000
12:19:40   demoserver | Starting demoserver on port 5100
12:19:41 upspinserver | 2023/06/14 10:19:41.050432 unable to read configuration: open /Users/apple/upspin/server/serverconfig.json: no such file or directory
12:19:41 upspinserver | 2023/06/14 10:19:41.050771 Configuration file not found. Running in setup mode.
12:19:41 upspinserver | 2023/06/14 10:19:41.050853 https: serving HTTPS on ":443" using Let's Encrypt certificates
12:19:41 upspinserver | 2023/06/14 10:19:41.050890 https: caching Let's Encrypt certificates in /Users/apple/upspin/letsencrypt
12:19:41   demoserver | 2023/06/14 10:19:41.249094 https: serving HTTPS on ":443" using Let's Encrypt certificates
12:19:41   demoserver | 2023/06/14 10:19:41.249198 https: caching Let's Encrypt certificates in /Users/apple/upspin/letsencrypt
12:19:41   demoserver | 2023/06/14 10:19:41.251287 https: listen tcp :443: bind: address already in use
12:19:41   demoserver | Terminating demoserver
^C12:19:44 upspinserver | 2023/06/14 10:19:44.365634 shutdown: process received signal interrupt
12:19:44 upspinserver | 2023/06/14 10:19:44.366059 https: accept tcp [::]:80: use of closed network connection
12:19:44 upspinserver | 2023/06/14 10:19:44.366129 https: accept tcp [::]:443: use of closed network connection
12:19:44 upspinserver | Terminating upspinserver

```

4. TODO: Bind it to a GUI.

- https://m3.material.io/ binding ...
- doc: https://m3.material.io/develop/web
- code: https://github.com/material-components/material-web#readme
  - looks lik they are serious this time.
