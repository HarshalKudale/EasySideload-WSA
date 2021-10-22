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

	fmt.Println("Connecting to ADB.")

	//adb connect 127.0.0.1:58526
	c := exec.Command("adb", "connect", "127.0.0.1:58526")

	if err := c.Run(); err != nil {
		fmt.Println("Miserably failed to connect to ADB. Ensure you have Widows 11 installed, and WSA enabled. Turn on debug mode. For more information, check https://bit.ly/wsa-win11", err)
		fmt.Println("Press enter to close this window.")
		fmt.Scanln()
		return
	}

	//adb install %1
	fmt.Println("Installing the package.")
	c2 := exec.Command("adb", "install", os.Args[len(os.Args)-1])

	if err := c2.Run(); err != nil {
		fmt.Println("Was not able to install the pacakge. check https://bit.ly/wsa-win11", err)
		fmt.Println("Press enter to close this window.")
		fmt.Scanln()
		return
	}

	fmt.Println("Seems like we are all gucci. Press any key to continue.")
	fmt.Scanln()
}
