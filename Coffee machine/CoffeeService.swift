//
//  CoffeeService.swift
//  Coffee machine
//
//  Created by Marina Khort on 24.06.2020.
//  Copyright © 2020 Marina Khort. All rights reserved.
//

import Foundation

class CoffeeService {
    var machine: IngredientsInMachine = IngredientsInMachine(water: 400, milk: 540, beans: 120, cups: 9, money: 550)

    var espresso = Coffee(water: 250, milk: 0, beans: 16, money: 4)
    var latte = Coffee(water: 350, milk: 75, beans: 20, money: 7)
    var cappuccino = Coffee(water: 200, milk: 100, beans: 12, money: 6)

	enum States: String {
        case WAITING
        case CHOOSING
        case FILLING
        case TAKING
        case REMAINING
        case EXITING
    }
    
	var currentState = States.WAITING
    
    func changingStates() -> States {
        repeat {
            print("\n\(currentState)")
            print("Write action (buy, fill, take, remaining, exit):")
            let action = readLine(strippingNewline: true)!
            
            switch action {
            case "buy":
                currentState = .CHOOSING
                print("\n\(currentState)")
                buy()
            case "fill":
                currentState = .FILLING
                print("\n\(currentState)")
                fill()
            case "take":
                currentState = .TAKING
                print("\n\(currentState)")
                take()
            case "remaining":
                currentState = .REMAINING
                print("\n\(currentState)")
                remain()
            case "exit":
                currentState = .EXITING
                print("\n\(currentState)")
                exitMachine()                
            default:
                print("Error found")
            }
        } while currentState != States.EXITING
		
		return currentState
    }
    
    func selectCoffeeType() -> String {
        print("What do you want to buy?\n1 - espresso,\n2 - latte,\n3 - cappuccino,\nback - to main menu:")
        let choice = readLine(strippingNewline: true)!
        return choice
    }
    
    func needIngredientsAmount(needWater: Int, needMilk: Int?, needBeans: Int, needCups: Int) -> Bool {
        if machine.water < needWater {
            print("Sorry, not enough water!\n")
            return false
        }
        if machine.milk < needMilk! {
            print("Sorry, not enough milk!\n")
            return false
        }
        if machine.beans < needBeans {
            print("Sorry, not enough beans!\n")
            return false
        }
        if machine.cups < needCups {
            print("Sorry, not enough cups!\n")
            return false
        }
        if machine.water >= needWater, machine.milk >= needMilk!, machine.beans >= needBeans, machine.cups >= needCups {
            print("I have enough resourses, making you a coffee!\n")
            return true
        }
        return true
    }
    
    func buy() {
        let selection = selectCoffeeType()

        if selection == "1" {
            if needIngredientsAmount(needWater: 250, needMilk: 0, needBeans: 16, needCups: 1) {
                machine.water = machine.water - espresso.water
                machine.beans = machine.beans - espresso.beans
                machine.cups = machine.cups - espresso.cups
                machine.money = machine.money + espresso.money
                } else {
                machine.water = machine.water
                machine.beans = machine.beans
                machine.cups = machine.cups
                machine.money = machine.money
                }
            }
        if selection == "2" {
            if needIngredientsAmount(needWater: 350, needMilk: 75, needBeans: 20, needCups: 1) {
            machine.water = machine.water - latte.water
            machine.milk = machine.milk - latte.milk
            machine.beans = machine.beans - latte.beans
            machine.cups = machine.cups - latte.cups
            machine.money = machine.money + latte.money
            } else {
                machine.water = machine.water
                machine.beans = machine.beans
                machine.cups = machine.cups
                machine.money = machine.money
            }
        }
        if selection == "3" {
            if needIngredientsAmount(needWater: 200, needMilk: 100, needBeans: 12, needCups: 1) {
            machine.water = machine.water - cappuccino.water
            machine.milk = machine.milk - cappuccino.milk
            machine.beans = machine.beans - cappuccino.beans
            machine.cups = machine.cups - cappuccino.cups
            machine.money = machine.money + cappuccino.money
            } else {
                machine.water = machine.water
                machine.beans = machine.beans
                machine.cups = machine.cups
                machine.money = machine.money
            }
        }
        if selection == "back" {
        }
        
        currentState = .WAITING
    }
    
    func fill() {
        print("Write how many ml of water do you want to add:")
        let numWater = Int(readLine(strippingNewline: true)!)!

        print("Write how many ml of milk do you want to add:")
        let numMilk = Int(readLine(strippingNewline: true)!)!

        print("Write how many grams of coffee beans do you want to add:")
        let numBeans = Int(readLine(strippingNewline: true)!)!

        print("Write how many disposable cups of coffee do you want to add:")
        let numCups = Int(readLine(strippingNewline: true)!)!

        machine.water = machine.water + numWater
        machine.milk = machine.milk + numMilk
        machine.beans = machine.beans + numBeans
        machine.cups = machine.cups + numCups
        machine.money = machine.money
        
        currentState = .WAITING
    }

    func take() {
        print("I gave you $\(machine.money)\n")
        currentState = .WAITING
    }
    
    func remain() {
        print("The coffee machine has: \n\(machine.water) of water \n\(machine.milk) of milk \n\(machine.beans) of coffee beans \n\(machine.cups) of disposable cups \n\(machine.money) of money \n")
        currentState = .WAITING
    }
    
    func exitMachine() {
		print("Bye,see you soon!")
		exit(0)
    }
}
