//
//  Product.swift
//  sweater_shop
//
//  Created by Debdutta Panda on 05/08/22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [
    Product(name: "Sweater1", image: "sweater1", price: 54),
    Product(name: "Sweater2", image: "sweater2", price: 55),
    Product(name: "Sweater3", image: "sweater3", price: 56),
    Product(name: "Sweater4", image: "sweater4", price: 57),
    Product(name: "Sweater5", image: "sweater5", price: 58),
    Product(name: "Sweater6", image: "sweater6", price: 59),
    Product(name: "Sweater7", image: "sweater7", price: 60),
    Product(name: "Sweater8", image: "sweater8", price: 61),
    
]
