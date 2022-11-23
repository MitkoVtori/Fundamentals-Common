package main

import (
    "bufio"
    "fmt"
    "os"
)

func main() {
    reader := bufio.NewReader(os.Stdin)
    fmt.Print("Enter your city: ")
    city, _ := reader.ReadString('\n')
    fmt.Print("You live in " + city)
}