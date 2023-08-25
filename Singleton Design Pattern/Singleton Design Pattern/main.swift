//
//  main.swift
//  Singleton Design Pattern
//
//  Created by Vukasin Dobromirovic on 25.8.23..
//

import Foundation

func main(){
    
    let s1 = Singleton.Instance()
    let s2 = Singleton.Instance()
    
    if( s1 === s2 )
    {
        print("Objects are the same.")
    }
    
    
}

main()
