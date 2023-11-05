import UIKit

// ---------------------- Video ----------------------

//for i in 0...200 {
//    if i == 10 {
//        break
//    }
//    print(i)
//}

var day = 7

if day == 1 {
    print("Будний день")
} else if day == 2 {
    print("Будний день")
} else if day == 3 {
    print("Будний день")
} else if day == 4 {
    print("Будний день")
} else if day == 5 {
    print("Пятница!")
} else if day == 6 || day == 7 {
    print("Выходные!")
}

switch day {
case 1...4:
    print("Будний день")
case 5:
    print("Пятница!")
case 6...7:
    print("Выходной!")
default:
    break
}

let nameWork = "iOS Dev"
let age = 18
let gender = "Man"

switch (nameWork, age) {
case (_, 1...17):
    print("Рано еще брачо")
case ("iOS Dev", 18...50) where gender == "woman":
    print("Lol no")
case ("iOS Dev", 18...50) where gender == "Man":
    print("Welcome to the club buddy")
case let (name, age):
    print("\(name) \(age) year?")
default:
    print("The leather club is two blocks down")
}

// ---------------------- Video ----------------------

// Вложенные циклы
outer: for i in 0...200 {
    for _ in 0...i {
        if i == 15 {
            break outer
        }
    }
}

// Говорим человеку куда идти
func whereToGoIf(age: Int) {
    if age < 0 {
        print("Ты за меня придурка не держи")
    } else if age == 0 {
        print("Тебе бы сначала родильное отделение покинуть")
    } else if age >= 0 && age < 2 {
        print("Пока дома посиди")
    } else if age >= 2 && age < 6 {
        print("Марш в садик")
    } else if age >= 6 && age < 17 {
        print("Иди в школу, политик мамкин")
    } else if age >= 17 && age < 23 {
        print("Лучшая пара это та, которую отменили")
    } else if age >= 23 && age < 65 {
        print("На работу, чисти вилкой")
    } else if age >= 65 && age < 80 {
        print("Пора кататься в автобусе")
    } else {
        print("https://www.youtube.com/watch?v=j9V78UbdzWI")
    }
}

whereToGoIf(age: 23)

func whereToGoSwitch(age: Int) {
    switch age {
    case 0:
        print("Тебе бы сначала родильное отделение покинуть")
    case 1..<2:
        print("Пока дома посиди")
    case 2..<6:
        print("Марш в садик")
    case 6..<17:
        print("Иди в школу, политик мамкин")
    case 17..<23:
        print("Лучшая пара это та, которую отменили")
    case 23..<65:
        print("На работу, чисти вилкой")
    case 65..<80:
        print("Пора кататься в автобусе")
    default:
        print("https://www.youtube.com/watch?v=dQw4w9WgXcQ")
    }
}

whereToGoIf(age: 100)

// Разные варианты цикла for
let str = "Бесперспективняк"
let arr = ["One", "Two", "Trip"]
let dict = ["Gasan": 23, "NeGasan": 25, "NeGasan2": 27]

for i in 0...10 {
    print(i)
}

for i in 0..<arr.count {
    print(arr[i])
}

for elem in arr {
    print(elem)
}

for char in str {
    print(char)
}

for (key, value) in dict {
    print("\(key) - \(value)")
}

for (key, value) in dict where value == 27 {
    print("\(key) - \(value)")
}

for (index, value) in arr.enumerated() {
    print(index, value)
}

for (key, value) in dict.sorted(by: {$0.value < $1.value}) {
    print(key, value)
}

for index in stride(from: arr.count-1, to: -1, by: -1) {
    print(index, arr[index])
}

// Оцениваем фанатов Алексея Шевцова по шкале от 0 до 12

let mark = 10

switch mark {
case 0..<4:
    print("Очень плохо, ты вообще не смотрел его видео")
case 4..<6:
    print("Тухло, ты смотел только его видео про путешествия")
case 6..<8:
    print("Возможно ты зацепил какие-то его видео про игры, старайся лучше")
case 8..<10:
    print("Неплохо, ты даже иногда смотришь стримы")
case 10...11:
    print("Хорошо, ты смотрел почти все его видео и смотришь стримы. Точка зрения шевцова для тебя единственно правильная, и ты с пеной у рта доказываешь это в комментах")
case 12:
    print("Ты уже успел стать копией шевцова. Донатишь ему, видел его первое видео на канале, где он менял стекло девайса в домашних условиях")
default:
    print("Чет не понял")
}

if mark >= 0 && mark < 4 {
    print("Очень плохо, ты вообще не смотрел его видео")
} else if mark >= 4 && mark < 6 {
    print("Тухло, ты смотел только его видео про путешествия")
} else if mark >= 6 && mark < 8 {
    print("Возможно ты зацепил какие-то его видео про игры, старайся лучше")
} else if mark >= 8 && mark < 10 {
    print("Неплохо, ты даже иногда смотришь стримы")
} else if mark == 10 || mark == 11 {
    print("Хорошо, ты смотрел почти все его видео и смотришь стримы. Точка зрения шевцова для тебя единственно правильная, и ты с пеной у рта доказываешь это в комментах")
} else if mark == 12 {
    print("Ты уже успел стать копией шевцова. Донатишь ему, видел его первое видео на канале, где он менял стекло девайса в домашних условиях")
} else {
    print("Непон")
}

// Выводим имена
var names = ["Polina", "Kirill", "Oleg", "Maryana", "Lev", "Sasha", "Tanya", "Danya", "Vanya", "Gaba"]
var sortedNames = names.sorted(by: <)

for (_, value) in sortedNames.enumerated() {
    print(value)
}
