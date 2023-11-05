import UIKit

// ---------------------- Video ----------------------

let names = ["Zhoga", "Gaga", "Maga", "Zaga", "braga"]

let s = names.sorted()

s

let t1 = names.sorted { (s1: String, s2: String) in
    return s1 < s2
}

let t2 = names.sorted { (s1, s2) in return s1 < s2 }

let t3 = names.sorted { (s1, s2) in s1 < s2 }

let t4 = names.sorted { (s1, s2) in s1.count < s2.count }

let p1 = names.sorted(by: { $0 < $1 })

let p2 = names.sorted(by: { $0.count < $1.count })

func makeTranslator(str: String) -> (String) -> (String) {
    return { (name: String) -> String in return (str + " " + name) }
}

var eng = makeTranslator(str: "Hello!")

eng("John")

var rus = makeTranslator(str: "Здарова!")

rus("Заебал")

// ---------------------- HW ----------------------

// Сортировка массива. Возьмем массив чисел

let arr = [1, 2342, 12, 23, 40, 0, 400, 500]

// Сортируем по возрастанию
let srt1 = arr.sorted(by: { $0 < $1 })

for el in srt1 {
    print(el)
}

// Сортируем по убыванию
let srt2 = arr.sorted(by: { $0 > $1 })

for el in srt2 {
    print(el)
}


// Метод, который кладет имена в массив, а массив сортируем по длине имен
func appendAndSort(array: [String], name: String) -> [String] {
    var copyArr = array
    
    copyArr.append(name)
    
    return copyArr.sorted(by: { $0.count < $1.count })
}

var names1 = ["Gasan"]

names1 = appendAndSort(array: names1, name: "Lev")
names1 = appendAndSort(array: names1, name: "Kirill")
names1 = appendAndSort(array: names1, name: "Papich")

print(names1)

// Невнятное описания задачи. Будем принимать ключи, если такие есть в словаре, выведем их, если какого-то ключа нет, то просто сообщим об этом
var dict = ["Honda": 2000, "Mazda": 2500, "Nissan": 4000, "Toyota": 3000]

func printKeysAndValues(keys: [String]) {
    for el in keys {
        if dict[el] == nil {
            print("\(el) нет в базе")
            continue
        }
        
        print("\(el) - \(dict[el]!)")
    }
}

printKeysAndValues(keys: ["Honda", "Nissan", "Acura"])

// Функция для наполнения пустых массивов (числовой и строковый)
func fillArrays(iArr: inout [Int], sArr: inout [String]) {
    if iArr.isEmpty {
        iArr.append(Int.random(in: 0...100))
        print(iArr)
    } else {
        print("Array of integers is not empty")
    }
    
    if sArr.isEmpty {
        sArr.append(String(Int.random(in: 0...100)))
        print(sArr)
    } else {
        print("Array of string is not empty")
    }
}

var emtArri = [Int]()
var emtArrs = [String]()

fillArrays(iArr: &emtArri, sArr: &emtArrs)
