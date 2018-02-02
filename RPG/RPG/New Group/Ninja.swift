import Foundation

class Ninja:Character{
    
    override init(with weapon: Weapon) {
        super.init(with: weapon)
        if weapon.type == .Sword{
            self.weapon.damage += 20
        }
    }
    
}
