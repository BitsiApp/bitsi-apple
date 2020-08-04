//
//  NetworkManager.swift
//  Bitsi (iOS)
//
//  Created by BJ Miller on 8/2/20.
//

import LittleFire

protocol NetworkManagerType: AnyObject {

}

final class NetworkManager: NetworkManagerType {
  let provider = ServiceProvider()
}
