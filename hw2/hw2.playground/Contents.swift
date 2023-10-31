import UIKit

// ___________________________Lesson Part___________________________

var peremennaya = 10

let constant = 22

var a1: Int = 10

var a2: Double = 2.5

var a3: Float = 2.6

var a4 = 52

var c = Double(a1) + a2

let i = 5 + 5.5

typealias MyNumber = Int

var chislo: MyNumber = 10

print(chislo)

print("privet")

var o = 111_123_456

var boolValue: Bool = true

if boolValue == false {
    print("coco jambo")
} else {
    print("i'm in love with the coco")
}


// ___________________________Home (video) Work___________________________

typealias GasString = String
typealias GasInt = Int
typealias GasDouble = Double

let five = 50
let doubleTwo = 2.2222
let sum = five + Int(doubleTwo)

let team1: GasString = "Team Spirit"
let num1: GasInt = 3
let num2: GasInt = 0
let num3: GasInt = 2

let concatString = team1 + " " + GasString(num1) + ":" + GasString(num2) + " " + "GG"

let interpString = "\(team1) is the \(num3) times TI winners"

// Ищем квадратик
let sq: Double = 4

let square = pow(sq, 2)

// Трапецевидная мышцА (ни в коем случае не делайте такую хуйню, ее трудно читать будет, я дурачек просто)
var closure = { (a: GasDouble, b: GasDouble, h: GasDouble) -> GasDouble in
    (a + b) * h / 2
}

func trapAHAHA(fnd1 a: GasDouble, fnd2 b: GasDouble, fnd3 h: GasDouble, clos: (GasDouble, GasDouble, GasDouble) -> GasDouble) -> GasDouble {
    return clos(a, b, h)
}

var res = trapAHAHA(fnd1: 18, fnd2: 6, fnd3: 3.5, clos: closure)

// Бермуды WTF (мЫ бУдЕм NсКаТb П0 Тp3м ЕгО_О сторонам, потому что я его первым вспомнил ФОРМУЛА ГЕРОиНА)
func rectLol(WT a: GasDouble, TF b: GasDouble, WF c: GasDouble) -> GasDouble {
    // сначала ищем полупериметр треугольника
    var p = (a + b + c) / 2
    
    // а теперь можно и площадь найти
    return (p * (p - a) * (p - b) * (p - c)).squareRoot()
}

var res2 = rectLol(WT: 4.5, TF: 4.5, WF: 6)

// Ладно, еще по двум сторонам и углу между ними найдем, я же для чего-то получал эту сраную медаль в школе
func rect(TF a: GasDouble, WF b: GasDouble, angle an: GasDouble) -> GasDouble {
    return 0.5 * a * b * __sinpi(an / 180.0)
}

var res3 = rect(TF: 3, WF: 4, angle: 60)

print(res3)

// Квадратное уравнение (Формула Виетта для слабаков)

// Ищем дискриминант
var discriminant = {(a: GasDouble, b: GasDouble, c: GasDouble) -> GasDouble in
    b * b - 4 * a * c
}

func findRoots(a: GasDouble, b: GasDouble, c: GasDouble, closure: (GasDouble, GasDouble, GasDouble) -> GasDouble) -> (Double?, Double?) {
    var disc = closure(a, b, c)
    var rt1, rt2: Double?
    
    if disc < 0 {
        rt1 = nil
        rt2 = nil
    } else if disc == 0 {
        rt1 = -b / 2 * a
        rt2 = nil
    } else {
        rt1 = (-b + disc.squareRoot())/(2*a)
        rt2 = (-b - disc.squareRoot())/(2*a)
    }
    
    return (rt1, rt2)
}

var test = findRoots(a: 1, b: 2, c: -3, closure: discriminant)

print(test.0!, test.1!)

// Быстренько посчитаем дульную энергию

typealias Weight = Double
typealias Speed = Double
typealias Joule = Double

func calc(v: Speed, m: Weight) -> Joule {
    m * pow(v, 2) / 2
}

var E = calc(v: 120, m: 10)

print(E)

