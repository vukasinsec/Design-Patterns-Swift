//
//  main.swift
//  Singleton Design Pattern
//
//  Created by Vukasin Dobromirovic on 25.8.23..
//

import Foundation

//func main(){
//
//    let s1 = Singleton.Instance()
//    let s2 = Singleton.Instance()
//
//    if( s1 === s2 )
//    {
//        print("Objects are the same.")
//    }
//
//
//}
//
//main()

//final class Singleton {
//    static let instance = Singleton()
//
//    private init() {}
//
//    var customerProfile: CustomerProfile?
//}


func main(){
    // Primjer korištenja
    let profile1 = CustomProfile.shared
    profile1.setProfile(name: "John", age: 30)
    
    let profile2 = CustomProfile.shared // Ovo neće stvoriti novi objekt, već će koristiti postojeći
    print(profile2.getProfile()) // Ispis: Name: John, Age: 30
    
    profile2.setProfile(name: "Alice", age: 25) // Ovo će promijeniti vrijednosti u postojećem objektu
    
    print(profile1.getProfile()) // Ispis: Name: Alice, Age: 25
    print(profile2.getProfile()) // Ispis: Name: Alice, Age: 25
    
}
main()
