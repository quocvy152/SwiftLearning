import Foundation

let firstItem: Bool? = false

let secondItem: Bool? = nil
var thirdItem: String
thirdItem = (secondItem ?? false) ? "Use value from second item" : "Default value"
print(thirdItem)

//--------------------------------------------------------------------------------------------------------------
var isUserPremium: Bool? = false

func checkUser() {
    // This statements mean if isUserPremium has value then let newValue equal that value
    if let newValue = isUserPremium {
        print("newValue:", newValue)
    } else {
        print("newValue doesn't have value")
    }
}
checkUser()

func checkUser2() -> Bool {
    if let isUserPremium {
        return true
    } else {
        return false
    }
}
checkUser2()

func checkUser3() -> Bool {
    guard let newValue = isUserPremium else {
        return false
    }
    
    return true
}
checkUser3()

//--------------------------------------------------------------------------------------------------------------
// Optionals chainning

func getUserName() -> String? {
//    return nil
    return "Username!"
}

func getTitle() -> String {
    return "Title!"
}

let count = getUserName()?.count // result: nil (if function getUserName return nil)
print(count)
let count2 = getTitle().count
print(count2)
