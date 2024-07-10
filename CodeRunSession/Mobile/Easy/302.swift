import Foundation

var matrix = [[Int]]()
let n = Int(readLine()!)!

var elements = Set(1...n*n)

for i in 0..<n {
    var arr = readLine()!.split(separator: " ").compactMap{Int($0)}
    matrix.append(arr)
    
    for j in arr {
        if elements.contains(j) {
            elements.remove(j)
        }
    }
}
for i in 0..<n {
    for j in 0..<n {
        if matrix[i][j] == 0 {
            matrix[i][j] = elements.first!
            elements.remove(elements.first!)
        }
    }
}

for i in 0..<n {
    print(matrix[i].map{String($0)}.joined(separator: " "))
}
