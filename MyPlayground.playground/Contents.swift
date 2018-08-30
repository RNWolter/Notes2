//: Playground - noun: a place where people can play

import Cocoa



var favoriteFood: String? = "Pizza"

favoriteFood = "Cheese"
favoriteFood = "nil"


let foodToOrder = favoriteFood ?? "Bread"

let food: String
if let food = favoriteFood {
    foodToOrder = food
}  else {
    foodToOrder = "Bread"
}
