//
//  WelcomeView.swift
//  Shared
//
//  Created by BJ Miller on 7/26/20.
//

import SwiftUI

struct WelcomeView: View {
  @State private var showingWordsActive = false
  @State private var showWordsSelection: Int?
  
  var body: some View {
    NavigationView {
      VStack {
        Spacer()
        VStack(alignment: .center, spacing: 20) {
          NavigationLink(
            destination: BIP39WordList(),
            tag: 1,
            selection: $showWordsSelection) {
            RoundedRectButton("Show BIP39 Words") {
              showWordsSelection = 1
            }
          }
//          RoundedRectButton("Create New Wallet") {
//            print("create new wallet tapped")
//          }
//          RoundedRectButton("Restore Wallet") {
//            print("restore wallet tapped")
//          }
//          RoundedRectButton("Add Watch-Only Wallet") {
//            print("watch-only wallet tapped")
//          }
//          RoundedRectButton("Show BIP39 Word List") {
//            BIP39WordList()
//          }
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
