//
//  WelcomeView.swift
//  Shared
//
//  Created by BJ Miller on 7/26/20.
//

import SwiftUI

struct WelcomeView: View {
  var body: some View {
    VStack {
      Spacer()
      VStack(alignment: .center, spacing: 20) {
        RoundedRectButton("Create New Wallet") {
          print("create new wallet tapped")
        }
        RoundedRectButton("Restore Wallet") {
          print("restore wallet tapped")
        }
        RoundedRectButton("Add Watch-Only Wallet") {
          print("watch-only wallet tapped")
        }
      }
    }
    .padding()
  }
}

struct WelcomeView_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeView()
  }
}
