import Foundation

class ScreenViewModel {
    let title: String
    private(set) var isShowButtonLogin: Bool
    
    init(title: String, isShowButtonLogin: Bool) {
        self.title = title
        self.isShowButtonLogin = isShowButtonLogin
    }
    
    func showButton() {
        isShowButtonLogin = true
    }
    
    func hideButton() {
        isShowButtonLogin = false
    }
}

let myScreen: ScreenViewModel = ScreenViewModel(title: "LoginScreen", isShowButtonLogin: false)
//myScreen.isShowButtonLogin = true
//print("isShowButtonLogin", myScreen.isShowButtonLogin)

myScreen.showButton()
print("isShowButtonLogin", myScreen.isShowButtonLogin)

myScreen.hideButton()
print("isShowButtonLogin", myScreen.isShowButtonLogin)
