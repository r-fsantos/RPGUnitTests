//
//  RPGTests.swift
//  RPGTests
//
//  Created by Renato Felicio on 22/09/22.
//  Copyright © 2022 Renan Soares Germano. All rights reserved.
//

import XCTest

@testable import RPG

class RPGTests: XCTestCase {

    var axe: Axe!
    var sword: Sword!
    var staff: Staff!

    override func setUp() {
        super.setUp()
        axe = .init()
        sword = .init()
        staff = .init()
    }

    override func tearDown() {
        axe = nil
        sword = nil
        staff = nil
        super.tearDown()
    }

    func testThatAnAxeIsStrongerThanASword() {
        let heroWithAnAxe: Warrior = .init(with: axe)
        let enemyWithAnSword: Warrior = .init(with: sword)

        heroWithAnAxe.attack(target: enemyWithAnSword)
        enemyWithAnSword.attack(target: heroWithAnAxe)

        XCTAssertLessThan(enemyWithAnSword.health, heroWithAnAxe.health)
    }

    func testWeaponDamageBuffing() {
        let hunter: Hunter = .init(with: axe)
        let mage: Mage = .init(with: staff)

        XCTAssertEqual(hunter.damage(), mage.damage())
    }
}
