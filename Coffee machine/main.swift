//
//  main.swift
//  Coffee machine
//
//  Created by Marina Khort on 01.02.2020.
//  Copyright © 2020 Marina Khort. All rights reserved.
//

import Foundation

var machine = CoffeeMachine()
machine.input(option: machine.service.changingStates().rawValue)






//var service = CoffeeService()
//var working = true
//
//while working {
//service.useMachine(option: service.selectAction())
//}






//print("Write how many ml of water the coffee machine has:")
//var a = Int(readLine(strippingNewline: true)!)!
//print("Write how many ml of milk the coffee machine has:")
//var b = Int(readLine(strippingNewline: true)!)!
//print("Write how many grams of coffee beans the coffee machine has:")
//var c = Int(readLine(strippingNewline: true)!)!
//print("Write how many cups of coffee you will need:")
//var d = Int(readLine(strippingNewline: true)!)!
//
//var water = 200
//var milk = 50
//var beans = 15
//
//var cupsByWater = a/water
//var cupsByMilk = b/milk
//var cupsByBeans = c/beans
//
//var possibleCupsAmount: [Int] = [cupsByWater, cupsByMilk, cupsByBeans]
//var cupsLeave = possibleCupsAmount.min()! - d
//
//if cupsByWater < d || cupsByMilk < d || cupsByBeans < d {
//    print("No, I can make only \(String(describing: possibleCupsAmount.min()!)) cup(s) of coffee")
//}
//
//if cupsByWater >= d, cupsByMilk >= d, cupsByBeans >= d {
//    print("Yes, I can make that amount of coffee (and even \(String(describing: cupsLeave)) more than that)")
//}



