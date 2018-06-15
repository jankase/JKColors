//
// Created by Jan Kase on 13/06/2018.
// Copyright (c) 2018 Jan Kaše. All rights reserved.
//

import AppKit

public extension NSColor {

  convenience init?(red aRed: Int, green aGreen: Int, blue aBlue: Int, alpha anAlpha: CGFloat = 1) {
    let theRed = CGFloat(aRed) / 255.0
    let theGreen = CGFloat(aGreen) / 255.0
    let theBlue = CGFloat(aBlue) / 255.0
    guard theRed <= 1.0 && theGreen <= 1.0 && theBlue <= 1.0 && anAlpha <= 1.0 else {
      return nil
    }
    self.init(red: theRed, green: theGreen, blue: theBlue, alpha: anAlpha)
  }

  convenience init!(rgb: Int, alpha anAlpha: CGFloat = 1.0) {
    let theRed = (rgb >> 16) & 0xFF
    let theGreen = (rgb >> 8) & 0xFF
    let theBlue = rgb & 0xFF
    self.init(red: theRed, green: theGreen, blue: theBlue, alpha: anAlpha)
  }

}
