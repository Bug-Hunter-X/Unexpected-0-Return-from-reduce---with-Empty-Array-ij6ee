let array = [1, 2, 3]
let sum = array.reduce(0, +)
print(sum)

let emptyArray: [Int] = []
let emptyArraySum = emptyArray.reduce(0) { $0 + $1 }
print(emptyArraySum) // Prints 0

let safeSum = emptyArray.isEmpty ? 0 : emptyArray.reduce(0) { $0 + $1 }
print(safeSum) // Prints 0 

// More Robust Solution using optional binding
let saferSum: Int?
if let first = array.first {
    saferSum = array.reduce(first) {$0 + $1}
} else {
    saferSum = nil
}
print(saferSum ?? 0)