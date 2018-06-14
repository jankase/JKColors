//
// Created by Jan Kase on 12/06/2018.
// Copyright (c) 2018 Jan Kaše. All rights reserved.
//

import UIKit

public extension UIColor {

  public convenience init(red aRed: Int, green aGreen: Int, blue aBlue: Int, alpha anAlpha: CGFloat = 1) {
    let theRed = CGFloat(aRed) / 255.0
    let theGreen = CGFloat(aGreen) / 255.0
    let theBlue = CGFloat(aBlue) / 255.0
    self.init(red: theRed , green: theGreen, blue: theBlue, alpha: anAlpha)
  }

  public convenience init!<T:BinaryInteger>(rgb: T, alpha anAlpha: CGFloat = 1.0) {
    guard let theRed = ((rgb >> 16) & 0xFF) as? Int,
          let theGreen = ((rgb >> 8) & 0xFF) as? Int,
          let theBlue = (rgb & 0xFF) as? Int else {
      return nil
    }
    self.init(red: theRed, green: theGreen, blue: theBlue, alpha: anAlpha)
  }

}
