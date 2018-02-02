import Foundation

class Hunter:Character{
    
    override init(with weapon: Weapon) {
        super.init(with: weapon)
        if weapon.type == .Bow{
            self.weapon.damage += 20
        }
    }
    
}
