import UIKit

// Задание 1-2, 4
enum CarBrand {
    case Volvo
    case Mercedes
    case Tesla
    case Nisson
    case Ford
}

struct Car: Hashable {
    var brand: CarBrand
    var yearOfManuf: Int
    var engineVolume: Double
    var trunkVolume: Int
    var isTurnedOn: Bool
    var isWindowOpened: Bool
    var isTrunkLoaded: Bool
    
    mutating func makeAction(action: Actions) {
        switch action {
        case .startEngine:
            self.isTurnedOn = true
            print("Машина заведена")
        case .stopEngine:
            self.isTurnedOn = false
            print("Двигатель заглушен")
        case .openWindow:
            self.isWindowOpened = true
            print("Окно открыто")
        case .closeWindow:
            self.isWindowOpened = false
            print("Окно закрыто")
        case .loadCargo:
            self.isTrunkLoaded = true
            print("Груз помещен в багажник")
        case .unloadCargo:
            self.isTrunkLoaded = false
            print("Груз выгружен из багажника")
        }
    }
}

struct Truck: Hashable {
    var brand: CarBrand
    var yearOfManuf: Int
    var engineVolume: Double
    var trunkVolume: Int
    var isTurnedOn: Bool
    var isWindowOpened: Bool
    var isTrunkLoaded: Bool
    
    mutating func makeAction(action: Actions) {
        switch action {
        case .startEngine:
            self.isTurnedOn = true
            print("Машина заведена")
        case .stopEngine:
            self.isTurnedOn = false
            print("Двигатель заглушен")
        case .openWindow:
            self.isWindowOpened = true
            print("Окно открыто")
        case .closeWindow:
            self.isWindowOpened = false
            print("Окно закрыто")
        case .loadCargo:
            self.isTrunkLoaded = true
            print("Груз помещен в багажник")
        case .unloadCargo:
            self.isTrunkLoaded = false
            print("Груз выгружен из багажника")
        }
    }
}

// Задание 3
enum Actions {
    case startEngine
    case stopEngine
    case openWindow
    case closeWindow
    case loadCargo
    case unloadCargo
}

// Задание 5
var teslaPlaid = Car(brand: CarBrand.Tesla, yearOfManuf: 2021, engineVolume: 0, trunkVolume: 120, isTurnedOn: false, isWindowOpened: false, isTrunkLoaded: true)
var mercedesActros = Truck(brand: CarBrand.Mercedes, yearOfManuf: 2023, engineVolume: 15.6, trunkVolume: 2000, isTurnedOn: true, isWindowOpened: true, isTrunkLoaded: true)

teslaPlaid.makeAction(action: Actions.startEngine)
teslaPlaid.makeAction(action: Actions.openWindow)

mercedesActros.makeAction(action: Actions.closeWindow)
mercedesActros.makeAction(action: Actions.stopEngine)

// Задание 6
var dict = [AnyHashable: String]()

dict[teslaPlaid] = "Tesla Plaid"
dict[mercedesActros] = "Mercedes Actros"

print(dict)
