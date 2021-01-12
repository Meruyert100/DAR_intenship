import UIKit

var arr = [56, 88, 91, 34, -4, 5, 32, 66, 6, 54]

var sortedArr = arr

for _ in 0...sortedArr.count {
    for value in 1...sortedArr.count - 1 {
        if sortedArr[value-1] > sortedArr[value] {
            let largerValue = sortedArr[value-1]
            sortedArr[value-1] = sortedArr[value]
            sortedArr[value] = largerValue
        }
    }
}

print(sortedArr)

