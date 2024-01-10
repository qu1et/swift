import UIKit

// Создать протокол Hotel с инициализатором который принимает roomCount, после создать class HotelAlfa добавить свойство roomCount и подписаться на этот протокол
protocol Hotel {
    init(roomCount: Int)
}

class HotelAlfa: Hotel {
    var roomCount: Int
    required init(roomCount: Int) {
        self.roomCount = roomCount
    }
}

// Создать protocol GameDice у него {get} свойство numberDice далее нужно расширить Int так чтобы, когда мы напишем такую конструкцию "let diceCoub = 4 \n diceCoub.numberDice"
protocol GameDice {
    var numberDice: String { get }
}

extension Int: GameDice {
    var numberDice: String {
        return "Выпало \(self) на кубике"
    }
}

let diceCoub = 4
print(diceCoub.numberDice)

// Создать протокол с одним методом и 2мя свойствами одно из них сделать явно optional, создать класс, подписать на протокол и реализовать только 1 обязательное свойство
@objc protocol PersonalData {
    var name: String { get set }
    @objc optional var lastName: String { get set }
    func printData()
}

class People: PersonalData {
    var name: String
    func printData() {
        print("My name is \(self.name)")
    }
    
    init(name: String) {
        self.name = name
    }
}

var max = People(name: "Max")
max.printData()

// Реализовать структуру IOSCollection и создать в ней copy on write по типу
struct IOSCollection {
    var x: Int
}

final class Ref<T> {
    var val: T
    init(val: T) {
        self.val = val
    }
}

struct Box<T> {
    var ref: Ref<T>
    
    init(ref: T) {
        self.ref = Ref(val: ref)
    }
    
    var value: T {
        get {
            ref.val
        }
        set {
            guard (isKnownUniquelyReferenced(&ref)) else {
                ref = Ref(val: newValue)
                return
            }
            
            ref.val = newValue
        }
    }
}

var value = IOSCollection(x: 52)

var b1 = Box(ref: value)
var b2 = b1

print("\(Unmanaged.passUnretained(b1.ref).toOpaque())")
print("\(Unmanaged.passUnretained(b2.ref).toOpaque())")

b2.value.x = 123

print("\(Unmanaged.passUnretained(b2.ref).toOpaque())")

