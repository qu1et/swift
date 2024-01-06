import UIKit

// Создать любой Generic для классов, структур, методов, перечислений (по 1 на каждый)
class GenArrayClass<Element> {
    var element: Element
    var arr = [Element]()
    
    func add(_ el: Element) {
        self.arr.append(el)
    }
    
    subscript(index: Int) -> Element {
        return arr[index]
    }
    
    init(element: Element) {
        self.element = element
        self.arr.append(element)
    }
}

var strClass = GenArrayClass(element: "Donda")
strClass.add("Car")
strClass.add("Horse")
print(strClass[1])

var intClass = GenArrayClass(element: 10)
intClass.add(23)
print(intClass[0])


struct GenStruct<Element> {
    var stack = [Element]()
    
    var count: Int {
        return stack.count
    }
    
    mutating func push(_ elem: Element) {
        stack.append(elem)
    }
    
    mutating func pop() -> Element {
        return stack.removeLast()
    }
}

var testStrc = GenStruct(stack: [])

testStrc.push(3.14)
testStrc.push(2.7)
testStrc.push(9.8)
testStrc.push(1.00784)
print(testStrc.pop())

enum physicalConstants<T> {
    case accelerationOfGravity(T)
    case speedOfLight(T)
}

physicalConstants.accelerationOfGravity(9.8)
physicalConstants.speedOfLight("299 792 458 m/s")

func compareVars<T: Comparable>(_ a: T, _ b: T) -> Bool {
    return a == b
}

var first = 2
var second = 2
var third = "abc"
var fourth = "abd"
print(compareVars(first, second))
print(compareVars(third, fourth))

// Написать функцию, которая принимает Generic объект и складывает в массив/словарь (на выбор)
struct MutableArr<T> {
    var arr = [T]()
    mutating func addElement(_ elem: T) {
        arr.append(elem)
        print(arr)
    }
}

var mtArr = MutableArr(arr: ["Future", "Drake"])
mtArr.addElement("Metro Boomin")

var mtIntArr = MutableArr(arr: [12, 232])
mtIntArr.addElement(78)

// Написать класс на свое усмотрение (любые методы, проперти) универсального типа. Используя extension, расширить класс.

class SortArray<T: Comparable> {
    var arr = [T]()
    
    func sortByAscending() -> [T] {
        return arr.sorted() { $0 < $1 }
    }
    
    func sortByDescending() -> [T] {
        return arr.sorted() { $0 > $1 }
    }
    
    init(arr: [T] = [T]()) {
        self.arr = arr
    }
}

extension SortArray {
    var maxValue: T? {
        return arr.max()
    }
    
    var minValue: T? {
        return arr.min()
    }
}

var exmpl = SortArray(arr: ["b", "c", "A", "a"])

print(exmpl.sortByAscending())
print(exmpl.sortByDescending())
print(exmpl.maxValue!)
print(exmpl.minValue!)

var exmp2 = SortArray(arr: [3, 2, 1, 5])

print(exmp2.sortByAscending())
print(exmp2.sortByDescending())
print(exmp2.maxValue!)
print(exmp2.minValue!)

