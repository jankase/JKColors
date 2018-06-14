//
// Created by Jan Kase on 12/06/2018.
// Copyright (c) 2018 Jan Kaše. All rights reserved.
//

import UIKit

public extension String {

  func toColor(alpha anAlpha: CGFloat = 1) -> UIColor? {
    var theTrimmedString = trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if theTrimmedString.hasPrefix("#") {
      theTrimmedString.removeFirst()
    }

    guard theTrimmedString.count == 6 else {
      return nil
    }

    var theRgb: UInt32 = 0
    Scanner(string: theTrimmedString).scanHexInt32(&theRgb)

    return UIColor(rgb: theRgb, alpha: anAlpha)

  }

}
