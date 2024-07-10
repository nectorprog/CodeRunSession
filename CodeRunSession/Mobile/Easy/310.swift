import Foundation

let st = readLine()!

var currentStNumber = ""
var len = -1

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

if let curNum = Int(currentStNumber) {
    len += curNum
} else {
    len += 1
}

print(len)
