//
//  Kullanici_Etkilesimi_Alert_Action_Sheet_UITestsLaunchTests.swift
//  Kullanici Etkilesimi(Alert-Action Sheet)UITests
//
//  Created by Samet on 19.07.2023.
//

import XCTest

final class Kullanici_Etkilesimi_Alert_Action_Sheet_UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
