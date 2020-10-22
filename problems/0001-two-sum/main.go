package main

import "fmt"

func twoSum(nums []int, target int) []int {
	hashTable := map[int]int{}
	for i, v := range nums {
		hashTable[v] = i
	}

	for i, v := range nums {
		complement := target - v
		res, ok := hashTable[complement]
		if ok && i != res {
			return []int{i, res}
		}
	}
	return []int{}
}

func main() {
	slices := []int{2, 7, 11, 15}
	fmt.Println(twoSum(slices, 9))
}
