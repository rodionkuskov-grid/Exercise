//
//  ExerciseTests.swift
//  ExerciseTests
//
//  Created by Rodion Kuskov on 12/1/21.
//

import XCTest
import Quick
import Nimble
import Cuckoo
@testable import Exercise

// TODO:- Add more tests. Cover services with tests.
class ExerciseTests: QuickSpec {
    override func spec() {
        describe("Tests for exercise") {
            var achivementService: AchivmentService!
            var viewController: ViewController!
            
            beforeEach {
                achivementService = MockAchivmentService()
                viewController = ViewController()
                viewController.achivementService = achivementService
            }
            
            describe("Default controller state") {
                it("Number of three days running default state") {
                    expect(viewController.numberOfSuccessfulThreeDaysRunning).to(beNil())
                    expect(viewController.numberOfThreeDaysRunningLabel.isHidden).to(beFalse())
                }
                
                it("Search button default state") {
                    expect(viewController.searchButton.isUserInteractionEnabled).to(beTrue())
                }
            }
        }
    }
}
