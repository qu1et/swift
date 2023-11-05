import UIKit

// -------------------- Video --------------------

var date: String?

date = "30.02.2017"

if date != nil {
    print("Текущая дата: \(date!)")
} else {
    print("Текущая дата не была получена")
}

let age: String = "20"

if Int(age) != nil {
    let ageInt = Int(age)!
    print(age)
}

// -------------------- HW --------------------

// Мутим пять строк с числами, потом конвертим в инт и складываем
let (num1, num2, num3, num4, num5) = ("1488", "228", "1337", "666", "420")
var res = 0

for num in [num1, num2, num3, num4, num5] {
    if Int(num) != nil {
        res += Int(num)!
        continue
    }
    print("\(num) is NaN")
}

print(res)

// Пять нилов глотнул
let a, b, c, d, e: Int?

// Присваиваем значения опциональным микрочелам
var (a1, a2, a3, a4, a5): (Int?, String?, Bool?, Array<String>?, Dictionary<String, String>?)

a1 = 20
a2 = "Wassup"
a3 = true
a4 = ["Mipo"]
a5 = ["Dendro": "Nahida"]

// Печатаем по буквам имя
func printNameByChars(name: String) {
    for char in name {
        print(char)
    }
}

printNameByChars(name: "Gasan")

// Сортируем массив
func generateArray(lenght: Int) -> [Int] {
    var array = [Int]()
    
    for _ in 0..<lenght {
        array.append(Int.random(in: 0...100))
    }
    
    return array
}

var array = generateArray(lenght: 10)

print(array)

// Первый вариант
print(array.sorted())

// Сортировка выбором

// Создаем функцию, которая будет находить наименьшее значение
func findSmallest(arr: [Int]) -> Int {
    var smallest = arr[0]
    var smallestIndex = 0
    
    for i in 0..<arr.count {
        if smallest > arr[i] {
            smallest = arr[i]
            smallestIndex = i
        }
    }
    
    return smallestIndex
}

// На основе функции выше отсортируем массив
func selectionSort(arr: [Int]) -> [Int] {
    var array = arr
    var sortedArr = [Int]()
    var smallest = 0
    
    for _ in 0..<arr.count {
        smallest = findSmallest(arr: array)
        sortedArr.append(array.remove(at: smallest))
    }
    
    return sortedArr
}

var newArr = selectionSort(arr: array)
print(newArr)

// Быстрая сортировка (сортировка Хоара)
func quickSort(arr: [Int]) -> [Int] {
    var less = [Int]()
    var equal = [Int]()
    var greater = [Int]()
    // если в массиве один элемент, выводим ответ сразу, иначе сортируем
    if arr.count > 1 {
        // находим опорный элемент массива (может быть любым, хоть первый первый элемент массива)
        var pivot = arr[arr.count/2]
        
        // кидаем элемент массива в другой массив в зависимости от того больше, меньше или равен он опорному
        for elem in arr {
            if elem < pivot {
                less.append(elem)
            }
            
            if elem == pivot {
                equal.append(elem)
            }
            
            if elem > pivot {
                greater.append(elem)
            }
        }
        
        // снова сортируем получившиеся массивы и объединяем их в один
        return (quickSort(arr: less) + equal + quickSort(arr: greater))
    } else {
        return arr
    }
}

var arr2 = quickSort(arr: array)
print(arr2)
