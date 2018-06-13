//
// Created by Jan Kase on 13/06/2018.
// Copyright (c) 2018 Jan Kaše. All rights reserved.
//

import AppKit

public extension NSColor {

  public convenience init!<T:BinaryInteger>(red aRed: T, green aGreen: T, blue aBlue: T, alpha anAlpha: CGFloat = 1) {
    guard let theRed = CGFloat(exactly: aRed),
          let theGreen = CGFloat(exactly: aGreen),
          let theBlue = CGFloat(exactly: aBlue) else {
      return nil
    }
    self.init(red: theRed / 255.0, green: theGreen / 255.0, blue: theBlue / 255.0, alpha: anAlpha)
  }

  public convenience init!<T:BinaryInteger>(rgb: T, alpha anAlpha: CGFloat = 1.0) {
    self.init(red: (rgb >> 16) & 0xFF, green: (rgb >> 8) & 0xFF, blue: rgb & 0xFF, alpha: anAlpha)
  }

}
