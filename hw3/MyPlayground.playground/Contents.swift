import UIKit

// ------------------------- Video -------------------------

var str1 = "String"
var str2: String = "String"

var a = ""
var b = String()

a = "Hello"
b = "Guys"

print(a + " " + b)

var number = 10

print("number is \(number)")

var char: Character = "x"

//str1 + String(char)

str1.append(char)

for c in "Hello Msx"{
    print(c)
}

a += b

var peremString = "dffsfs"

//peremString.characters.count

peremString.hasPrefix("f")
peremString.hasSuffix("u")

if peremString.isEmpty {
    print("Is Empty")
} else {
    print("No Empty")
}

// ------------------------- Video -------------------------
// Строки и цены на ассортимент товаров у меня
var newStr1 = "New string"
var newStr2 = "G&ON"

var balance = 1000
var choclate = 200
var pivas = 100
var bugatti = 10000000000
var kfsBucket = 800
var hapka = 2400

// Конкатенация и интерполяция строк
func checkBalance(balance b: Int, price p: Int) -> Bool {
    if b - p < 0 {
        print("На вашем счете недостаточно средств (\(b) огурчиков)")
        return false
    }
    
    print("Платеж на сумму " + String(p) + " одобрен")
    return true
}

func buyItem(balance b: Int, itemPrice ip: Int) {
    var enoughMoney = checkBalance(balance: b, price: ip)
    
    if enoughMoney {
        balance = b - ip
        print("Платеж проведен успешно. Остаток на балансе \(balance) помидоров")
    } else {
        print("Денег не хватило :( сегодня без хапки")
    }
}

buyItem(balance: balance, itemPrice: pivas)
buyItem(balance: balance, itemPrice: choclate)
buyItem(balance: balance, itemPrice: hapka)

// Колхозный реверс строки
var st = "Улыбок тебе дед Макар"
var reverseString = ""

for c in st {
    reverseString = String(c) + reverseString
}

print(reverseString)

