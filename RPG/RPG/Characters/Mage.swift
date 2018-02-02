//
//  Mage.swift
//  UnitTestingSwift
//
//  Created by Nicholas Babo on 01/02/18.
//  Copyright © 2018 Guilherme Paciulli. All rights reserved.
//

import Foundation

class Mage:Character{
    
    override init(with weapon: Weapon) {
        super.init(with: weapon)
        if weapon.type == .Staff{
            self.weapon.damage += 20
        }
    }
    
}
