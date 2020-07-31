//
//  InitialView.swift
//  Shared
//
//  Created by BJ Miller on 7/26/20.
//

import SwiftUI

struct InitialView: View {
  var body: some View {
    VStack {
      Spacer()
      VStack(alignment: .center) {
        RoundedRectButton("Create New Wallet") {
          print("create new wallet tapped")
        }
        .padding(.bottom)
        RoundedRectButton("Restore Wallet") {
          print("restore wallet tapped")
        }
      }
    }
    .padding()
  }
}

struct InitialView_Previews: PreviewProvider {
  static var previews: some View {
    InitialView()
  }
}
