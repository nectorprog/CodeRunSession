import Foundation

let st = readLine()!

var currentStNumber = ""
var len = 0

for el in st {
    if el.isLetter {
        if let curNum = Int(currentStNumber) {
            len += curNum
        } else {
            len += 1
        }
        currentStNumber = ""
    } else {
        currentStNumber.append(el)
    }
}

print(len)
