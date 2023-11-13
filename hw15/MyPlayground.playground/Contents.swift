import UIKit

// Первое задание. Создать класс, в котором будет 3 свойства мама, папа, дети. Создать subscript и упорядочить их по индексу

class Family {
    var mom = "Lena"
    var dad = "Sema"
    var kids = ["Biba", "Boba"]
    
    subscript(index: Int) -> String? {
        get {
            switch index {
            case 0: return mom
            case 1: return dad
            case 2: return "\(kids[0]) и \(kids[1])"
            default: return "Бабули уже нет"
            }
        }
    }
}

var fam = Family()
fam[1]
fam[2]

// Второе задание. Создать Индекс который будет принимать число умножать его на 100 и делить на 2

struct Calc {
    subscript(number: Int) -> Int {
        get {
            return (number * 100) / 2
        }
    }
}

var calc = Calc()
calc[50]

// Третье задание. Создать свой subscript у которого внутри есть оператор if else
// Можно было бы и через тернарный оператор, но если просят if else...
class Square {
    subscript(a: Int, b: Int) -> Bool {
        get {
            if (a == b) {
                return true
            } else {
                return false
            }
        }
    }
}

// Четвертое задание. Создать класс человек и в нем 3 свойства: имя, возраст, пол
enum Sex {
    case Male
    case Female
    case Email
    case Mechanic
    case Croissant
    case Wallmart_Bag
}

enum Positions {
    case Macro_Chel
    case Micro_Chel
}

class Men {
    var name: String
    var age: Int
    var sex: Sex
    
    func say() {
        print("Hi! I'm \(name)")
    }
    
    init(name: String, age: Int, sex: Sex) {
        self.name = name
        self.age = age
        self.sex = sex
    }
}

var gas = Men(name: "Gasan", age: 23, sex: Sex.Email)

gas.say()

// Пятое задание. Создать ещё 2 класса которые наследуются от класса человек и переопределить методы и свойства

class Employee: Men {
    var position: Positions
    override var age: Int {
        didSet {
            if (age < 0) {
                self.age = 0
                print("Возраст не может быть отрицательным")
            }
        }
    }
    var experience: Int
    
    override func say() {
        print("Give me vacation!")
    }
    
    init(position: Positions, age: Int, experience: Int, name: String, sex: Sex) {
        self.position = position
        self.experience = experience
        
        super.init(name: name, age: age, sex: sex)
        
        self.age = age
    }
}

var emp = Employee(position: Positions.Micro_Chel, age: -11, experience: 10, name: "Goga", sex: Sex.Mechanic)

emp.age
emp.say()

class Student: Men {
    var grade: Int
    var faculty: String
    
    override func say() {
        print("Ну хотя бы троечку")
    }
    
    init(grade: Int, faculty: String, name: String, age: Int, sex: Sex) {
        self.grade = grade
        self.faculty = faculty
        
        super.init(name: name, age: age, sex: sex)
    }
}

var student = Student(grade: 2, faculty: "Chemistry", name: "Yan", age: 19, sex: Sex.Male)

student.say()

// Шестое задание. Создать словарь, который хранит все типы данных, которые есть, а ключ должен быть только строка (воспользоваться enum для типов данных)
// Описал только примитивы

enum Data {
    case int(Int)
    case double(Double)
    case string(String)
    case bool(Bool)
    case float(Float)
    case character(Character)
}

var types = ["String": Data.string("Str"),
             "Character": Data.character("c"),
             "Int": Data.int(2),
             "Float": Data.float(1.000001),
             "Double": Data.double(1.000000000000001),
             "Bool": Data.bool(true)]

for (key, value) in types {
    print("\(key) - \(value)")
}
