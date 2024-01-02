import UIKit

// Расширить String, чтобы могли получать целочисленное значение из строки
extension String {
    var intVersion: Int {
        if let res = Int(self) {
            return res
        } else {
            return 0
        }
    }
}

var a = "smth12"
var b = "23"

print(a.intVersion)
print(b.intVersion)

// Расширить Int и добавить 3 метода возведение в квадрат, куб, степень
extension Int {
    func secondDegree() -> Int {
        return self * self
    }
    
    func thirdDegree() -> Int {
        return self * self * self
    }
    
    func fourthDegree() -> Int {
        return self * self * self * self
    }
}

var num = 2
print(num.secondDegree())
print(num.thirdDegree())
print(num.fourthDegree())

// Расширить еще 3 структуры на свой вкус так, чтобы появилось какое-то удобство у расширение
// Делаем заглавной только первую букву
extension String {
    func capitalizeOnlyFirstLetter() -> String {
        let firstLetter = self.prefix(1).uppercased()
        let otherLetters = self.dropFirst().lowercased()
        return firstLetter + otherLetters
    }
}

print("John Smith".capitalizeOnlyFirstLetter())

extension Int {
    var parity: String { return self % 2 == 0 ? "Even" : "Odd" }
}

var oddNum = 3
var evenNum = 8
print("\(oddNum) is \(oddNum.parity)")
print("\(evenNum) is \(evenNum.parity)")

extension String {
    func repeatString(n: Int) {
        for _ in 0..<n {
            print(self)
        }
    }
}

var str = "Hi"
str.repeatString(n: 3)

// Добавьте свойство (проперти), которое возвращает количество символов в числе
extension Int {
    var quantityOfSymbols: Int {
        var count = 0
        var n = self
        while (n > 0) {
            n /= 10
            count += 1
        }
        return count
    }
}

print(1234.quantityOfSymbols)

// Добавить метод который говорит число положительное или отрицательное
extension Int {
    func isNumPositive() -> Bool {
        return self > 0
    }
}

var n1 = -5
var n = 5
print(n1.isNumPositive())
print(n.isNumPositive())
