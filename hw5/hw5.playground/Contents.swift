import UIKit

// ------------------------- Video -------------------------
//let oneTuple: (Int, String, Double, Bool) = (1, "String", 36.6, false)

let oneTuple = (1, "String", 36.6, false)

let (num, str, num2, bval) = oneTuple

num
str


let (_, _, c, _) = oneTuple

c

oneTuple.0
oneTuple.1
oneTuple.2

let tuple = (one: 1, name: "Gasan", boolValue: true)

tuple.one
tuple.name

//let name1 = "Sber"; let name2 = "Tink"; let name3 = "Alfa"

//let (name1, name2, name3) = ("Sber", "Tink", "Alfa")

let nameTuples = (name1: "Sber", name2: "Tink", name3: "Alfa")

nameTuples.name1

print(nameTuples)

let nameNames = "Jack"
let age = 28

print("User = \(nameNames), age = \(age)")

print((nameNames, age))

// ------------------------- HW -------------------------

let monthsInRussian = ((number: 1, name: "Январь", days: 31),
                       (number: 2, name: "Февраль", days: 28),
                       (number: 3, name: "Март", days: 31),
                       (number: 4, name: "Апрель", days: 30),
                       (number: 5, name: "Май", days: 31),
                       (number: 6, name: "Июнь", days: 30),
                       (number: 7, name: "Июль", days: 31),
                       (number: 8, name: "Август", days: 31),
                       (number: 9, name: "Сентябрь", days: 30),
                       (number: 10, name: "Октябрь", days: 31),
                       (number: 11, name: "Ноябрь", days: 30),
                       (number: 12, name: "Декабрь", days: 31))

let monthsInEnglish = ((number: 1, name: "January", days: 31),
                       (number: 2, name: "February", days: 28),
                       (number: 3, name: "March", days: 31),
                       (number: 4, name: "April", days: 30),
                       (number: 5, name: "May", days: 31),
                       (number: 6, name: "June", days: 30),
                       (number: 7, name: "July", days: 31),
                       (number: 8, name: "August", days: 31),
                       (number: 9, name: "September", days: 30),
                       (number: 10, name: "October", days: 31),
                       (number: 11, name: "November", days: 30),
                       (number: 12, name: "December", days: 31))

let laptopConfig = (name: "MacBook Pro", cpu: "Intel Core i7", ramCapacityGB: 32, localStorageCapacityGB: 500, integratedGraphics: true, discreteGraphics: true)

let auto = (brand: "Honda", model: "Civic", generation: 5, mileage: 390000, crushes: false, engine_capacity: 1.5, hs: 100)

let album = (name: "Bandana 2", artists: ["Kizaru", "Big Baby Tape"], numberOfTracks: 12, year: 2023, label: "KOALA MUSIC")

// Есть такой вариант вывести весь кортеж
print(laptopConfig)

// Есть вот такой вариант напечатать конкретные значения
print(auto.brand, auto.1)

// Еще один способ напечатать элемент
print(monthsInEnglish.0.name)

// Посчитаем количество элементов в кортеже
let count = Mirror(reflecting: monthsInEnglish).children.count

// выведем все элементы кортежа
//for i in 0..<count {
//    print(monthsInEnglish.i.hashValue, monthsInEnglish.i.1, monthsInEnglish.)
//}

let emptyTuple = ()
