import Foundation

class Character{
    
    public var life: Int
    
    public var weapon: Weapon
    
    init(with weapon: Weapon) {
        self.life = 100
        self.weapon = weapon
    }
    
    func getHit(damage: Int) {
        self.life -= damage
    }
    
    func damage() -> Int {
        return self.weapon.damage
    }
    
    func attack(target: Character) {
        target.getHit(damage: self.damage())
    }
}
