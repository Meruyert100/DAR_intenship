import UIKit

let text = "Hello world! Today is a great day for coding!"

var arrayOfWords = text.components(separatedBy: " ").filter{ $0.lowercased() != $0 }

print(arrayOfWords)

