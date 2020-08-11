//
//  KeypadButton.swift
//  Bitsi
//
//  Created by BJ Miller on 8/10/20.
//

import SwiftUI

struct KeypadButton: View {
  let text: String
  let action: () -> Void

  var body: some View {
    Button(action: action) {
      ZStack {
        Circle()
          .frame(width: 82, height: 82)
          .foregroundColor(ColorAsset.primaryBlue.color)
        Text(text)
          .foregroundColor(ColorAsset.primaryWhite.color)
          .font(.title)
      }
    }
  }
}

struct KeypadButton_Previews: PreviewProvider {
  static var previews: some View {
    KeypadButton(text: "1") {}
  }
}
