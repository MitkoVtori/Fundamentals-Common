package main

import "fmt"

func main() {
	sum := 1

	for sum < 100 {
		sum += 5
	}
	fmt.Println(sum)
}
