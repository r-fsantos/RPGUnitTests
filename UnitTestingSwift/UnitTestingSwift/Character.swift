//
//  Character.swift
//  UnitTestingSwift
//
//  Created by Guilherme Paciulli on 31/01/18.
//  Copyright © 2018 Guilherme Paciulli. All rights reserved.
//

import Foundation

class Character {
    
    public let name: String
    
    public var life: Int
    
    public var weapon: Weapon
    
    init(with weapon: Weapon, and name: String) {
        self.life = 100
        self.weapon = weapon
        self.name = name
    }
    
    func hit(points: Int) {
        self.life -= points
    }
    
    func attack(at target: Character) {
        target.hit(points: self.damage())
    }
    
    func damage() -> Int {
        return self.weapon.damage
    }
    
}
