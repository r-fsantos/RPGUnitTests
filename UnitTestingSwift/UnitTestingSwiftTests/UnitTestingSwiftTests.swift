//
//  UnitTestingSwiftTests.swift
//  UnitTestingSwiftTests
//
//  Created by Guilherme Paciulli on 31/01/18.
//  Copyright © 2018 Guilherme Paciulli. All rights reserved.
//

import XCTest
@testable import UnitTestingSwift

class UnitTestingSwiftTests: XCTestCase {
    
    var axe:Axe!
    var sword:Sword!
    var bow: Bow!
    var staff: Staff!
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        axe = Axe()
        sword = Sword()
        bow = Bow()
        staff = Staff()
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        axe = nil
        sword = nil
        bow = nil
        staff = nil
    }
    
    func testAxeBiggerDamage(){
        XCTAssertTrue(axe.damage > sword.damage)
        XCTAssertTrue(axe.damage > bow.damage)
        XCTAssertTrue(axe.damage > staff.damage)
    }
    
    func testAxeVersusSword(){
        let hero = Warrior(with: axe)
        let enemy = Warrior(with: sword)
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.damage() > enemy.damage())
    }
    
    func testAxeVersusBow(){
        let hero = Warrior(with: axe)
        let enemy = Warrior(with: bow)
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        XCTAssertTrue(hero.damage() > enemy.damage())
    }
    
    func testAxeVersusStaff(){
        let hero = Warrior(with: axe)
        let enemy = Warrior(with: staff)
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.damage() > enemy.damage())
    }
    
    func testAxeVersusAxe(){
        let hero = Warrior(with: axe)
        let enemy = Warrior(with: axe)
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.damage() == enemy.damage())
    }
    
    func testSwordVersusBow(){
        let hero = Warrior(with: sword)
        let enemy = Warrior(with: bow)
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.damage() > enemy.damage())
    }
    
    func testSwordVersusStaff(){
        let hero = Warrior(with: sword)
        let enemy = Warrior(with: staff)
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.damage() > enemy.damage())
    }
    
    func testSwordVersusSword(){
        let hero = Warrior(with: sword)
        let enemy = Warrior(with: sword)
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.damage() == enemy.damage())
    }
    
    func testBowVersusStaff(){
        let hero = Warrior(with: bow)
        let enemy = Warrior(with: staff)
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.damage() < enemy.damage())
    }
    
    func testBowVersusBow(){
        let hero = Warrior(with: bow)
        let enemy = Warrior(with: bow)
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.damage() == enemy.damage())
    }
    
    func testStaffVersusStaff(){
        let hero = Warrior(with: staff)
        let enemy = Warrior(with: staff)
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.damage() == enemy.damage())
    }
    
    func testHunterVersusBadMage(){
        let hero = Hunter(with: bow)
        let enemy = Warrior(with: staff)
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.damage() > enemy.damage())
    }
    
    func testHunterVersusMage(){
        let hero = Hunter(with: bow)
        let enemy = Mage(with: staff)
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.damage() < enemy.damage())
    }
    
    func testHunterVersusBadHunter(){
        let hero = Hunter(with: bow)
        let enemy = Hunter(with: sword)
        
        hero.attack(at: enemy)
        enemy.attack(at: hero)
        
        XCTAssertTrue(hero.damage() == enemy.damage())
    }
    
    func testWarriorVersusNinja(){
        let hero = Hunter(with: bow)
        let enemy = Warrior(with: sword)
        
        XCTAssertEqual(hero.damage(), enemy.damage())
    }
    
    
    
}
