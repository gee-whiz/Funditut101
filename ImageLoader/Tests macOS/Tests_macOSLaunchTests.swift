//
// ABB Oy, Drives CONFIDENTIAL
// ---------------------------
//
// ABB Oy, Drives.
// All Rights Reserved.
//
// NOTICE: All information contained herein is, and remains the property of ABB Oy, Drives.
// The intellectual and technical concepts contained herein are proprietary to ABB Oy, Drives and
// its suppliers.
// Dissemination of this information or reproduction of this material is strictly forbidden unless
// prior written permission is obtained from ABB Oy, Drives.


import XCTest

class Tests_macOSLaunchTests: XCTestCase {

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
