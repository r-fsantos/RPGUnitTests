//
//  Hunter.swift
//  UnitTestingSwift
//
//  Created by Nicholas Babo on 01/02/18.
//  Copyright © 2018 Guilherme Paciulli. All rights reserved.
//

import Foundation

class Hunter:Character{
    
    override init(with weapon: Weapon) {
        super.init(with: weapon)
        if weapon.type == .Bow{
            self.weapon.damage += 20
        }
    }
    
}
