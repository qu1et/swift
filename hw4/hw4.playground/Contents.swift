import UIKit

// ------------------------ Video ------------------------

let constArray = ["a", "b", "c", "d"]

constArray.count

var array = [String]()

if array.isEmpty {
    print("массив пустой")
}

array += constArray

array + ["w"]

array.append("h")

print(array)

array[1]

array[1...4]

array

array.insert("-", at: 3)

array.remove(at: 3)
array.removeLast()

// ------------------------ HW ------------------------
// грязные зеленые бумажки
let money = [1000, 13, 399, 3421, 242421, 12]

var total = 0

for val in money {
    total += val
}

print("\(total) dollars")

// дни в месяцвх
let months = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]

let daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

// тульпа хотите так
let tupledDays = [("Январь", 31),
                   ("Февраль", 28),
                   ("Март", 31),
                   ("Апрель", 30),
                   ("Май", 31),
                   ("Июнь", 30),
                   ("Июль", 31),
                   ("Август", 31),
                   ("Сентябрь", 30),
                   ("Октябрь", 31),
                   ("Ноябрь", 30),
                   ("Декабрь", 31),]

// хотите так
var tuple2 = [(String, Int)]()

for (elem, days) in daysInMonth.enumerated() {
    tuple2.append((months[elem], days))
}

print(tuple2)

// Reverse print
for i in stride(from: tupledDays.count - 1, to: 0, by: -1) {
    print("\(tupledDays[i].0) - \(tupledDays[i].1) дней")
}

// Ну или так
for days in tupledDays.reversed() {
    print("\(days.0) - \(days.1) дней")
}

for days in tupledDays {
    print("\(days.0) - \(days.1) дней")
}

for days in daysInMonth {
    print(days)
}

for (elem, days) in daysInMonth.enumerated() {
    print("\(months[elem]) - \(days) дней")
}

// Задача со звездочкой

// Возьмем, что месяцы вводятся как обычно, начиная с единицы
func sumDays(arr: Array<Int>) -> Int {
    var sum = 0
    
    if arr.isEmpty {
        print("ненаход")
        return 0
    }
    
    for days in arr {
        sum += days
    }
    return sum
}

func countDaysBeforeDate(month: Int, day: Int) -> Int {
    if month > 12 || month < 1 || day < 1 || day > 31 {
        print("динаху")
        return 0
    }
    
    let fullMonths = daysInMonth[0..<month - 1]
    var daysBehind = sumDays(arr: Array(fullMonths))
    
    daysBehind += day - 1
    
    return daysBehind
}

var res = countDaysBeforeDate(month: 4, day: 20)

print(res)

// Тоже самое, но по названию месяца
func countDaysBeforeDateByName(month: String, day: Int) -> Int {
    if !months.contains(month) || day < 1 || day > 31 {
        print("динаху")
        return 0
    }
    
    let fullMonths = daysInMonth[0..<months.firstIndex(of: month)!]
    var daysBehind = sumDays(arr: Array(fullMonths))
    
    daysBehind += day - 1
    
    return daysBehind
}

var res2 = countDaysBeforeDateByName(month: "Апрель", day: 20)

print(res2)

// я спать короч


// музыкальная пауза (Серега Пират - И я кричу, остановите катку)
/**
 Дотка как дотка
 Несет нас опять по новому кругу.
 В ранкед матчмейкинг
 Снова в лесок идет фармить ублюдок.
 
 Мы ведь тоже хотели
 Пофармить крипов, но увы, мы только смотрели.
 Мы теряли бараки
 Когда ты нам сказал "скоро выйду,
 Терпите ебаные раки"
 
 И я кричу "остановите катку",
 Эту игру я уже въебал.
 Эй, лесничок! Заканчивай фармить.
 А он смеется в войс-чат как еблан.
 Еще одна слитая катка
 
 Последние крипы.
 Ты уехал в лп, ну а я нажму снова поиск.
 Лови мут на прощанье
 И вышли из лобби на фоне молчанья.
 
 Так достали уроды,
 Мы с тобою одной и той же породы.
 Да, но мы так непохожи,
 Я надеюсь, ты скоро сольешься
 И мы не встретимся больше, да.
 
 И я кричу "остановите катку",
 Эту игру я уже въебал.
 Эй, лесничок! Заканчивай фармить.
 А он смеется в войс-чат как еблан.
 */
