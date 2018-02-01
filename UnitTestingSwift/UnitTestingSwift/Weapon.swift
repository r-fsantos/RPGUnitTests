//
//  Weapon.swift
//  UnitTestingSwift
//
//  Created by Guilherme Paciulli on 31/01/18.
//  Copyright © 2018 Guilherme Paciulli. All rights reserved.
//

import Foundation

class Weapon {
    
    var damage: Int
    var type: WeaponType

    init(type: WeaponType){
        self.type = type
        self.damage = self.type.rawValue
    }
    
}

enum WeaponType:Int{
    case Sword = 50
    case Axe = 70
    case Bow = 30
    case Staff = 40
}
