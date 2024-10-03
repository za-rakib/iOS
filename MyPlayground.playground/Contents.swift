import UIKit

let arr = [1, 2, 3, 4, 5]

func addOne(n1: Int) -> Int {
    return n1 + 1
}
 
arr.map({
   (n1) in (n1 + 1)
})
