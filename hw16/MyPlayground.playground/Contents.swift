import UIKit

// Задание 1.
/**
 Наследование - механизм, позволяющий описывать новую сущность, на основе уже существующей
 Инкапсуляция - механизм, позволяющий объединять данные и методы, работающие с этими данными, в один объект. Не путать инкапсуляцию с сокрытием, хоть они и идут бок о бок
 Полиморфирз - механизм позволяющий методу обрабатывать данные разных типов
 */

// Задание 2.
enum Sex {
    case Male
    case Female
}

class People {
    var name: String
    var height: Double
    var weight: Double
    var sex: Sex
    
    func say() {
        print("Вы не могли бы подписать мою петицию\n")
    }
    
    init(name: String, height: Double, weight: Double, sex: Sex) {
        self.name = name
        self.height = height
        self.weight = weight
        self.sex = sex
    }
}

class Manager: People {
    override func say() {
        print("Менеджер говорит, что продажи упали\n")
    }
}

class Cook: People {
    override func say() {
        print("Повар говорит, что жрать нечего\n")
    }
}

class Fighter: People {
    override func say() {
        print("Боец говорит, что ухо тебе сломает\n")
    }
}

var men = People(name: "Tyler", height: 6.5, weight: 80, sex: Sex.Male)
var manager = Manager(name: "Sveta", height: 5.4, weight: 45, sex: Sex.Female)
var cook = Cook(name: "Виктор Баринов", height: 6, weight: 100, sex: Sex.Male)
var fighter = Fighter(name: "Narrator", height: 6.5, weight: 80, sex: Sex.Male)

var guys = [men, manager, cook, fighter]

func printObjs(arr: [People]) {
    for el in guys {
        print("Имя - \(el.name)\nРост - \(el.height)\nВес - \(el.weight)\nПол - \(el.sex)")
        el.say()
    }
}

printObjs(arr: guys)

// Задание 3.

class Investor: People {
    var fund: Double
    
    override func say() {
        super.say()
        print("22 МИЛЛИОНА ДОЛЛАРОВ ЗА 3 ГРЕБАНЫХ ЧАСА!!!\n")
    }
    
    init(fund: Double, name: String, height: Double, weight: Double, sex: Sex) {
        self.fund = fund
        
        super.init(name: name, height: height, weight: weight, sex: sex)
    }
}

var belford = Investor(fund: 100000000, name: "Jordan", height: 6.2, weight: 85.2, sex: Sex.Male)

guys.append(belford)

func printPeople(obj: AnyObject) {
    if (String(describing: obj).contains("Investor")) {
        let inv = obj as? Investor
        print("Имя - \(inv!.name)\nРост - \(inv!.height)\nВес - \(inv!.weight)\nПол - \(inv!.sex)\nСостояние - \(inv!.fund)")
        inv?.say()
    } else {
        let men = obj as? People
        print("Имя - \(men!.name)\nРост - \(men!.height)\nВес - \(men!.weight)\nПол - \(men!.sex)")
        men?.say()
    }
}

for index in stride(from: guys.count - 1, to: -1, by: -1) {
    printPeople(obj: guys[index])
}

// Задание 4.

class Marsianin {
    var hands: Int
    var legs: Int
    var eyes: Int
    
    func say() {
        print("101100101")
    }
    
    init(hands: Int, legs: Int, eyes: Int) {
        self.hands = hands
        self.legs = legs
        self.eyes = eyes
    }
}

class AlienWorker: Marsianin {
    override func say() {
        print("alien worker\n")
    }
}

class AlienShooter: Marsianin {
    override func say() {
        print("alien shooter\n")
    }
}

var alien1 = AlienWorker(hands: 3, legs: 4, eyes: 5)
var alien2 = AlienShooter(hands: 2, legs: 2, eyes: 2)
var marsians = [alien1, alien2]

var creatures = [AnyObject]()
creatures.append(contentsOf: guys)
creatures.append(contentsOf: marsians)

// Получилось уродливо, можно сделать лучше, но у меня сейчас три ночи и мне лень, возможно потом сделаю
for el in creatures {
    if (el is People) {
        printPeople(obj: el)
    } else {
        let mars = el as? Marsianin
        print("Hands - \(mars!.hands), Legs - \(mars!.legs), Eyes - \(mars!.eyes)")
        mars?.say()
    }
}

// Задание 5.

let maxCount = max(guys.count, marsians.count)

for i in 0..<maxCount {
    if guys.count > i {
        printPeople(obj: guys[i])
    }
    
    if marsians.count > i {
        print("Hands - \(marsians[i].hands), Legs - \(marsians[i].legs), Eyes - \(marsians[i].eyes)")
        marsians[i].say()
    }
}

