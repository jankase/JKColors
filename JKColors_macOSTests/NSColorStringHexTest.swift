//
// Created by Jan Kase on 15/06/2018.
// Copyright (c) 2018 Jan Kase. All rights reserved.
//

import AppKit
@testable import JKColors
import Nimble
import Quick

class NSColorFromStringHexSpec: QuickSpec {

  override func spec() {
    describe("RGB color from string") {
      var theColor: NSColor! = nil
      var theRed: CGFloat = 0
      var theBlue: CGFloat = 0
      var theGreen: CGFloat = 0
      var theAlpha: CGFloat = 0
      context("correct hex code specification") {
        beforeEach {
          theColor = "ABACAD".toColor(alpha: 1)
          theColor.getRed(&theRed, green: &theGreen, blue: &theBlue, alpha: &theAlpha)
        }
        it("has correct red color component") {
          expect(theRed).to(beCloseTo(171.0 / 255.0))
        }
        it("has correct green color component") {
          expect(theGreen).to(beCloseTo(172.0 / 255.0))
        }
        it("has correct blue color component") {
          expect(theBlue).to(beCloseTo(173.0 / 255.0))
        }
        it("has correct alpha") {
          expect(theAlpha).to(beCloseTo(1.0))
        }
      }
      context("correct hex code specification with hash") {
        beforeEach {
          theColor = "#ABACAD".toColor(alpha: 1)
          theColor.getRed(&theRed, green: &theGreen, blue: &theBlue, alpha: &theAlpha)
        }
        it("has correct red color component") {
          expect(theRed).to(beCloseTo(171.0 / 255.0))
        }
        it("has correct green color component") {
          expect(theGreen).to(beCloseTo(172.0 / 255.0))
        }
        it("has correct blue color component") {
          expect(theBlue).to(beCloseTo(173.0 / 255.0))
        }
        it("has correct alpha") {
          expect(theAlpha).to(beCloseTo(1.0))
        }
      }
      context("incorrect hex code specification") {
        beforeEach {
          theColor = "#XXXXXX".toColor(alpha: 1)
        }
        it("not create instance of UIColor") {
          expect(theColor).to(beNil())
        }
      }
    }
  }

}
