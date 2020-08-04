//
//  ResponseCodable.swift
//  Bitsi
//
//  Created by BJ Miller on 8/3/20.
//  Copyright © 2020 BJ Miller. All rights reserved.
//

import Foundation

public protocol ResponseCodable: ResponseEncodable & ResponseDecodable {}

public protocol ResponseEncodable: Encodable {}

public protocol ResponseDecodable: Decodable {
  /// sampleJSON used to supply json to decode into a sampleInstance()
  static var sampleJSON: String { get }

  /// decoder used to decode an instance of self from Data
  static var decoder: JSONDecoder { get }

  /// defaultValue used to provide a default value from a REST response if there was a failure parsing the response into self.
  /// For instance, the server may return `{}`, but what you need is `{ "result": [] }`.
  /// ResponseDecodable extension default implementation returns `nil`, as not many types may need to implement this.
  static var defaultValue: Self? { get }
}

public extension ResponseDecodable {
  /// sampleData returns the type's sampleJSON converted to bytes
  static var sampleData: Data { sampleJSON.data(using: .utf8) ?? Data() }

  // swiftlint:disable:next missing_docs
  static var decoder: JSONDecoder { .defaultDecoder }

  /// sampleInstance - an optional instance of self after decoding sampleData with the provided decoder for the conforming type.
  static func sampleInstance() -> Self? {
    do {
      let obj = try decoder.decode(Self.self, from: sampleData)
      return obj
    } catch {
      print("error decoding sample instance: \(error.localizedDescription)")
      return nil
    }
  }

  // swiftlint:disable:next missing_docs
  static var defaultValue: Self? { nil }

  // swiftlint:disable:next missing_docs
  static func decode(from data: Data) -> Self? {
    try? Self.decoder.decode(Self.self, from: data)
  }
}

public extension ResponseEncodable {
  /// encoder used to encode an instance of self from `Data`s
  var encoder: JSONEncoder { .defaultEncoder }

  /// convenience function to encode self to `Data?`.
  func asData() -> Data? {
    try? encoder.encode(self)
  }
}
