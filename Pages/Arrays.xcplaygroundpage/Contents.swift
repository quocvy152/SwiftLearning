import Foundation

struct TitleModel {
    let title1: String
    let title2: String
}

func doSomething(titleModel: TitleModel){
    print(titleModel.title1)
    print(titleModel.title2)
}

let title1: String = "Hello!"
let title2: String = "Everybody!"

doSomething(titleModel: TitleModel(title1: title1, title2: title2))

let titles: [String] = [title1, title2]
var sports: [String] = ["soccer", "tennis", "running", "basketball"]
let sports2: Array<String> = ["soccer", "tennis", "running", "basketball"]

func doSomething2(sports: [String]){
    print(sports.first ?? "football")
    print(sports.last ?? "volleyball")
}

doSomething2(sports: sports)

sports.append("volleyball")
print(sports)

sports.append(contentsOf: ["hockey", "swimming"])
print(sports)

sports.insert(contentsOf: ["shooting", "badminton"], at: 1)
print(sports)

sports.remove(at: 1)
print(sports)

var fruitList: Set<String> = ["Apple", "Mango", "Durian", "Apple"]
print(fruitList)
