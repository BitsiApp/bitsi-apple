//
//  BIP39WordList.swift
//  Bitsi
//
//  Created by BJ Miller on 8/5/20.
//

import Cnlib
import SwiftUI

struct BIP39WordList: View {
  let words = CNBCnlibGetFullBIP39WordListString()
    .split(separator: " ")
    .map(String.init)

  var body: some View {
    List {
      ForEach(words, id: \.self) { word in
        Text(word)
      }
    }
  }
}

struct BIP39WordList_Previews: PreviewProvider {
    static var previews: some View {
        BIP39WordList()
    }
}
