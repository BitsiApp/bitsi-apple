//
//  AssetConvertible.swift
//  Bitsi
//
//  Created by Mitch on 5/13/20.
//

import UIKit
import SwiftUI

protocol AssetConvertibleType {}

extension AssetConvertibleType where Self: RawRepresentable, Self.RawValue == String {

  var uiImage: UIImage {
    return UIImage(imageLiteralResourceName: rawValue)
  }

  var image: Image {
    Image(rawValue)
  }

  var templateUIImage: UIImage {
    return uiImage.withRenderingMode(.alwaysTemplate)
  }

  var templateImage: Image {
    Image(uiImage: templateUIImage)
  }

  var uiColor: UIColor {
    if let color = UIColor(named: rawValue) {
      return color
    } else {
      print("Color id: \(rawValue) has no asset")
      return .white
    }
  }

  var color: Color {
    Color(rawValue)
  }
}

extension UIImage {
  convenience init?<T: RawRepresentable>(image: T) where T.RawValue == String {
    self.init(named: image.rawValue)
  }
}

extension UIColor {
  convenience init?<T: RawRepresentable>(color: T) where T.RawValue == String {
    self.init(named: color.rawValue)
  }
}
