import Foundation

struct PlayerModel {
    let username: String
    let age: Int
    let isGoat: Bool
}

var listPlayer: [PlayerModel] = [
    PlayerModel(username: "Nico William", age: 22, isGoat: false),
    PlayerModel(username: "CR7", age: 39, isGoat: true),
    PlayerModel(username: "Messi", age: 37, isGoat: true),
    PlayerModel(username: "Mbappe", age: 26, isGoat: false),
    PlayerModel(username: "Rodri", age: 26, isGoat: false),
    PlayerModel(username: "Endrick", age: 17, isGoat: false),
]

var listPlayerGoat: [PlayerModel] = []

for player in listPlayer {
    if player.isGoat { listPlayerGoat.append(player) }
}

print(listPlayerGoat)

var listPlayerGoat2: [PlayerModel] = listPlayer.filter({ player in player.isGoat })
print(listPlayerGoat2)

var listPlayerGoat3: [PlayerModel] = listPlayer.filter { $0.isGoat }
print(listPlayerGoat3)

var listPlayerSorted: [PlayerModel] = listPlayer.sorted { playerPrev, playerCurrent in
    playerPrev.age > playerCurrent.age
}

print(listPlayerSorted)

var listPlayerSorted2: [PlayerModel] = listPlayer.sorted { $0.age > $1.age }
print(listPlayerSorted2)

var listPlayerTransformNameToUpper: [PlayerModel] = listPlayer.map({
    player in PlayerModel(
        username: player.username.uppercased(),
        age: player.age,
        isGoat: player.isGoat
    )
})
print(listPlayerTransformNameToUpper)
