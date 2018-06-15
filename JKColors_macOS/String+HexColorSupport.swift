//
// Created by Jan Kase on 13/06/2018.
// Copyright (c) 2018 Jan Kaše. All rights reserved.
//

import AppKit

public extension String {

  func toColor(alpha anAlpha: CGFloat = 1) -> NSColor? {
    var theTrimmedString = trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    if theTrimmedString.hasPrefix("#") {
      theTrimmedString.removeFirst()
    }

    guard theTrimmedString.count == 6 else {
      return nil
    }

    var theRgb: UInt32 = 0
    guard Scanner(string: theTrimmedString).scanHexInt32(&theRgb) else {
      return nil
    }

    return NSColor(rgb: Int(theRgb), alpha: anAlpha)

  }

}
