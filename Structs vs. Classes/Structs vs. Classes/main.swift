//
//  main.swift
//  Structs vs. Classes
//
//  Created by Ed Yama on 30/08/21.
//

import Foundation

var hero = StructHero(name: "Jiraya", universe: "Toei")

var anotherToeiHero = hero
anotherToeiHero.name = "Jaspion"

var tokusatsu = [hero, anotherToeiHero]

tokusatsu[0].name = "Kamem Raider"

print("tokusatsu name: \(hero.name)")
print("another tokusatsu name: \(anotherToeiHero.name)")
print("first tokusatsu name: \(tokusatsu[0].name)")

var hero2 = StructHero(name: "Changeman", universe: "Toei")

print(hero2.reverseName())
