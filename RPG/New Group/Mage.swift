import Foundation

class Mage: Character {

    override init(with weapon: Weapon) {
        super.init(with: weapon)
        if weapon.type == .Staff {
            self.weapon.damage += 20
        }
    }
}
