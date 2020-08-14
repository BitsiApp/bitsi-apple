//
//  KeypadViewModel.swift
//  Bitsi
//
//  Created by BJ Miller on 8/11/20.
//

import SwiftUI

class KeypadViewModel: ObservableObject {
  let entryType: KeypadEntryType

  init(entryType: KeypadEntryType) {
    self.entryType = entryType
  }

  var buttonTitles: [String] {
    switch entryType {
    case .full:
      return ["1", "2", "3", "4", "5", "6", "7", "8", "9", ".", "0", "<"]
    case .digitsOnly:
      return ["1", "2", "3", "4", "5", "6", "7", "8", "9", "", "0", "<"]
    }
  }

  private let columnCount = 3

//  lazy var columns: [GridItem] = {
//    (0..<columnCount).map { _ in GridItem(.fixed(90)) }
//  }()
  func columns(for size: CGSize) -> [GridItem] {
    let columnWidth = (size.width / CGFloat(columnCount)) * 0.9
    return (0..<columnCount).map { _ in GridItem(.fixed(columnWidth))}
  }

  func selectedButton(title: String) {
    print("selected: \(title)")
  }
}
