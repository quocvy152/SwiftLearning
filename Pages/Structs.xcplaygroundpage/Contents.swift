import Foundation

// Stucts are fast!
// Struct are stored in the Stack (memory)
// Object in the Stack are Value types
// Value type are copied and mutated

struct Quiz {
    let title: String
    let dateCreated: Date
    let isUserPremium: Bool
    
//    // Structs have an implicit initialize
//    init(title: String, dateCreated: Date){
//        self.title = title
//        self.dateCreated = dateCreated
//    }

    init(title: String, dateCreated: Date?, isUserPremium: Bool?){
        self.title = title
        self.dateCreated = dateCreated ?? .now
        self.isUserPremium = isUserPremium ?? false
    }
}

let quizTitle: String = "This is quiz title!"
let quizElement: Quiz = Quiz(title: quizTitle, dateCreated: nil, isUserPremium: nil)

print(quizElement.title)
print(quizElement.dateCreated)
print(quizElement.isUserPremium)
//----------------------------------------------------------------------------------------------------------------
// How to change field isVIPUser from false to true

// Approach 1: copy to another object because struct use Stack, but this approach must init another UserModel
// because all properties use let
struct UserModel {
    let username: String
    let age: Int
    let isVIPUser: Bool
}

var userOne: UserModel = UserModel(username: "Pham Quoc Vy", age: 24, isVIPUser: false)
print(userOne)

userOne = UserModel(username: "Pham Quoc Vy", age: 24, isVIPUser: true)
print(userOne)

// Approach 2: Use var for all properties from struct UserModelTwo, and just mutate one property instead of copy and create another
// struct
struct UserModelTwo {
    var username: String
    var age: Int
    var isVIPUser: Bool
}
var userTwo: UserModelTwo = UserModelTwo(username: "Pham Quoc Vy", age: 24, isVIPUser: false)
print(userTwo)

userTwo.isVIPUser = true
print(userTwo)

//----------------------------------------------------------------------------------------------------------------
// If you want to create function inside struct and this function can update the property of struct or enum (immutable property),
// you must use keyword mutating before function inside struct or enum
struct UserModelThree {
    var username: String
    var age: Int
    private(set) var isVIPUser: Bool // Only private property when you want set the property and it doesn't have problem when you get // this value
    
    mutating func markUserIsVIP() {
        isVIPUser = true
    }
}
var userThree: UserModelThree = UserModelThree(username: "Pham Quoc Vy", age: 24, isVIPUser: false)
print(userThree)
userThree.markUserIsVIP()
print(userThree)
// The code below will crash app, because the property isVIPUser is private
//userThree.isVIPUser = false
//print(userThree)
