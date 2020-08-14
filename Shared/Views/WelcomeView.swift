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
      ZStack {
        ColorAsset.backgroundPrimary.color
        VStack {
          ImageAsset.welcomeStarsBackground.image
            .resizable()
            .opacity(0.5)
            .aspectRatio(contentMode: .fit)
            .padding(.top, 44)
          Spacer()
        }
        VStack {
          Spacer()
          WelcomeChoiceView()
        }
        .padding(.bottom, 32)
        .padding([.leading, .trailing])
      }
      .edgesIgnoringSafeArea(.all)
    }
  }
}

struct WelcomeView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      Group {
        WelcomeView()
        WelcomeView().previewDevice(PreviewDevice(rawValue: "iPhone X"))
      }
      Group {
        WelcomeView()
        WelcomeView().previewDevice(PreviewDevice(rawValue: "iPhone X"))
      }.environment(\.colorScheme, .dark)
    }
  }
}

struct WelcomeChoiceView: View {
  var body: some View {
    VStack(alignment: .center, spacing: 20) {
      NavigationLink(destination: BIP39WordList()) {
        RoundedNavigationButton(text: "Show BIP39 Word List")
      }
      NavigationLink(destination: CreatePINView()) {
        RoundedNavigationButton(text: "Create Wallet")
      }
    }
  }
}
