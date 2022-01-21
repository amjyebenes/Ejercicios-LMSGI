package main

import "fmt"

func imprimirArray(array []int) {
	for i := 0; i < len(array); i++ {
		fmt.Println(array[i])
	}
}

func main() {
	fmt.Print("Hola mundo")
	fmt.Println()
	numeros := [5]int{2, 3, 4, 2, 5}

	var array []int = numeros[0:5]

	imprimirArray(array)
}
