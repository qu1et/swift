import UIKit

// Создаем класс Students с двумя свойствами
class Students {
    var dateOfBirth = String()
    var skills = [String]()
}

// Создадим структуру банковского вклада
// Здесь мы имеем два хранимых и два вычисляемых свойства
// Здесь будет вычисляться наш профит с вклада, каждый раз при изменении профита, сумма вклада будет пересчитываться
struct BankAccount {
    var capital: Double = 0 // Количество денег на вкладе
    var rate: Double = 0.05 // Процентная ставка
    
    var profit: Double {
        get {
            return capital + capital * rate
        }
        
        set(newProfit) {
            self.capital = newProfit / (1 + self.rate)
        }
    }
    
    init(capital: Double, rate: Double) {
        self.capital = capital
        self.rate = rate
    }
}

var myAccount = BankAccount(capital: 10000, rate: 0.1)

print(myAccount.profit)

myAccount.profit = 15000

print(myAccount.capital)


// Посчитаем расход топлива на 100 километров
struct Consumption {
    var distance: Double = 100 // Пройденное расстояние (км)
    var usedFuel: Double = 16 // Количество потраченного топлива (л)
    var consumption: Double { // Расход топлива на 100 км
        get {
            return (usedFuel / distance) * 100
        }
        
        set(newConsumption) {
            self.usedFuel = (newConsumption * distance) / 100
        }
    }
}

var myCar = Consumption(distance: 1000, usedFuel: 160)

print(myCar.consumption)

myCar.consumption = 20

print(myCar.usedFuel)



// Создаем структуру треугольника с вычисляемым свойством В, в котором мы будем вычислять третий угол
struct CreateTriangle {
    var A = Int()
    var C = Int()
    var B: Int {
        return 180 - A - C
    }
}

var triangle = CreateTriangle(A: 70, C: 50)

print(triangle.B)



// Создаем структуру Resume
// Сначала создадим перечисление с должностями
enum Positions {
    case CTO
    case Manager
    case Developer
    case QA
}

// Создадим структуру с контактными данными
struct Contacts {
    var phoneNumber: String
    var email: String
}

struct Resume {
    var lastName: String // Фамилия
    var name: String // Имя
    var position: Positions // Должность
    var experience: Double // Опыт в годах
    var contacts: Contacts // Контактные данные
}

var myContacts = Contacts(phoneNumber: "+89999999999", email: "lolkek@gmail.com")
var gas = Resume(lastName: "Alkadarskiy", name: "Gasan", position: Positions.QA, experience: 2.5, contacts: myContacts)

print(gas.position)



// Пишем класс с четырьмя методами
class MyMethods {
    // Бескорыстно пишем в консоль
    func justPrint() {
        print("smth")
    }
    
    // Принимаем два параметра, выводим в консоль
    func printParams(name: String, lastName: String) {
        print("Hi, \(name) \(lastName)!")
    }
    
    // Принимаем два числа, складываем, возвращаем
    func addition(a: Double, b: Double) -> Double {
        return a + b
    }
    
    // Примем замыкание и выведем его возвращаемое значение
    func printClosure(name: String, clos: (String) -> String) {
        var str = clos(name)
        print(str)
    }
}

var methods = MyMethods()

var closure = { (name: String) in return "Hello, \(name)!" }

methods.justPrint()
methods.printParams(name: "Ivan", lastName: "Ivanov")
methods.addition(a: 5, b: 2)
methods.printClosure(name: "Gena", clos: closure)
