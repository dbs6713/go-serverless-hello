package main

import (
	"fmt"
	log "github.com/Sirupsen/logrus"
	"os"
)

var (
	Version string
	Build   string
)

func init() {
	f, err := os.OpenFile(
		"serverless-hello.log",
		os.O_APPEND|os.O_CREATE|os.O_RDWR,
		0666)
	if err != nil {
		fmt.Printf("ERROR: opening: %v", err)
	}
	log.SetOutput(f)
}

func main() {
	log.Info("sending response string")
	fmt.Print("Content-Type: text/html\n\n")
	fmt.Print("<p>Hello from <b>serverless-hello</b></p>")
	fmt.Print("<p>Version: ", Version, "</p>")
	fmt.Print("<p>Build time: ", Build, "</p>")
}
