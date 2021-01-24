import UIKit

let text = "Hello world"

let dictCount = text.reduce([:]) { (letter, count) -> [Character:Int] in
    var letter = letter
    let c = letter[count] ?? 0
    letter[count] = c+1
    return letter
}

print(dictCount)
