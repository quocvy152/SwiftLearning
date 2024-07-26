import Foundation

var userName: String = "Pham Quoc Vy"
var isUserPremium: Bool = true
var isUserNew: Bool = false

func getUserName() -> String {
    return userName
}

func getUserPremium() -> Bool {
    return isUserPremium
}

func getUserNew() -> Bool {
    return isUserNew
}

// Tuples type
func getUserByTuples() -> (String, Bool) {
    let name: String = getUserName()
    let isPremium: Bool = getUserPremium()
    
    return (name, isPremium)
}
print(getUserByTuples())

var userData: (String, Bool, Bool) = (userName, isUserPremium, isUserNew)

func getInfoUser() -> (userNameParam: String, isPremiumParam: Bool, isNewParam: Bool) {
    let name: String = getUserName()
    let isPremium: Bool = getUserPremium()
    let isNew: Bool = getUserNew()
    
    return (name, isPremium, isNew)
}
var infoUser = getInfoUser()
var userNameAfter: String = infoUser.userNameParam
print("userNameAfter", userNameAfter)

func doSomethingWithInfoUser(info: (userNameParam: String, isPremiumParam: Bool, isNewParam: Bool)){
    print("INFO USER: ", info.userNameParam, info.isPremiumParam, info.isNewParam)
}
doSomethingWithInfoUser(info: infoUser)
