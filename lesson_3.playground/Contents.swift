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

struct PassangerCar {
    let model: CarModel
    let year: Int
    var doorState: DoorState
    var engine: Engine
    var windows: WindowsState
    var trunkVolume: Int
    var cargo: Int
    mutating func doTrunkAction(action: СargoAction) {
        switch action {
            case  let .load(volume):
                if trunkVolume >= cargo + volume {
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
    
    init() {
        model = .bmw
        year = 2010
        doorState = .close
        engine = .off
        windows = .close
        trunkVolume = 100
        cargo = 50
    }

}

struct Truck {
    let model: CarModel
    let year: Int
    var doorState: DoorState
    var engine: Engine
    var windows: WindowsState
    var trunkVolume: Int
    var cargo: Int
    mutating func doTrunkAction(action: СargoAction) {
        switch action {
            case  let .load(volume):
                if trunkVolume >= cargo + volume{
                    self.cargo += volume
                }else{
                    print("The load does not fit in the trunk")
            }
            case let .unload(volume):
                if cargo >= volume{
                    self.cargo -= volume
                }else{
                    print("The amount of unloaded cargo exceeds the amount of cargo in the trunk")
            }
        }
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

var myPassangerCar: PassangerCar = PassangerCar()
var myTruck = Truck(model: .kamaz, year: 1999, doorState: .open,  engine: .off,  windows: .close, trunkVolume: 880, cargo: 700)
myPassangerCar.cargo = 200
myPassangerCar.doorState = .open
myPassangerCar.windows = .open
myTruck.trunkVolume = 1000
myTruck.doTrunkAction(action: .load(volume: 900))
myTruck.doTrunkAction(action: .unload(volume: 100))


