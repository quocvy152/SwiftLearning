import Foundation

struct CarBrand {
    let brandName: String
    let model: String
}

let carBrand1: CarBrand = CarBrand(brandName: "Mercedes", model: "C200")
let carBrand2: CarBrand = CarBrand(brandName: "Mercedes", model: "S450")
print(carBrand1)
print(carBrand2)

// Enums is immutable
enum CarBrandOptions {
    case Mercedes, Honda, Toyota, Huyndai

    // => Can custom to another way syntax like code below:
//    case Mercedes
//    case Honda
//    case Toyota
//    case Huyndai
    
    
    var getTitle: String {
//        // This way may be missing some case in enum
//        if self == .Mercedes {
//            return "MERCEDES"
//        } else if self == .Huyndai {
//            return "HUYNDAI"
//        } else if self == .Honda {
//            return "HONDA"
//        } else if self == .Toyota {
//            return "TOYOTA"
//        } else {
//            return "DEFAULT"
//        }
        
        switch self {
            case .Mercedes:
                return "MERCEDES"
            case .Huyndai:
                return "HUYNDAI"
            case .Honda:
                return "HONDA"
            case .Toyota:
                return "TOYOTA"
            default:
                return "DEFAULT"
        }
    }
}

let carBrand3: CarBrandOptions = .Honda
print(carBrand3)
print(carBrand3.getTitle)

struct CarBrandUpgrade {
    let brandName: CarBrandOptions
    let model: String
}

let carBrandUpgrade1: CarBrandUpgrade = CarBrandUpgrade(brandName: CarBrandOptions.Honda, model: "Toyota Innova")
print(carBrandUpgrade1.brandName)
print(carBrandUpgrade1.brandName.getTitle)
print(carBrandUpgrade1.model)
