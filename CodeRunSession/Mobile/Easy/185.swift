import Foundation

func calculateDissatisfaction(_ neckRadius: Int, _ collarRadius: Int) -> Int {
    let difference = collarRadius - neckRadius
    if difference < 0 {
        return 0
    } else if difference <= 100 {
        return difference / 2
    } else {
        return 30
    }
}

let n = Int(readLine()!)!
let neckRadiuses = readLine()!.split(separator: " ").map { Int($0)! }
let collarRadiuses = readLine()!.split(separator: " ").map { Int($0)! }

var unhappySum = [Int](repeating: 0, count: n)

for i in 0..<n {
    var crClone = Array(collarRadiuses[n-i..<n] + collarRadiuses[0..<n-i])
    for j in 0..<n {
        unhappySum[i] += calculateDissatisfaction(neckRadiuses[j], crClone[j])
    }
}

var minVal = unhappySum[0]
var minIndex = 0

for i in 0..<n {
    if unhappySum[i] < minVal {
        minVal = unhappySum[i]
        minIndex = i
    }
}

print(minIndex+1, minVal)