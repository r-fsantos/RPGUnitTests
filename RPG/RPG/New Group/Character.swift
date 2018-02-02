import Foundation

class Character{
    
    public var health: Int
    
    public var weapon: Weapon
    
    init(with weapon: Weapon) {
        self.health = 100
        self.weapon = weapon
    }
    
    func getHit(damage: Int) {
        self.health -= damage
    }
    
    func damage() -> Int {
        return self.weapon.damage
    }
    
    func attack(target: Character) {
        target.getHit(damage: self.damage())
    }
}
