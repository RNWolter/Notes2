//: Playground - noun: a place where people can play

import Cocoa


var numberOfLives = 5



func numberOfLivesLeft(lives: Int){
    
    let string = "you have \(lives) lives left"
    
    if lives > 0 {
        print(string)
    }else {
        print("Game Over")
    }
}
func loseLife(){
    numberOfLives -= 1
    numberOfLivesLeft(lives: numberOfLives)
}

loseLife()
loseLife()
loseLife()
