import Foundation

struct Product: ProductProtocol {
    let price: Int
    let name: String
}

protocol ProductProtocol {
    let name: String
}

let itemProduct: Product = Product(price: 100, name: "Nike")
