import UIKit

// Создаем несколько типов

enum Genders {
    case male
    case female
    case email
}

let chel = Genders.email
let dama: Genders

dama = .female

// Создадим несколько enum

enum StudentProfile {
    case name(String)
    case age(Int)
    case grade(String)
    enum gender {
        case male, female
    }
}

enum SchoolGroup {
    case teacherName
    case numberOfStudents
    case learningProfile
}

// enum с цветами радуги

enum Rainbow {
    case red, orange, yellow, green, lightBlue, blue, purple
}

// Создаем enum с оценками и функцию, где выводим, что получили

enum Grade {
    case A
    case B
    case C
    case D
    case E
}

func printMyGrade(score: Grade) {
    switch score {
    case .A:
        print("Great! You'd get the A")
    case .B:
        print("Nice! Your grade is B")
    case .C:
        print("Not bad, your grade is C. Keep going")
    case .D:
        print("Oh, You've got C. Do your best")
    case .E:
        print("Bro...How you'd get the E?")
    }
}

let gasan = Grade.E

printMyGrade(score: gasan)

// Создаем перечисление марок автомобилей, затем функцию, чтобы вывести, какие тачки есть у человека

enum CarBrands {
    case mercedes
    case bmw
    case audi
    case kia
    case lamborghini
    case koenigsegg
    case mitsubishi
    case subaru
}

// Создадим массив с имеющимися тачками
let myCars: [CarBrands] = [.audi, .kia, .bmw, .koenigsegg]

func showMyCars(cars: [CarBrands]) {
    for el in cars {
        switch el {
        case .mercedes:
            print("Mercedes")
        case .bmw:
            print("BMW")
        case .audi:
            print("Audi")
        case .kia:
            print("KIA")
        case .koenigsegg:
            print("Koenigsegg")
        case .lamborghini:
            print("Lamborghini")
        case .mitsubishi:
            print("Mitsubishi")
        case .subaru:
            print("Subaru")
        }
    }
}

showMyCars(cars: myCars)
