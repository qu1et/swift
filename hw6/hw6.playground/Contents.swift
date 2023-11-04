import UIKit

// ------------------------ Video ------------------------

let dictionary1: [Int:String] = [0 : "Mom", 1 : "Dad"]

let dict2: Dictionary<String, Double> = ["Dad": 30]

let dict1 = [0 : "Mom", 1 : "Dad"]
let test = ["Mom": "Tanya", "Dad": "Sergey"]

test["Mom"]

dict1[0]

var dict = ["car": "Mercedes", "phone": "iPhone"]

dict.count

dict.isEmpty

var nameOfIntegers = [Int: String]()

nameOfIntegers.count

nameOfIntegers.isEmpty

dict["Mom"] = "Nina"

dict

dict.keys
dict.values

dict.updateValue("Vladimir", forKey: "Dad")

dict

//dict["car"] = nil

//dict.removeValue(forKey: "car")
//
//dict = [:]
//
//dict

for key in dict.keys {
    print("\(key), value = \(dict[key]!)")
}

for (key, value) in dict {
    print("\(key), value = \(value)")
}

// ------------------------ HW ------------------------

func printAllKeysAndValues(dict: Dictionary<AnyHashable, Any>) {
    for (key, value) in dict {
        print("\(key): \(value)")
    }
}

let ruRapTracks = ["Мертвые президенты": "Yanix, ЛСП", "Мамбл": "GONE.Fludd", "Files": "Obladaet", "Caramel": "PHARAOH"]

printAllKeysAndValues(dict: ruRapTracks)

let myGenshinCharacters: Dictionary<String, Dictionary<String, Double>> = ["Yoimia": ["consts": 3, "atk": 2206, "hp": 15183, "critCh": 76.3, "critDm": 255.3],
                                                                           "Yelan": ["consts": 6, "atk": 1197, "hp": 40127, "critCh": 79, "critDm": 253.2],
                                                                           "Ayato": ["consts": 0, "atk": 1894, "hp": 19855, "critCh": 71.5, "critDm": 243.8],
                                                                           "Hu Tao": ["consts": 0, "atk": 1747, "hp": 31126, "critCh": 66.8, "critDm": 231.5],
                                                                           "Keqing": ["consts": 3, "atk": 2216, "hp": 19868, "critCh": 62.5, "critDm": 245.2]]

printAllKeysAndValues(dict: myGenshinCharacters)

let genshinWeaponsRefines: [String: Int] = ["Thundering Pulse": 1, "Aqua Simulacra": 3, "Elegy for the End": 3, "Skyward Harp": 2, "Staff of Homa": 2, "Wolf's Gravestone": 3, "Skyward Pride": 3]

printAllKeysAndValues(dict: genshinWeaponsRefines)

var myHSRCharacters: [String: String] = ["Saul Goodman": "Lawyer", "Seele": "The Hunt", "Jingliu": "Destruction", "Blade": "Destruction", "Silver Wolf": "Nihility", "Fu Xuan": "Preservation"]

myHSRCharacters.removeValue(forKey: "Saul Goodman")
myHSRCharacters["Himeko"] = "Erudition"

printAllKeysAndValues(dict: myHSRCharacters)

var isOpiumMember = ["Destroy Lonely": true, "Plaiboy Carti": true, "Kanye West": false, "Ken Carson": true, "Drake": false]

printAllKeysAndValues(dict: isOpiumMember)

var weaponPricesCSGO = ["AK47": 2700, "M4A1": 2900, "M4A4": 3100, "AWP": 4750, "Desert Eagle": 700, "P250": 300]

printAllKeysAndValues(dict: weaponPricesCSGO)

var tiWinners: [Int: String] = [1: "Natus Vincere",
                                2: "Invictus Gaming",
                                3: "Alliance",
                                4: "Newbee",
                                5: "Evil Geniuses",
                                6: "Wings Gaming",
                                7: "Team Liquid",
                                8: "OG",
                                9: "OG",
                                10: "Team Spirit",
                                11: "Tundra Esports",
                                12: "Team Spirit"]

printAllKeysAndValues(dict: tiWinners)

let numberOfCompliments = [2022: 0, 2021: 0, 2020: 0, 2019: 1, 2018: 0]

printAllKeysAndValues(dict: numberOfCompliments)

let monthsInRussian = [1: "Январь", 2: "Февраль", 3: "Март", 4: "Апрель", 5: "Май", 6: "Июнь", 7: "Июль", 8: "Август", 9: "Сентябрь", 10: "Октябрь", 11: "Ноябрь", 12: "Декабрь"]

printAllKeysAndValues(dict: monthsInRussian)
print(monthsInRussian[1]!)

let monthsInEnglish: Dictionary<Int, String> = [1: "January", 2: "February", 3: "March", 4: "April", 5: "May", 6: "June", 7: "July", 8: "August", 9: "September", 10: "October", 11: "November", 12: "December"]

printAllKeysAndValues(dict: monthsInEnglish)
print(monthsInEnglish[4]!)


// Создавем пустой словарь
var randomDict: Dictionary<String, Int> = [:]

// Проверяем, пустой ли словарь
if randomDict.isEmpty {
    // Если пустой, то запихиваем значения
    randomDict["88"] = 4
    randomDict["26"] = 1
}

printAllKeysAndValues(dict: randomDict)
