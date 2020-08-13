//
//  KeypadView.swift
//  Bitsi
//
//  Created by BJ Miller on 8/10/20.
//

import SwiftUI

enum KeypadEntryType {
  case full
  case digitsOnly
}

struct KeypadView: View {
  let viewModel: KeypadViewModel

  init(entryType: KeypadEntryType) {
    viewModel = KeypadViewModel(entryType: entryType)
  }

  var body: some View {
    LazyVGrid(columns: viewModel.columns) {
      ForEach(viewModel.buttonTitles) { title in
        Group {
          if title.isEmpty {
            Spacer()
          } else {
            KeypadButton(text: title) { viewModel.selectedButton(title: title) }
          }
        }
      }
    }
  }
}

struct KeypadView_Previews: PreviewProvider {
  static var previews: some View {
    KeypadView(entryType: .digitsOnly)
    KeypadView(entryType: .digitsOnly)
      .previewDevice(PreviewDevice(rawValue: "iPhone X"))
    KeypadView(entryType: .full)
      .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
  }
}
