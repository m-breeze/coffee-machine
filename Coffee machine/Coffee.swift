//
//  Coffee.swift
//  Coffee machine
//
//  Created by Marina Khort on 24.06.2020.
//  Copyright © 2020 Marina Khort. All rights reserved.
//

import Foundation

class Coffee {
    var water, milk, beans, money: Int
    var cups = 1

    
    init(water: Int, milk: Int, beans: Int, money: Int) {
        self.water = water
        self.milk = milk
        self.beans = beans
        self.money = money
	
    }
}
