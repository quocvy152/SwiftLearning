import Foundation

// Functions that return a value
func myFirstFunc() -> String {
    return "This is your first function!"
}
print(myFirstFunc())
let itemReceivceValueFromFirstFunction = myFirstFunc();
print(itemReceivceValueFromFirstFunction)

// Functions that call another function in its scope
func secondFunc() -> Void {
    print("Your second function!")
    thirdFunc()
}

func thirdFunc() {
    print("Your third function!")
}
secondFunc()

//------------------------------------------------------------------------------------------------------------
func checkStateUser(userCompleteOnboarding: Bool, userCreatedProfile: Bool) -> Bool {
    if userCompleteOnboarding && userCreatedProfile {
        return true
    } else {
        return false
    }
}

func showFirstScreen() {
    let isUserCompleteOnboarding: Bool = false
    let isUserCreatedProfile: Bool = true
    
    if checkStateUser(userCompleteOnboarding: isUserCompleteOnboarding, userCreatedProfile: isUserCreatedProfile) {
        print("HOMESCREEN IS SHOW!")
    } else {
        print("ONBOARDING IS SHOW!")
    }
}

showFirstScreen()

//------------------------------------------------------------------------------------------------------------
func checkTitleOfMovie(titleMovie: String) -> Bool {
    guard titleMovie == "Lat Mat 7! Mot Dieu Uoc!" else {
        return false
    }
    
    return true
}

print(checkTitleOfMovie(titleMovie: "Avengers!"))


let numberOne = 1
let numberTwo = 2
var calculateNumber: Int {
    return numberOne + numberTwo
}
print(calculateNumber)

