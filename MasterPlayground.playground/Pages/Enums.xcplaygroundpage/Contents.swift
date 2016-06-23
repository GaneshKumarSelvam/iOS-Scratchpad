//: [Previous](@previous)

import Foundation

/// Defining an enum called Movement with 4 Options
enum Movement {
    case Left
    case Right
    case Top
    case Bottom
}

/// Creating an Instance of Movement
let aMovement = Movement.Left

/// Different Kinds of checking an enums value

switch aMovement {
case .Left: print("Left")
case .Right: print("Right")
default: Void() // you can also just write ()
}

if case .Left = aMovement {print("Left")}
else if case .Right = aMovement {print("Right")}

if aMovement == .Left {print("Left")}


/// Giving enum cases raw values 
// Or to floating point (also note the fancy unicode in enum cases)

enum Constants: Double {
    case π = 3.14159
    case e = 2.71828
    case φ = 1.61803398874
    case λ = 1.30357
}

let pi = Constants.π
pi.rawValue

/// String and Int Values get inferred automatically 
/// You can use Integer,Floating Point, String and Boolean (CGPoint e.g is not supported)
enum PartOfTheDay : String {
    case Day, Night
}

let day : PartOfTheDay = .Day
let night : PartOfTheDay = .Night
print(day.rawValue)
print(day.hashValue)
print(night.hashValue)

/// Getting Enum from RawValue
let dayFromRawValue = PartOfTheDay(rawValue:"Day") // Failable, so it returns an optional
if let dayFromRawOptional = dayFromRawValue {
    print(dayFromRawOptional)
}

//Nesting Enums 
enum Car {
    enum Electric {
        case Radio
        case ESP
        case ABS
    }
    
    enum Mechanic {
        case engine
        case throttle
        case gearbox
    }
    
    case SUV
    case Roadster
    case Pickup
}

let partOfCar = Car.Mechanic.engine
let typeOfCar = Car.Roadster

// Containing Enums 

struct Student {
    enum MoneySource : String {
        case Work
        case Parents
        case Criminal
    }
    
    let moneySource : MoneySource
}

let myself = Student(moneySource: Student.MoneySource.Criminal)
print("MoneySource: \(myself.moneySource.rawValue)")

// Associated Value
enum EmotionalState {
    case fuckedup(because:String)
    case balanced(because:String)
    case sleepy(because:String)
}

let state = EmotionalState.fuckedup(because: "Monday")

// Weirdo
if case let .fuckedup(reason) = state {
    print(reason)
}

if case .fuckedup(let reason) = state {
    print(reason)
}

switch state {
case .fuckedup(let reason): print(reason)
default:()
}


/// Tuples as Arguments 
enum EnumWithAssociatedValue {
    case TestCase(String,Int,String,Int)
}
let tupel = ("Hello",1337,"World",666)
/// This shit is deprecated
let testEnum = EnumWithAssociatedValue.TestCase(tupel)


//: [Next](@next)
