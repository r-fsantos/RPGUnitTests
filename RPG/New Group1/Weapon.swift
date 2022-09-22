import Foundation

class Weapon {
    
    var damage: Int
    var type: WeaponType
    
    init(type: WeaponType) {
        self.type = type
        self.damage = self.type.rawValue
    }
}

enum WeaponType: Int {
    case Axe = 60
    case Sword = 50
    case Staff = 40
    case Bow = 30
}
