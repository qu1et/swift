import UIKit

// Создадим родительский класс - человек. От него сделаем два наследника: студент и сотрудник
// Класс человека
class Men {
    var name: String
    var secondName: String
    var age: Int
    
    func sayHello(name: String) {
        print("Hello, \(name)!")
    }
    
    func getFullInfo() {
        print("Привет! Меня зовут \(self.name) \(self.secondName). Мне \(self.age) лет.")
    }
    
    init(name: String, secondName: String, age: Int) {
        self.name = name
        self.secondName = secondName
        self.age = age
    }
}

class Student: Men {
    var grade: Int
    var university: String
    
    init(name: String, secondName: String, age: Int, grade: Int, university: String) {
        self.grade = grade
        self.university = university
        super.init(name: name, secondName: secondName, age: age)
    }
}

enum Position {
    case QA
    case Dev
    case Manager
    case Lead
    case CTO
}

class Employee: Men {
    var company: String
    var position: Position
    
    init(name: String, secondName: String, age: Int, company: String, position: Position) {
        self.company = company
        self.position = position
        
        super .init(name: name, secondName: secondName, age: age)
    }
}

let student = Student(name: "John", secondName: "Smith", age: 20, grade: 3, university: "MIT")
let employee = Employee(name: "Gasan", secondName: "Banan", age: 23, company: "ivi", position: .QA)

student.getFullInfo()
employee.getFullInfo()

print(student.name, student.secondName, student.age)
print(employee.name, employee.secondName, employee.age)

print(student.grade, student.university)
print(employee.company, employee.position)


// Создадим класс Car, который будет содержать в себе название машины,количество колес. Также в нем будут методы ride, stop и explode
// Не понимаю, о каком произведении свойств тут говорят
class Car {
    var name: String
    var countWheels: Int
    
    func ride() {
        if countWheels <= 0 {
            print("Не можем ехать, колес нет")
        } else {
            print("Поехали бррррррррр")
        }
    }
    
    func stop() {
        print("\(name) стоит на месте")
    }
    
    func explode() {
        self.countWheels = 0
        print("БАМ колеса взорвались, тащи новые")
    }
    
    init(name: String, countWheels: Int) {
        self.name = name
        self.countWheels = countWheels
    }
}

var ducato = Car(name: "Fiat Ducato", countWheels: 0)

ducato.ride()

ducato.countWheels = 4

ducato.ride()
ducato.stop()
ducato.explode()
ducato.ride()

ducato.countWheels = 4

ducato.ride()

// Создал класс, в котором есть список учеников с оценками
class TestResults {
    var group: [(String, Int)]
    
    func addStudentResult(name: String, grade: Int) {
        self.group.append((name, grade))
    }
    
    func showStudentsResults() {
        for el in self.group {
            print("\(el.0) - \(el.1)")
        }
    }
    
    init() {
        self.group = []
    }
}

// Создал класс, где есть методы сортировки класса по оценкам. Один метод сортирует по возрастанию, второй по убыванию
class Students {
    func filterByGradesAscending(students: [(String, Int)]) -> [(String, Int)] {
        return students.sorted(by: { $0.1 > $1.1 })
    }
    
    func filterByGradesDescending(students: [(String, Int)]) -> [(String, Int)] {
        return students.sorted(by: { $0.1 < $1.1 })
    }
    
    init() {}
}

var group = TestResults()

group.addStudentResult(name: "Gasan", grade: 4)
group.addStudentResult(name: "Tomas Shelby", grade: 5)
group.addStudentResult(name: "Ken", grade: 1)
group.addStudentResult(name: "Ryan Gosling", grade: 2)
group.addStudentResult(name: "Tyler Durden", grade: 3)
group.addStudentResult(name: "Narrator", grade: 5)

group.showStudentsResults()

var studentsEx = Students()

var sortResult = studentsEx.filterByGradesAscending(students: group.group)
var sortdeResult = studentsEx.filterByGradesDescending(students: group.group)


print(sortResult)
print(sortdeResult)

// Покажем основные отличия класса от структуры
// Для примера создадим простой класс и структуру с аналогичными свойствами

// У нас будет поле с числом
class ShowClass {
    var a: Int
    
    init(a: Int) {
        self.a = a
    }
}

struct ShowStruct {
    var a: Int
}

// Видим сразу же первое различие. Инициализатор у структуры создается автоматически, в то время, как для класса, мы пишем его сами
var showCl = ShowClass(a: 10)
var showSt = ShowStruct(a: 10)

// Второе отличие, структуры мы передаем по значению, класс передается по ссылке. Покажем это нагдядно

var classCopy = showCl
var structCopy = showSt

// Попробуем поменять значение и вывести все это добро в консоль

classCopy.a = 8
structCopy.a = 11

print("Class original - \(showCl.a)")
print("Class copy - \(classCopy.a)")

print("\nStruct original - \(showSt.a)")
print("Struct copy - \(structCopy.a)")

/**
 Как можно увидеть из примера выше, класс мы передаем по ссылке. Что это значит? Грубо говоря, это значит, что в новую переменную мы просто передаем ссылку на уже существующий экземпляр класса
 Структура же передается по значению. Что это значит? Это значит, что в новую переменную мы копируем всю структуру со всеми внутренностями.
 */

// Также различием является то, что класс нам позволяет пользоваться наследованием. Также с классом мы можем освободить любые ранее занятые ресурсы благодаря деинициализаторам
