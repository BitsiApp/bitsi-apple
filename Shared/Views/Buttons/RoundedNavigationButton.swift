//
//  RoundedNavigationButton.swift
//  Bitsi
//
//  Created by BJ Miller on 8/9/20.
//

import SwiftUI

struct RoundedNavigationButton: View {
  let text: String
  let buttonColor: Color = ColorAsset.primaryBlue.color
  let textColor: Color = ColorAsset.primaryWhite.color
  let font: Font = .title2

  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 12)
        .frame(height: 50)
        .frame(maxWidth: .infinity)
        .foregroundColor(buttonColor)
      Text(text)
        .foregroundColor(textColor)
        .font(font)
    }
  }
}

struct RoundedNavigationButton_Previews: PreviewProvider {
  static var previews: some View {
    RoundedNavigationButton(text: "foo")
  }
}
