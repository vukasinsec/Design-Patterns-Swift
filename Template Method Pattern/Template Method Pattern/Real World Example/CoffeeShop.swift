//
//  CoffeeShop.swift
//  Template Method Pattern
//
//  Created by Vukasin Dobromirovic on 26.8.23..
//

import Foundation


protocol CoffeeShop {
    
    func templateMethod() // skeleton of an algorithm
    func prepareStuff()
    func boilWater()
    func addCondiments()
    func pourInCup()
    func serve()
    func addMilk()
    func addCinnamon()
    
}

extension CoffeeShop {
    
    func templateMethod() {
        prepareStuff()
        boilWater()
        addCondiments()
        addMilk()
        addCinnamon()
        pourInCup()
        serve()
    }
    
    func prepareStuff() {
        print("Turn on the stove and place the pots on it. Get a cup and a spoon ready.")
    }
    
    func boilWater() {
        print("I turn on the stove and heat the water close to 90 degrees Celsius.")
    }
    
    func pourInCup()
    {
        print("'Pouuring' in the cup. ")
    }
    func serve(){
        print("Serving a drink..")
    }
    
    func addCinnamon(){}
    func addMilk(){}
    
}

class Coffee : CoffeeShop
{
    func addCondiments() {
        print("I'm pouring two teaspoons of coffee..")
    }
    
    func addMilk() {
        print("Adding cold milk..")
    }
}

class Tea : CoffeeShop {
    func addCondiments() {
        print("\nAdding tea bag..")
    }
    
    func addCinnamon() {
        print("Adding sweet cinnamon..")
    }
    
    
}

class ClientRW {
    
    static func clientCode(use object: CoffeeShop)
    {
        object.templateMethod()
    }
    
}

