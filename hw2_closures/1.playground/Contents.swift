import UIKit

let arrayOfArrays: [[Int]] = [[45, 12], [10, 19], [191, 3], [41, 81]]

var sortedPairs = arrayOfArrays.map{ $0.sorted() }

let sorted = sortedPairs.sorted(by: {
     $0[0] > $1[0]
})

print(sorted)
