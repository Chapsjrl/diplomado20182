//: [Previous](@previous)

import Foundation

extension Int{
    func primo() -> Bool{
        for i in 2..<self {
            if self % i == 0 {
                return false
            }
        }
        return true
    }
    
}

//: No funciona con

func fibonacci(valuesOf: Int){
    var a: Int = 1 , b: Int = 1, c: Int
    print(a)
    print(b)
    for _ in 3...valuesOf {
        c = a+b
        a = b
        b = c
        if(b.primo()){
            print(b)
        }
    }
    
}

fibonacci(valuesOf: 3)

//: No funciona con espacios

func palindromo(palabra: String) -> Bool{
    let lower_palabra: String = palabra.lowercased()
    let reverse: String = String(lower_palabra.reversed())
    if (reverse == lower_palabra) {
        return true
    }
    return false
//    return palabra == String(palabra.reversed())
}

palindromo(palabra: "Racecar")

//: No funciona con caracteres repetidos
func comparadora(coparar: String, con: String) -> Bool{
    let first: String = coparar.lowercased()
    let second: String = con.lowercased()
    if(first == second){
        return true
    }
    var count: Int = 0
    if (first.count == second.count){
        for c in first{
            for c2 in second{
                if(c == c2){
                    count += 1
                }
            }
        }
        if (count == first.count){
            return true
        }
    }
    return false
}

//comparadora(coparar: "aini", con: "anii")
//: [Next](@next)
