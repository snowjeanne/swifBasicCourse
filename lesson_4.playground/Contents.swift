import UIKit

enum DoorState {
    case open, close
}

enum WindowsState {
    case open, close
}

enum CarModel {
    case lada, bmw, mercedes, lexus, kamaz, audi, chevrolet, volvo
}

enum Engine {
    case on, off
}

enum СargoAction {
    case load(volume: Int)
    case unload(volume: Int)
}

enum roofTop {
    case open, close
}

enum tentState {
    case withTent, withoutTent
}

class Car {
    let model: CarModel
    let year: Int
    var doorState: DoorState
    var engine: Engine
    var windows: WindowsState
    var trunkVolume: Int
    var cargo: Int
    func doTrunkAction(action: СargoAction) {
        switch action {
        case  let .load(volume):
            if trunkVolume >= cargo + volume{
                self.cargo += volume
            } else {
                print("The load does not fit in the trunk")
            }
        case let .unload(volume):
            if cargo >= volume{
                self.cargo -= volume
            } else {
                print("The amount of unloaded cargo exceeds the amount of cargo in the trunk")
            }
        }
    }
    func carInfo () {
        print ("Информация об автомобиле: марка: \(model), год выпуска: \(year), объем багажника: \(trunkVolume),  на текущий момент статус двигателя: \(engine), статус окон: \(windows)")
    }
        init(model: CarModel,  year: Int, doorState: DoorState,  engine: Engine,  windows: WindowsState, trunkVolume: Int, cargo: Int) {
            self.model = model
            self.year = year
            self.doorState = doorState
            self.engine = engine
            self.windows = windows
            self.trunkVolume = trunkVolume
            self.cargo = cargo
        }
        
    }
    
    class SportCar: Car {
        var roofState: roofTop
        let SecToHundred: Int
        override func carInfo () {
            print ("Информация об автомобиле: марка: \(model), год выпуска: \(year), объем багажника: \(trunkVolume),  на текущий момент статус двигателя: \(engine), статус окон: \(windows), секунд до 100 км/ч: \(SecToHundred), крыша в режиме: \(roofState) ")
        }
        
        init(model: CarModel,  year: Int, doorState: DoorState,  engine: Engine,  windows: WindowsState, trunkVolume: Int, cargo: Int, roofState: roofTop, SecToHundred: Int) {
            
            self.roofState = roofState
            self.SecToHundred = SecToHundred
            super.init(model: model, year: year, doorState: doorState, engine: engine, windows: windows, trunkVolume: trunkVolume, cargo: cargo)
            
        }
        
    }
    
    class TrunkCar: Car {
        var trailerState: tentState
        override func carInfo () {
            print ("Информация об автомобиле: марка: \(model), год выпуска: \(year), объем багажника: \(trunkVolume),  на текущий момент статус двигателя: \(engine), статус окон: \(windows), прицеп: \(trailerState) ")
        }
        init(model: CarModel,  year: Int, doorState: DoorState,  engine: Engine,  windows: WindowsState, trunkVolume: Int, cargo: Int, trailerState: tentState){
            
            self.trailerState = trailerState
            super.init(model: model, year: year, doorState: doorState, engine: engine, windows: windows, trunkVolume: trunkVolume, cargo: cargo)
        }
        
    }
    
    var myTruck = TrunkCar(model: .kamaz, year: 1999, doorState: .open,  engine: .off,  windows: .close, trunkVolume: 880, cargo: 700, trailerState: .withoutTent)
    var mySportCar = SportCar(model: .bmw, year: 2010, doorState: .open,  engine: .on,  windows: .open, trunkVolume: 300, cargo: 100, roofState: .close, SecToHundred: 7)
    mySportCar.cargo = 200
    mySportCar.doorState = .open
    mySportCar.windows = .open
    myTruck.trunkVolume = 1000
    myTruck.doTrunkAction(action: .load(volume: 900))
    myTruck.doTrunkAction(action: .unload(volume: 100))
    myTruck.carInfo()
    mySportCar.carInfo()
    
    
