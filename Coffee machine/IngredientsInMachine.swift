//
//  CoffeeMachine.swift
//  Coffee machine
//
//  Created by Marina Khort on 24.06.2020.
//  Copyright © 2020 Marina Khort. All rights reserved.
//

import Foundation

class IngredientsInMachine {
    var water, milk, beans, cups, money: Int

    init(water: Int, milk: Int, beans: Int, cups: Int, money: Int) {
        self.water = water
        self.milk = milk
        self.beans = beans
        self.cups = cups
        self.money = money
    }
}
