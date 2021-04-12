// packages to be used for project
package main

// imports (each import as a new line with no commas_
// subimports with / instead of . eg: math/rand instead of math.rand
import (
	"fmt"
	"math"
)

// Global constant and variable that can be used by any function
const globalConstant string  = "Hello World"
var globalVariable int  = 100

// Constants
func constants() {
	// define a constant using const <name> <type>
	// once a constant is defined it cannot change its value
	const pi float64 = math.Pi
	fmt.Println(pi)
}

// Variables
func variables() {
	// define variable using var <name> <type>
	var a string = "hey"
	fmt.Println(a)

	// define multiple variable as the same time
	var b,c float64 = 1.2,2.3
	fmt.Println(b,c)

	// shorter notation without var and type by using :=
	d := 1
	fmt.Println(d)
}

// Pointers
func pointers() {
	// define a variable
	val := 20
	fmt.Println(val)

	// pointer of val (where is it in memory)
	pointer := &val
	fmt.Println(pointer)

	// value saved at pointer (aka the actual value, same as val)
	fmt.Println(*pointer)

	// update val either by using variable or using pointer value
	val = 15
	fmt.Println(val)

	*pointer = 12
	fmt.Println(val)
}

// For Loops
func forLoop(){
	// for loop (basic format)
	for i:=0; i<=10; i++ {
		fmt.Println(i)
	}

	// for without condition (like while)
	for {
		fmt.Println("Hey")
		break
	}

	// we can also ure range as in python
	myArray := [5]string{"a","b","c","d","e"}
	for key,value := range myArray {
		fmt.Println(key,value)
	}
}

// If Statement
func ifStatement(i int){
	// If/Else Statement (basic format)
	if i <0 {
		fmt.Println("Negative")
	} else if i > 0 {
		fmt.Println("Postivie")
	} else {
		fmt.Println("Zero")
	}
}

// Switch
func switchStatement(){
	// Switch
	i := 1
	switch i {
	case 1: fmt.Println("One")
	case 2: fmt.Println("two")
	}
}

// Arrays
func arrays(){
	// arrays (defined size lists)
	// array size must be defined before compile
	// once array is defined it cannot change
	// define arrays using var <name> [<size>]<type>
	// by default everything will defined to 0, "", false depending on the type
	var myArray [5]int
	fmt.Println(myArray)

	// length of array
	fmt.Println(len(myArray))

	// change and print specific value
	myArray[0]= 3
	fmt.Println(myArray[0])

	// short notation (we need to use {} in the end to define values)
	myArray2 := [5]string{}
	fmt.Println(myArray2)

	// predefined values
	myArray3 := [5]bool{true, false, false, true, false}
	fmt.Println(myArray3)

	// higher dimension array
	myArray4 := [3][3]int{{1,2,3},{1,2,3},{1,2,3}}
	fmt.Println(myArray4)
}

// Slices
func slices(){
	// slices (undefined size lists)
	// similar to arrays but without specific length
	// we use function make to create slices

	// general case that we don't know size of slice
	// it does not allocate memory and slice points to nil
	var mySlice []int
	fmt.Println(mySlice)

	// case that we do know the size
	mySlice2 := make([]int, 3)
	fmt.Println(mySlice2)

	// populate slice
	mySlice2[0], mySlice2[1], mySlice2[2] = 1,2,3
	fmt.Println(mySlice2)

	// we can increase size of slice by appending new value (not possible to arrays)
	mySlice2 = append(mySlice2, 4, 5, 6)
	fmt.Println(mySlice2)

	// slice syntax similar to python
	fmt.Println(mySlice2[0:2], mySlice2[:2], mySlice2[1:])
}

// Maps
func maps(){
	// maps are like dictionaries in python

	// define a map by using map[<type>]<type> for keys and values respectively
	myMap := map[string]int{}
	fmt.Println(myMap)

	// or define a map by using make and specify type of keys and values
	myMap2 := make(map[string]int)
	fmt.Println(myMap)

	// populate and print
	myMap2["a"] = 0
	myMap2["b"] = 1
	fmt.Println(myMap2["a"])

	// delete element
	delete(myMap2, "a")
	fmt.Println(myMap2)

	// check if element exists
	val, isValPresent := myMap2["c"]
	fmt.Println(val, isValPresent)

	// we can itterate through map using range and for
	for k,v := range myMap2 {
		fmt.Println(k,v)
	}
}


// main function is always executed when compile
// every other function must be called from main
func main() {
	// print statement
	fmt.Println(globalConstant, globalVariable)

	// call functions
	constants()
	variables()
	pointers()
	forLoop()
	ifStatement(5)
	switchStatement()
	arrays()
	slices()
	maps()
}