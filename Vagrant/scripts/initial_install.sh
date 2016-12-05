#!/usr/bin/env bash

sudo apt-get install -y git
go get github.com/exercism/cli/exercism
cd $GOPATH/src/github.com/exercism/cli
go get -t ./...

go install github.com/exercism/cli/exercism
