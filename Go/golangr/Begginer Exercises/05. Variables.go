package main

import "fmt"

func main() {
   apple := 3.0
   bread := 2.0
   price := apple + bread

   fmt.Printf("")
   fmt.Printf("Price:    %f\n",price)
   vat := price * 0.15
   fmt.Printf("VAT:      %f\n",vat)
   total := vat + price
   fmt.Printf("Total:    %f\n",total)
   fmt.Printf("")
}
