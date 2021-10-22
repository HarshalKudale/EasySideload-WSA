// +build windows
package main

import (
	"fmt"
	"os"
	"os/exec"
)

func main() {

	fmt.Println("Installing the following APK:")
	fmt.Println(os.Args[len(os.Args)-1])

	fmt.Println("Please wait, installation might take a moment.")

	c := exec.Command("cmd", "/C", "installer.bat", os.Args[len(os.Args)-1])

	if err := c.Run(); err != nil {
		fmt.Println("Installation did not succeed. Sorry for that. ", err)
	}

	fmt.Println("Seems like we are all gucci. Press any key to continue.")
	fmt.Scanln()
}
