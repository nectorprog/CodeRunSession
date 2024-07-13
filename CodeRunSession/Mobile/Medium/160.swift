import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let n = input[0]
let m = input[1]

var inRoad = Array(repeating: 0, count: n + 1)
var outRoad = Array(repeating: 0, count: n + 1)

var roadSet: Set<String> = []
for _ in 0..<m {
    let line = readLine()!
    roadSet.insert(line)
}

for el in roadSet {
    let line = el.split(separator: " ").map { Int($0)!}
    let a = line[0]
    let b = line[1]
    
    if a == b {
        continue
    }
    
    outRoad[a] += 1
    inRoad[b] += 1
}

var rome = -1
for i in 1...n {
    if inRoad[i] == n - 1 && outRoad[i] == 0 {
        rome = i
        break
    }
}

print(rome)
