let abcArray = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
let intArray = Array(0...1000000)

func linearSearch<T:Comparable> (_ array:[T], key:T) -> Int? {
    var iterations = 0
    for(index, element) in array.enumerated() {
        if element == key {
            print("Linear Iterations: \(iterations)")
            return index
        }
        iterations += 1
    }
    
    return nil
}

linearSearch(abcArray, key: "q")
linearSearch(intArray, key: 513948)

//Binary Search
func binarySearch<T:Comparable> (_ array:[T], key:T) -> Int? {
    var range = 0 ..< array.count
    var iterations = 0
    
    while range.startIndex < range.endIndex {
        let midpoint = range.startIndex + (range.endIndex - range.startIndex) / 2
        if(array[midpoint] == key) {
            print("Binary Iterations: \(iterations)")
            return midpoint
        } else if (array[midpoint] < key){
            range = midpoint + 1 ..< range.endIndex
        } else {
            range = 0 ..< midpoint
        }
        iterations += 1
    }
    
    return nil
}

binarySearch(abcArray, key: "q")
binarySearch(intArray, key: 513948)

