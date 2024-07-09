import Foundation

class DSU {
    private var parent: [Int: Int] = [:]

    func find(_ x: Int) -> Int {
        if parent[x] == nil {
            parent[x] = x
        }
        if parent[x] != x {
            parent[x] = find(parent[x]!)
        }
        return parent[x]!
    }

    func union(_ x: Int, _ y: Int) {
        let rootx = find(x)
        let rooty = find(y)
        if rootx != rooty {
            parent[rootx] = rooty
        }
    }
}

let n = Int(readLine()!)!
let dsu = DSU()

for i in 0..<n {
    let input = readLine()!.split(separator: " ").compactMap{Int($0)}
    dsu.union(input[0], input[1])
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let query = readLine()!.split(separator: " ").compactMap{Int($0)}
    let x = query[0]
    let k = query[1]

    let stores = readLine()!.split(separator: " ").compactMap{Int($0)}
    let xRoot = dsu.find(x)

    let filteredStore = stores.filter { dsu.find($0) == xRoot }

    print(filteredStore.isEmpty ? 0 : "\(filteredStore.count) \(filteredStore.map{String($0)}.joined(separator: " "))")
}
