import Foundation

var num = [Int]()

for _ in 0..<9 {
    num.append(Int(readLine()!)!)
}

outerLoop: for i in 0..<9 {
    for j in i+1..<9 {
        if num.reduce(0,+) - (num[i] + num[j]) == 100 {
            num.remove(at: i)
            num.remove(at: j-1)
            break outerLoop
        }
    }
}

for i in num.sorted() { print(i) }
