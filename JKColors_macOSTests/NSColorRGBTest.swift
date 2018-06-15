//
// Created by Jan Kase on 14/06/2018.
// Copyright (c) 2018 Jan Kase. All rights reserved.
//

import AppKit
@testable import JKColors
import Nimble
import Quick

class UIColorRGBTest: QuickSpec {

  override func spec() {
    describe("Color based on RGB codes") {
      var theColor: NSColor!
      var theRed: CGFloat = 0
      var theBlue: CGFloat = 0
      var theGreen: CGFloat = 0
      var theAlpha: CGFloat = 0
      context("with correct hex specification") {
        beforeEach {
          let theInt = 0xABACAD
          theColor = NSColor(rgb: theInt, alpha: 1)
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
      context("incorrect integer components") {
        beforeEach {
          theColor = NSColor(red: 300, green: 155, blue: 155)
        }
        it("not create instance of UIColor") {
          expect(theColor).to(beNil())
        }
      }
    }
  }

}
