//
//  Warrior.swift
//  UnitTestingSwift
//
//  Created by Guilherme Paciulli on 31/01/18.
//  Copyright © 2018 Guilherme Paciulli. All rights reserved.
//

import Foundation

class Warrior: Character {
    
    override init(with weapon: Weapon) {
        super.init(with: weapon)
        if weapon.type == .Axe || weapon.type == .Sword{
            weapon.damage += 10
        }
    }
    
}
