//
//  Singleton.swift
//  Singleton Design Pattern
//
//  Created by Vukasin Dobromirovic on 25.8.23..
//

import Foundation

class Singleton {
    
    private static var instance : Singleton?
    
    // private constructor
    private init(){}
    
    static func Instance() -> Singleton {
        
        if instance == nil {
            instance = Singleton()
        }
        
        return instance!
    }
    
    
    
}


