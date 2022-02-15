//
//  CheckboxButtonSnapshotTests.swift
//  StripeiOS Tests
//
//  Created by Ramon Torres on 12/14/21.
//  Copyright © 2021 Stripe, Inc. All rights reserved.
//

import UIKit
import FBSnapshotTestCase
import StripeCoreTestUtils

@testable import Stripe

class CheckboxButtonSnapshotTests: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()
//        recordMode = true
    }

    func testShortText() {
        let checkbox = CheckboxButton(text: "Save this card for future [Merchant] payments")
        verify(checkbox)
    }

    func testLongText() {
        let checkbox = CheckboxButton(
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum auctor justo sit amet luctus egestas. Sed id urna dolor."
        )
        verify(checkbox)
    }

    func testMultiline() {
        let checkbox = CheckboxButton(
            text: "Save my info for secure 1-click checkout",
            description: "Pay faster at [Merchant] and thousands of merchants."
        )

        verify(checkbox)
    }

    func testFontSizeCustomization() {
        let checkbox = CheckboxButton(
            text: "Save my info for secure 1-click checkout",
            description: "Pay faster at [Merchant] and thousands of merchants."
        )

        checkbox.baseFontSize = 24

        verify(checkbox)
    }

    func testLocalization() {
        let greekCheckbox = CheckboxButton(text: "Αποθηκεύστε αυτή την κάρτα για μελλοντικές [Merchant] πληρωμές")
        greekCheckbox.baseFontSize = 24
        verify(greekCheckbox, identifier: "Greek")

        let chineseCheckbox = CheckboxButton(
            text: "保存我的信息以便一键结账",
            description: "在[Merchant]及千万商家使用快捷支付")
        chineseCheckbox.baseFontSize = 24
        verify(chineseCheckbox, identifier: "Chinese")

        let hindiCheckbox = CheckboxButton(
            text: "सुरक्षित 1-क्लिक चेकआउट के लिए मेरी जानकारी सहेजें",
            description: "[Merchant] और हज़ारों व्यापारियों पर तेज़ी से भुगतान करें।")
        hindiCheckbox.baseFontSize = 24
        verify(hindiCheckbox, identifier: "Hindi")
    }

    func verify(
        _ view: UIView,
        identifier: String? = nil,
        file: StaticString = #filePath,
        line: UInt = #line
    ) {
        view.autosizeHeight(width: 340)
        view.backgroundColor = .white
        FBSnapshotVerifyView(view, identifier: identifier, file: file, line: line)
    }

}