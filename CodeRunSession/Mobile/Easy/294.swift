import Foundation

let n = Int(readLine()!)!
let nums = Set(readLine()!.split(separator: " ").compactMap{Int($0)})

print(nums.reduce(0, +))
