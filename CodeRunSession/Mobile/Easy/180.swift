import Foundation

let n = Int(readLine()!)!
let str = readLine()!
let lst = readLine()!.split(separator: " ").compactMap({Int($0)})

var maxRazn = lst[0]
var maxRaznI = 0

for i in 1..<n {
    if lst[i] - lst[i-1] >= maxRazn {
        maxRazn = lst[i] - lst[i-1]
        maxRaznI = i
    }
}

var strIndex = str.index(str.startIndex, offsetBy: maxRaznI)

var strEl = str[strIndex]

print(strEl)
