package main

import "fmt"

var x = 7

func example() {
    fmt.Println(x)
}

func main() {
    fmt.Println(x)
    example()
}
