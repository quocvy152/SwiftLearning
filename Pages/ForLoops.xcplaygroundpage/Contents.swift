import Foundation

for index in 0 ..< 50{
    print(index)
}

let arrOne: [String] = ["hello", "world", "sheep", "knite"]

for item in arrOne {
    print(item)
}

struct SportModel {
    let name: String
    let competitor: Int
}

var arrSport: [SportModel] = [
    SportModel(name: "football", competitor: 22),
    SportModel(name: "vollyball", competitor: 12),
    SportModel(name: "basketball", competitor: 6),
]

for (index, sport) in arrSport.enumerated() {
    print(index, sport.name)
}
