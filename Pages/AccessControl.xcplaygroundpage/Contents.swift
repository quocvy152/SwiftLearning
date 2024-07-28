import Foundation

enum MovieGenre {
    case horror, comedy, action
}

struct MovieModel {
    let title: String
    let genre: MovieGenre
    var isFavourite: Bool
    
    func updateStatusFavourite(newStatus: Bool) -> MovieModel {
        MovieModel(title: title, genre: genre, isFavourite: newStatus)
    }
    
    mutating func updateStatusFavourite2(newStatus: Bool) {
        isFavourite = newStatus
    }
}

class MovieManager {
    public var movieModel1: MovieModel = MovieModel(title: "Marvel", genre: .action, isFavourite: false)
    
    private var movieModel2: MovieModel = MovieModel(title: "Mr. Bean", genre: .comedy, isFavourite: false)
    
    private(set) var movieModel3: MovieModel = MovieModel(title: "The Valax", genre: .horror, isFavourite: false)
    
    func updateStatusMovie2(newStatus: Bool){
        movieModel2.isFavourite = newStatus
    }
    
    func getStatusMovie2() -> Bool {
        movieModel2.isFavourite
    }
    
    func updateStatusMovie3(newStatus: Bool){
        movieModel3.isFavourite = newStatus
    }
}

let movieManager: MovieManager = MovieManager()

print(movieManager.movieModel1.isFavourite)

movieManager.movieModel1 = movieManager.movieModel1.updateStatusFavourite(newStatus: true)
print(movieManager.movieModel1.isFavourite)

movieManager.movieModel1.updateStatusFavourite2(newStatus: false)
print(movieManager.movieModel1.isFavourite)

print(movieManager.movieModel3.isFavourite)
//movieManager.movieModel3.isFavourite = true

movieManager.updateStatusMovie3(newStatus: true)
print(movieManager.movieModel3.isFavourite)

movieManager.updateStatusMovie2(newStatus: true)
print(movieManager.getStatusMovie2())

// Note: public and private are basic common in Access Control
// open
// fileprivate
// internal


