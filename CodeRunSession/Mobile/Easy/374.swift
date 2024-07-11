import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

for el in input{
    var moreCounter = 0
    var lessCounter = 0
    
    for el2 in input {
        if el <= el2 {
            moreCounter += 1
        }
        if el >= el2 {
            lessCounter += 1
        }
    }
    if moreCounter >= 2 && lessCounter >= 2 {
        print(el)
        break
    }
}
