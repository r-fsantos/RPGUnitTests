import Foundation

class Warrior: Character {
    
    override init(with weapon: Weapon) {
        super.init(with: weapon)
        if weapon.type == .Axe{
            self.weapon.damage += 20
        }
    }
    
}
