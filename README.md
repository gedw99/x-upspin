# x-upspin

playground for quick prototyping of https://github.com/upspin 

its assumes you have make.

1. install golang using https://github.com/kevincobain2000/gobrew

```
curl -sLk https://raw.githubusercontent.com/kevincobain2000/gobrew/master/git.io.sh | sh
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
