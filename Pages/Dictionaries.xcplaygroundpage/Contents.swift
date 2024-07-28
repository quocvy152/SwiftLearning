import Foundation

var firstDictionary: [String: String] = [
    "apple": "APPLE",
    "mango": "MANGO",
    "banana": "BANANA",
]

var itemApple: String {
//    if let itemApple = firstDictionary["apple"] {
//        return itemApple
//    } else {
//        return "default fruit"
//    }
    
    guard let itemApple = firstDictionary["apple"] else {
        return "default fruit"
    }
    
    return itemApple
}
print(itemApple)

func getValueOfFuirt() -> String {
    if let itemApple = firstDictionary["apple"] {
        return itemApple
    } else {
        return "default fruit"
    }
}

print(getValueOfFuirt())

firstDictionary.removeValue(forKey: "apple")
print(firstDictionary)
//----------------------------------------------------------------------------------------------------

struct PostModel {
    let id: String
    let title: String
    let likeCount: Int
}

var PostArray: [PostModel] = [
    PostModel(id: "post_01", title: "POST 01", likeCount: 10),
    PostModel(id: "post_02", title: "POST 02", likeCount: 32),
    PostModel(id: "post_03", title: "POST 03", likeCount: 98),
]

////To safety, do not use the code below
//print(PostArray[1])

// Change above code to this code:
if PostArray.indices.contains(1) {
    let itemPost = PostArray[1]
    print(itemPost)
}

var PostDictionary: [String: PostModel] = [
    "post_01": PostModel(id: "post_01", title: "POST 01", likeCount: 10),
    "post_02": PostModel(id: "post_02", title: "POST 02", likeCount: 32),
    "post_03": PostModel(id: "post_03", title: "POST 03", likeCount: 98),
]
