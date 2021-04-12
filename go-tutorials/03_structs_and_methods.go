package main

import "fmt"

const kg_to_lbs = 2.204

// struct is creating our own structure (like object in a class)
type dog struct{
	colour string
	height float64
	weight float64
}

// a value receiver method associated to dog struct (creates new values)
func (d dog) kilos_to_pounds() float64 {
	return d.weight * kg_to_lbs
}

// a pointer receiver method associated to dog struct (modifies attributes)
func (d *dog) update_weight(new_weight float64) {
	d.weight = new_weight
}

func main() {
	// create an instance of object dog (we can also skip the names of arguments)
	albert := dog{colour:"black", height:0.5, weight:50}

	// another instance
	maxaras := dog{"grey", 0.4, 40}

	// access attributes
	fmt.Println(albert.weight, maxaras.weight)

	// turn kilos to pounds by using value receiver method
	fmt.Println(albert.kilos_to_pounds(), maxaras.kilos_to_pounds())
	
	// update albert's weight by using pointer receiver method
	albert.update_weight(55)
	fmt.Println(albert.weight)
}