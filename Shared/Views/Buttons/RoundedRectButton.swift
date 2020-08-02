//
//  RoundedRectButton.swift
//  Bitsi
//
//  Created by BJ Miller on 7/30/20.
//

import SwiftUI

struct RoundedRectButton: View {
  let text: String
  let action: () -> Void

  init(_ text: String, action: @escaping () -> Void) {
    self.text = text
    self.action = action
  }

  var body: some View {
    Button(action: action) {
      Text(text)
        .font(.title2)
        .padding()
        .frame(height: 50)
        .frame(maxWidth: .infinity)
        .background(Color.black)
        .foregroundColor(.white)
        .cornerRadius(12)
    }
  }
}

struct RoundedRectButton_Previews: PreviewProvider {
  static var previews: some View {
    RoundedRectButton("foo") { }
  }
}
