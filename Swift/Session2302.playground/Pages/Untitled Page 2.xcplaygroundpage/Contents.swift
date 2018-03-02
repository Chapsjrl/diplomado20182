//: [Previous](@previous)

import Foundation

func primo(numero: Int) -> Bool{
    for i in 2..<numero {
        if numero % i == 0 {
            return false
        }
    }
    return true
}

primo(numero: 5)

//: [Next](@next)
