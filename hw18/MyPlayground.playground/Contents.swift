import UIKit

var arr:[Any] = []

class People {
    var name: String
    var gender: Sex
    var parents: [People]? = []
    var kids: [People]? = []
    var rodnya: [People]? = []
    var siblings: [People]? {
        get {
            if var siblings = self.parents?[0].kids {
                siblings.removeAll {$0 === self}
                return siblings
            }
            else {
                return nil
            }
        }
    }
    
    init(name: String, gender: Sex) {
        self.name = name
        self.gender = gender
        arr.append(self)
    }
    
    func appendRelate(name: String, relate: People) {
        switch name {
        case "parent":
            self.parents?.append(relate)
            relate.kids?.append(self)
        case "rodnya":
            self.rodnya?.append(relate)
            relate.rodnya?.append(self)
        case "kid":
            self.kids?.append(relate)
            relate.parents?.append(self)
        default:
            print("Net takogo")
        }
    }
}

enum Sex {
    case male
    case female
    case yes
}

// Serega parents
var vovaSF = People(name: "Vova", gender: Sex.male)
var lenaSM = People(name: "Lena", gender: Sex.female)

// Lena/Vova kids
var sergei = People(name: "Sergei", gender: Sex.male)
var vladSB = People(name: "Vlad", gender: Sex.male)
var sonyaSS = People(name: "Sonya", gender: Sex.female)
var leraSS = People(name: "Lera", gender: Sex.female)

// Serega/ kids
var dimaSC = People(name: "Dima", gender: Sex.male)
var sashaSC = People(name: "Sasha", gender: Sex.female)

// Vova parents
var lusyaSA = People(name: "Lusya", gender: Sex.female)
var petyaSU = People(name: "Petya", gender: Sex.male)

// Vova Siblings
var senyaSB = People(name: "Senya", gender: Sex.male)
var denisSB = People(name: "Denis", gender: Sex.male)
var danSB = People(name: "Dan", gender: Sex.male)

// Lena parents
var gagikSU = People(name: "Gagik", gender: Sex.male)
var mashaSA = People(name: "Masha", gender: Sex.female)

// Lena Siblings
var iraSS = People(name: "Ira", gender: Sex.female)
var zhenyaSS = People(name: "Zhenya", gender: Sex.female)

// Cheboksary
var jokaSB = People(name: "Joka", gender: Sex.male)
var bokaSB = People(name: "Boka", gender: Sex.male)
var tanyaSA = People(name: "Vaho", gender: Sex.female)
var timaSC = People(name: "Tima", gender: Sex.male)

// Заносим теперь всю эту домовую книгу
sergei.appendRelate(name: "parent", relate: vovaSF)
sergei.appendRelate(name: "parent", relate: lenaSM)
sergei.appendRelate(name: "kid", relate: dimaSC)
sergei.appendRelate(name: "kid", relate: sashaSC)

vovaSF.appendRelate(name: "parent", relate: lusyaSA)
vovaSF.appendRelate(name: "parent", relate: petyaSU)
vovaSF.appendRelate(name: "kid", relate: vladSB)
vovaSF.appendRelate(name: "kid", relate: sonyaSS)

lenaSM.appendRelate(name: "parent", relate: gagikSU)
lenaSM.appendRelate(name: "parent", relate: mashaSA)
lenaSM.appendRelate(name: "kid", relate: vladSB)
lenaSM.appendRelate(name: "kid", relate: sonyaSS)

lusyaSA.appendRelate(name: "kid", relate: senyaSB)
lusyaSA.appendRelate(name: "kid", relate: denisSB)
lusyaSA.appendRelate(name: "kid", relate: danSB)
petyaSU.appendRelate(name: "kid", relate: senyaSB)
petyaSU.appendRelate(name: "kid", relate: denisSB)
petyaSU.appendRelate(name: "kid", relate: danSB)

gagikSU.appendRelate(name: "kid", relate: iraSS)
gagikSU.appendRelate(name: "kid", relate: zhenyaSS)
mashaSA.appendRelate(name: "kid", relate: iraSS)
mashaSA.appendRelate(name: "kid", relate: zhenyaSS)

sergei.appendRelate(name: "rodnya", relate: bokaSB)

danSB.appendRelate(name: "kid", relate: leraSS)
tanyaSA.appendRelate(name: "kid", relate: leraSS)

zhenyaSS.appendRelate(name: "kid", relate: jokaSB)

senyaSB.appendRelate(name: "kid", relate: timaSC)

func countBrothers(person: People) {
    if var siblings = person.parents?[0].kids {
        siblings.removeAll() {$0 === person}
        siblings.removeAll() {$0.gender == Sex.female}
        print(siblings.count)
    } else {
        print("No kids")
    }
}

func countSisters(person: People) {
    if var siblings = person.parents?[0].kids {
        siblings.removeAll() {$0 === person}
        siblings.removeAll() {$0.gender == Sex.male}
        print(siblings.count)
    } else {
        print("No kids")
    }
}

countBrothers(person: sergei)
countSisters(person: sergei)

func countCousins(person: People) {
    var count = 0
    if var parents = person.parents {
        for parent in parents {
            if var parSib = parent.siblings {
                for sib in parSib {
                    if var parSibKids = sib.kids {
                        parSibKids.removeAll() {$0.gender == Sex.female}
                        count += parSibKids.count
                    }
                }
            }
        }
    }
    print(count)
}

func countFemaleCousins(person: People) {
    var count = 0
    if var parents = person.parents {
        for parent in parents {
            if var parSib = parent.siblings {
                for sib in parSib {
                    if var parSibKids = sib.kids {
                        parSibKids.removeAll() {$0.gender == Sex.male}
                        count += parSibKids.count
                    }
                }
            }
        }
    }
    print(count)
}

countCousins(person: sergei)
countFemaleCousins(person: sergei)

func countUncles(person: People) {
    var count = 0
    if var parents = person.parents {
        for parent in parents {
            if var parSibs = parent.siblings {
                parSibs.removeAll() {$0.gender == Sex.female}
                count += parSibs.count
            }
        }
    }
    print(count)
}

func countAunties(person: People) {
    var count = 0
    if var parents = person.parents {
        for parent in parents {
            if var parSibs = parent.siblings {
                parSibs.removeAll() {$0.gender == Sex.male}
                count += parSibs.count
            }
        }
    }
    print(count)
}

countUncles(person: sergei)
countAunties(person: sergei)

class Animal {
    var name: String
    var legs: Int
    init(name: String, legs: Int) {
        self.name = name
        self.legs = legs
        arr.append(self)
    }
}

var dog = Animal(name: "Dog", legs: 4)
var cow = Animal(name: "Cow", legs: 4)
var goat = Animal(name: "Goat", legs: 4)
var monkey = Animal(name: "Monkey", legs: 2)

class Plant {
    var name: String
    var color: String
    init(name: String, color: String) {
        self.name = name
        self.color = color
        arr.append(self)
    }
}

var rose = Plant(name: "Rose", color: "Red")
var pansies = Plant(name: "Pansies", color: "Yellow")
var hyacinth = Plant(name: "hyacinth", color: "Purple")

arr.sort{ (i: Any, j: Any) -> Bool in
    if let i = i as? People, let j = j as? People {
        return i.name < j.name
    } else if let i = i as? Animal, let j = j as? Animal {
        return i.name < j.name
    } else if let i = i as? Plant, let j = j as? Plant {
        return i.name < j.name
    } else if i is People && (j is Animal || j is Plant) {
        return true
    } else {
        return false
    }
}

for el in arr {
    if el is People {
        let i = el as? People
        print(i?.name)
    } else if el is Animal {
        let i = el as? Animal
        print(i?.name)
    } else {
        let i = el as? Plant
        print(i?.name)
    }
}
