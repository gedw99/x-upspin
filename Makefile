
BIN_FSPATH=$(PWD)/.bin
export PATH:=$(BIN_FSPATH):$(PATH)

CONFIG_FSPATH=$(HOME)/upspin

print:

bin:
	mkdir -p $(BIN_FSPATH)
bin-del:
	rm -rf $(BIN_FSPATH)

dep-all: dep-1 dep-2 dep-3

dep-1: bin

	# OS level

	# https://github.com/mattn/goreman
	go install github.com/mattn/goreman@latest && mv $(GOPATH)/bin/goreman $(BIN_FSPATH)

	# https://github.com/hashicorp/go-getter
	go install github.com/hashicorp/go-getter/cmd/go-getter@v1.7.1 && mv $(GOPATH)/bin/go-getter $(BIN_FSPATH)

	# https://github.com/a8m/tree
	go install github.com/a8m/tree/cmd/tree@latest && mv $(GOPATH)/bin/tree $(BIN_FSPATH)


	# https://github.com/n2vi/lsr
	go install github.com/n2vi/lsr@latest && mv $(GOPATH)/bin/lsr $(BIN_FSPATH)

dep-2: bin

	### UPSPIN

	# https://github.com/upspin/upspin/tree/master/cmd/cacheserver
	go install upspin.io/cmd/cacheserver@latest && mv $(GOPATH)/bin/cacheserver $(BIN_FSPATH)

	# https://github.com/upspin/upspin/tree/master/cmd/dirserver
	go install upspin.io/cmd/dirserver@latest && mv $(GOPATH)/bin/dirserver $(BIN_FSPATH)

	# https://github.com/upspin/upspin/tree/master/cmd/frontend
	go install upspin.io/cmd/frontend@latest && mv $(GOPATH)/bin/frontend $(BIN_FSPATH)

	# https://github.com/upspin/upspin/tree/master/cmd/keyserver
	go install upspin.io/cmd/keyserver@latest && mv $(GOPATH)/bin/keyserver $(BIN_FSPATH)

	# https://github.com/upspin/upspin/tree/master/cmd/storeserver
	go install upspin.io/cmd/storeserver@latest && mv $(GOPATH)/bin/storeserver $(BIN_FSPATH)

	# https://github.com/upspin/upspin/tree/master/cmd/upbox
	go install upspin.io/cmd/upbox@latest && mv $(GOPATH)/bin/upbox $(BIN_FSPATH)

	# https://github.com/upspin/upspin/tree/master/cmd/upspin-audit
	go install upspin.io/cmd/upspin-audit@latest && mv $(GOPATH)/bin/upspin-audit $(BIN_FSPATH)

	# https://github.com/upspin/upspin/tree/master/cmd/upspin-setupstorage
	go install upspin.io/cmd/upspin-setupstorage@latest && mv $(GOPATH)/bin/upspin-setupstorage $(BIN_FSPATH)

	# https://github.com/upspin/upspin/tree/master/cmd/upspin
	go install upspin.io/cmd/upspin@latest && mv $(GOPATH)/bin/upspin $(BIN_FSPATH)

	# https://github.com/upspin/upspin/tree/master/cmd/upspinfs
	go install upspin.io/cmd/upspinfs@latest && mv $(GOPATH)/bin/upspinfs $(BIN_FSPATH)

	# https://github.com/upspin/upspin/tree/master/cmd/upspinserver
	go install upspin.io/cmd/upspinserver@latest && mv $(GOPATH)/bin/upspinserver $(BIN_FSPATH)

dep-3: bin

	### EXP 

	# https://github.com/upspin/exp/tree/master/cmd/camclient
	go install exp.upspin.io/cmd/camclient@latest && mv $(GOPATH)/bin/camclient $(BIN_FSPATH)

	# https://github.com/upspin/exp/tree/master/cmd/camserver
	go install exp.upspin.io/cmd/camserver@latest && mv $(GOPATH)/bin/camserver $(BIN_FSPATH)

	# https://github.com/upspin/exp/tree/master/cmd/demoserver
	go install exp.upspin.io/cmd/demoserver@latest && mv $(GOPATH)/bin/demoserver $(BIN_FSPATH)
	go-getter github.com/upspin/exp.git//cmd/demoserver $(BIN_FSPATH)/templates/demoserver

	# https://github.com/upspin/exp/tree/master/cmd/fileserver
	go install exp.upspin.io/cmd/fileserver@latest && mv $(GOPATH)/bin/fileserver $(BIN_FSPATH)
	go-getter github.com/upspin/exp.git//cmd/fileserver $(BIN_FSPATH)/templates/fileserver

	# https://github.com/upspin/exp/tree/master/cmd/issueserver
	go install exp.upspin.io/cmd/issueserver@latest && mv $(GOPATH)/bin/issueserver $(BIN_FSPATH)
	go-getter github.com/upspin/exp.git//cmd/issueserver $(BIN_FSPATH)/templates/issueserver

	# https://github.com/upspin/exp/tree/master/cmd/upspin-sharebot
	go install exp.upspin.io/cmd/upspin-sharebot@latest && mv $(GOPATH)/bin/upspin-sharebot $(BIN_FSPATH)

	# https://github.com/upspin/exp/tree/master/cmd/upspin-warden
	go install exp.upspin.io/cmd/upspin-warden@latest && mv $(GOPATH)/bin/upspin-warden $(BIN_FSPATH)

	# https://github.com/upspin/exp/tree/master/cmd/upsync
	go install exp.upspin.io/cmd/upsync@latest && mv $(GOPATH)/bin/upsync $(BIN_FSPATH)

start-all:
	goreman start

dep-tree:
	tree $(BIN_FSPATH)

conf-tree:
	tree $(CONFIG_FSPATH)

lsr:
	lsr



