import UIKit

protocol StartWriteCode {
    var time: Int { get set }
    var stringsCount: Int { get set }
    
    func writeCode()
}

protocol EndWriteCode {
    func stopCoding()
}

class Dev: StartWriteCode, EndWriteCode {
    var time: Int
    var stringsCount: Int
    var specializations: [String]
    var projectsCount: Int {
        stringsCount / 100
    }
    private var isWorkInProgress: Bool = false
    
    init(time: Int, stringsCount: Int, specializations: [String]) {
        self.time = time
        self.stringsCount = stringsCount
        self.specializations = specializations
    }
    
    func writeCode() {
        if !isWorkInProgress {
            isWorkInProgress = true
            print("Разработка началась. Пишем код")
        } else {
            print("Продолжаем работу")
        }
    }
    
    func stopCoding() {
        if !isWorkInProgress {
            print("Мы еще не начинали работу")
        } else {
            isWorkInProgress = false
            var previousValue = stringsCount
            stringsCount += Int.random(in: 1...100)
            print("Разработка закончена. Было написано \(stringsCount - previousValue) строк кода.")
        }
    }
}

var developer = Dev(time: 24, stringsCount: 400, specializations: ["iOS Dev", "QA Auto"])

developer.writeCode()
developer.writeCode()
developer.stopCoding()
print(developer.projectsCount)
