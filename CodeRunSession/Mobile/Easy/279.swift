import Foundation

let n = Int(readLine()!)!
var teams = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var mas = [(capacity: Int, count: Int)]()
let col = Int(readLine()!)!
for i in 0..<col {
    let query = readLine()!.split(separator: " ").compactMap { Int($0) }
    let a = query[0]
    let b = query[1]
    mas.append((capacity: a, count: b))
}

mas.sort(by: { $0.capacity < $1.capacity })

var j = col - 1

while true {
    
    if teams.isEmpty {
        print("Yes")
        break
    }
    
    if j < 0 {
        print("No")
        break
    }
    
    guard let el = teams.last else {
        print("No")
        break
    }
    
    if mas[j].capacity >= el {
        mas[j].count -= 1
        teams.removeLast()
        
    } else {
        print("No")
        break
    }
    
    if mas[j].count == 0 {
        j -= 1
    }
}
