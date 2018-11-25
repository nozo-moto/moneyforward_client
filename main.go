package main

import (
	"os"
	"os/user"

	"github.com/zserge/lorca"
)

func main() {
	user, err := user.Current()
	if err != nil {
		panic(err)
	}

	dir := user.HomeDir + "./lorca-app"
	os.MkdirAll(dir, os.ModePerm)
	ui, err := lorca.New("https://moneyforward.com/", dir, 2000, 1000, "--start-maximized")
	if err != nil {
		panic(err)
	}
	defer ui.Close()
	<-ui.Done()
}
