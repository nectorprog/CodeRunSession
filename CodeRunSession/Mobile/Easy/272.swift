import Foundation

var dct = [Character: Int]()

let n = Int(readLine()!)!
for i in 0..<n {
    let input = readLine()!
    let chr = input[input.startIndex]

    if dct.contains(where: {$0.key == chr}) {
        dct[chr]! += 1
    } else {
        dct[chr] = 1
    }
}

let sortedDct = dct.sorted(by: {$0.value > $1.value})
print(sortedDct[0].key)
