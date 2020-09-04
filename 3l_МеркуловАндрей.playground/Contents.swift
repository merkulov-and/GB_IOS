import UIKit
/*
1. Описать несколько структур – любой легковой автомобиль и любой грузовик.
2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
6. Вывести значения свойств экземпляров в консоль.
*/

enum engineState {
    case start, stop
}

enum AreWindowsOpen {
    case open, close
}

enum trunkState {
    case full, empty
}

struct car {
    let brandAuto : String
    var color : String
    mutating func changeColor(c:String) {
        switch c {
        case "Белый":
            self.color = "Белый"
        case "Синий":
            self.color = "Синий"
        case "Черный":
            self.color = "Черный"
        case "Красный":
            self.color = "Красный"
        default:
            print("Ошибка")
        }
    }
    let yearOfManufacture : Int
    var trunkVolume : Double {
        willSet {
            if (trunkState == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print ("\(brandAuto) багажник свободен: \(space)")
            } else { print("Ошибка \(brandAuto) багажник полный.")}
        }
    }
    var engineState : engineState {
        willSet {
            if newValue == .start {
                print ("\(brandAuto) заведен")
            } else {print("\(brandAuto) заглушен")}
        }
    }
    var AreWindowsOpen : AreWindowsOpen {
        willSet {
            if newValue == .open {
                print("\(brandAuto) окна открыты")
            } else { print("\(brandAuto) окна закрыты") }
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunck() {
        self.trunkState = .empty
        print ("\(brandAuto) багажник пустой")
    }
}


var car1 = car(brandAuto: "Mazda",  color: "clear", yearOfManufacture: 2016, trunkVolume: 580.0 , engineState: .stop, AreWindowsOpen: .open, trunkState: .empty)
var car2 = car(brandAuto: "Reno",  color: "clear", yearOfManufacture: 2017, trunkVolume: 480.0, engineState: .stop, AreWindowsOpen: .close, trunkState: .full)


car1.engineState = .start
car1.trunkVolume = 340.0
car1.changeColor(c: "Красный")
car2.trunkVolume = 890.0
car2.emptyTrunck()
car2.trunkVolume = 80.9
car2.AreWindowsOpen = .open
car2.changeColor(c: "Черный")
