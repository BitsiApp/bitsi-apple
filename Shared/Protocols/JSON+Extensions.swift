//
//  JSON+Extensions.swift
//  Bitsi
//
//  Created by BJ Miller on 8/3/20.
//  Copyright © 2020 BJ Miller. All rights reserved.
//

import Foundation

extension JSONDecoder {
  static var defaultDecoder: JSONDecoder { .secondsSinceEpochDecoder }

  private static var secondsSinceEpochDecoder: JSONDecoder {
    let decoder = JSONDecoder()
    decoder.dateDecodingStrategy = .secondsSince1970
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    return decoder
  }
}

extension JSONEncoder {
  static var defaultEncoder: JSONEncoder {
    let encoder = JSONEncoder()
    encoder.dateEncodingStrategy = .secondsSince1970
    encoder.keyEncodingStrategy = .convertToSnakeCase
    return encoder
  }
}
