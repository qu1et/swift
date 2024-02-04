import UIKit

// Попробовать сдекодить модельку (структуру) в json (с вложенными структурами). Распечать это в консоль

struct MySummerCar: Codable {
    var name: String
    var brand: String
    var engineCapacity: Double
}

var satsuma = MySummerCar(name: "Satsuma", brand: "Datsun", engineCapacity: 1.0)

let encoder = JSONEncoder()
encoder.outputFormatting = .prettyPrinted

let data = try! encoder.encode(satsuma)
print(String(data: data, encoding: .utf8)!)

// Попробовать декодировать модельку из json в структуру

var decoder = JSONDecoder()

var msc: MySummerCar = try! decoder.decode(MySummerCar.self, from: data)
msc

// Сделать структуру Codable и вначале декодировать структуру, а потом создать структуру того же типа и декодировать ее

struct Engine: Codable {
    var name: String
    var capacity: Double
    var torque: Int
}

struct Car: Codable {
    var brand: String
    var model: String
    var price: Double
    var engine: Engine
}

let json = """
{
    "brand": "Nissan",
    "model": "SkyLine GTR R34",
    "price": 50000,
    "engine": {
        "name": "RB26DETT",
        "capacity": 2.6,
        "torque": 392,
    }
}
"""

let nissan = try! decoder.decode(Car.self, from: Data(json.utf8))
nissan

// encode

let nissanJson = try! encoder.encode(nissan)
print(String(data: nissanJson, encoding: .utf8)!)
