//
//  CreatePINView.swift
//  Bitsi
//
//  Created by BJ Miller on 8/14/20.
//

import SwiftUI

struct CreatePINView: View {
    var body: some View {
      ZStack {
        ColorAsset.backgroundPrimary.color
        VStack {
          Spacer()
          KeypadView(entryType: .digitsOnly)
        }
        .padding()
      }.edgesIgnoringSafeArea(.all)
    }
}

struct CreatePINView_Previews: PreviewProvider {
    static var previews: some View {
      Group {
        CreatePINView()
        CreatePINView().previewDevice(PreviewDevice(rawValue: "iPhone X"))
      }
      Group {
        CreatePINView()
        CreatePINView().previewDevice(PreviewDevice(rawValue: "iPhone X"))
      }.environment(\.colorScheme, .dark)
    }
}
