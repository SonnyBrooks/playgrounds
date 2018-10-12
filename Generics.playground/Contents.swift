let intArray = [5, 12, 53, 45, 65, 35, 742, 46, 26]
let abcArray = ["a", "b", "c", "d", "e", "f", "g"]

func findLetterIndex (_ array:[String], letter:String) -> Int? {
    for(index, element) in array.enumerated() {
        if element == letter {
            return index
        }
    }
    
    return nil
}


findLetterIndex(abcArray, letter: "d")

// Make a generic function to handle both arrays defined above.
func findGenericIndex<T:Comparable> (_ array:[T], key:T) -> Int? {
    for(index, element) in array.enumerated() {
        if element == key {
            return index
        }
    }
    
    return nil
}

findGenericIndex(abcArray, key: "f")
findGenericIndex(intArray, key: 742)
