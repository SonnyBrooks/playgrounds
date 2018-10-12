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

func findGenericIndex<T:Comparable> (_ array:[T], letter:T) -> Int? {
    for(index, element) in array.enumerated() {
        if element == letter {
            return index
        }
    }
    
    return nil
}

findGenericIndex(abcArray, letter: "f")
findGenericIndex(intArray, letter: 742)
