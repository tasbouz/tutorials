package main

import "fmt"

// define our own functions (we need to specify types of inputs and outputs)
func myFunction(a, b int, c string) (string, int) {
	sum := a + b
	return c, sum
}

// for variadic function (with no specific number of inputs)
func myVariadicFunction(numbers... int) (int) {
	total := 0
	for _, num := range numbers {
		total += num
	}
	return total
}

// a function that uses itself (eg Factorial)
func myRecursionFunction(n int) int {
	if n <= 1 {
		return 1
	} else {
		return n * myRecursionFunction(n-1)
	}
}

// function that returns an anonymous function that does not return anything
func returnAnonymousFunctionWithNoReturn() func(string) {
	return func(msg string){
		fmt.Println(msg)
	}
}

// function that returns an anonymous function that returns an integer
func returnAnonymousFunctionWithReturn() func() int {
	i := 0
	return func() int {
		i++
		return i
	}
}

func main() {
	// call our own functions
	fmt.Println(myFunction(1,2 ,"Hey There"))
	fmt.Println(myVariadicFunction(1,2,3,4,5))
	fmt.Print(myRecursionFunction(4))

	// anonymous functions (can be called once upon creation
	func(msg string){
		fmt.Println(msg)
	}("Hello There!")

	// store the result of returnAnonymousFunctionWithNoReturn which is an anonymous function to a variable
	printFunction := returnAnonymousFunctionWithNoReturn()
	printFunction("Hello There!")

	// store the result of returnAnonymousFunction which is an anonymous function to a variable
	// now i form returnAnonymousFunctionWithReturn is accessible as a global variable
	nextInteger := returnAnonymousFunctionWithReturn()
	fmt.Print(nextInteger())
}