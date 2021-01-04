//
//  Bike.swift
//  miniProject
//
//  Created by Mohammed on 1/4/21.
//

import Foundation

struct Bike: Identifiable {
    var name: String
    var cost: Double
    var number: String
    
    var id = UUID()
}

var bike1 = Bike(name: "b1", cost: 1.00, number: "1")
var bike2 = Bike(name: "b2", cost: 1.25, number: "2")
var bike3 = Bike(name: "b3", cost: 1.50, number: "3")
var bike4 = Bike(name: "b4", cost: 1.75, number: "4")
var bike5 = Bike(name: "b5", cost: 2.00, number: "5")

var bikes = [bike1, bike2, bike3, bike4, bike5]

