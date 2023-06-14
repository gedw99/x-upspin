# x-upspin

This is quick start playground for quick prototyping of https://github.com/upspin.

It can also be used to bootstrap Upsin itself.

We assume you have make installed.

1. install golang using https://github.com/kevincobain2000/gobrew

```
curl -sLk https://raw.githubusercontent.com/kevincobain2000/gobrew/master/git.io.sh | sh

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

2. install the Upspin binaries in your local .bin folder.
```

make dep-all

```

3. Boot it all up.

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
