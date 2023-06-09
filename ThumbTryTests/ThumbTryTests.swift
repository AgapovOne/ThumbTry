//
//  ThumbTryTests.swift
//  ThumbTryTests
//
//  Created by Alex Agapov on 09.06.2023.
//

import XCTest
@testable import ThumbTry

final class ThumbTryTests: XCTestCase {

    func testPerformanceExample() throws {
        measure {

            (0...500).forEach { _ in
                let img = thumbHashToImage(
                    hash: Data(base64Encoded: "4ygOJARs+HqYdll3h4iHgHkImA==")!
                )

                let imageView = NSImageView(image: img)
                imageView.imageScaling = .scaleProportionallyUpOrDown
                imageView.frame = .init(
                    x: 0,
                    y: 0,
                    width: 1000,
                    height: 1000
                )

            }
        }
    }
}
