import UIKit

// --------------------------- Video ---------------------------

var students = [String]()

let name = "Goga"
let prof = "Developer"

func addStudent(name: String, prof: String) {
    students.append(name)
    students.append(prof)
}

addStudent(name: name, prof: prof)
students

func sumElements(num1: Int, num2: Int) -> Int {
    num1 + num2
}

sumElements(num1: 2, num2: 2)

var money = [1, 32, 3423, 34, 2342, 1, 34, 5]

func countMoney(arr: [Int]) -> Int {
    var sum = 0
    for el in money {
        sum += el
    }
    
    return sum
}

countMoney(arr: money)

func generalFunc(val: Bool) -> () -> String {
    func sayYes() -> String {
        return "Yes"
    }
    
    func sayNo() -> String {
        return "No"
    }
    
    return val ? sayYes : sayNo
}

generalFunc(val: false)()


// --------------------------- HW ---------------------------
// Создаем три функции
func greet() {
    print("Hi")
}

func printNum(val: Int) {
    print(val)
}

func isOdd(num: Int) -> Bool {
    num % 2 != 0
}

// Вызываем все три функции
greet()

printNum(val: 5)

var res = isOdd(num: 3)


// Функция для записи в журнал данных
// Создадим журнал
var journal = [[String:String]]()

func writeData(name: String, prof: String, mark: Int) {
    journal.append(["name": name, "prof": prof, "mark": String(mark)])
}

func printJournal(arr: [[String:String]]) {
    for el in arr {
        print(el)
    }
}

// Запишем данные 10 учеников
writeData(name: "Gasan", prof: "qa", mark: 2)
writeData(name: "Kirill", prof: "support", mark: 4)
writeData(name: "Sasha", prof: "dev", mark: 5)
writeData(name: "Polina", prof: "analytic", mark: 1)
writeData(name: "Lev", prof: "analytic", mark: 3)
writeData(name: "Oleg", prof: "data engineer", mark: 5)
writeData(name: "Vovan", prof: "data engineer", mark: 4)
writeData(name: "Misha", prof: "data scientist", mark: 0)
writeData(name: "Maryana", prof: "designer", mark: 3)
writeData(name: "Danya", prof: "qa", mark: 4)

// Распечатаем данные
printJournal(arr: journal)

// Создадим массив с именем и фамилией
var nameSur = [["name": "Tyler", "surname": "Durden"],
               ["name": "Brian", "surname": "O'Conner"],
               ["name": "Jordan", "surname": "Belfort"],
               ["name": "Sergei", "surname": "Gurikov"]]

// Функция, которая объединяет имя и фамилию в одну строку
func concatStrings(n: String, s: String) -> String {
    return "\(n) \(s)"
}

// Пройдемся по всему массиву и выведем имя и фамилию
for elem in nameSur {
    print(concatStrings(n: elem["name"]!, s: elem["surname"]!))
}

// Функция подсчета площади круга
func circleArea(radius r: Double) -> Double {
    return pow(r, 2) * Double.pi
}

let area = circleArea(radius: 5)

// Не понял толком условие последнего задания, поэтому будем словарь, в котором лежит дата оценки и сама оценка

var gas = [String: String]()

gas["score"] = "3"
gas["date"] = "06.08.2023"

