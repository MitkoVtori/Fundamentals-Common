func testFunction() {
	let someValue:Int? = 5
	guard let temp = someValue else {
		return
	}
	print("It has some value \(temp)")
}

testFunction()
