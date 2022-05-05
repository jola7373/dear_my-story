//
//  AuthResponse.swift
//  dearMyStory
//
//  Created by Jihye Hong on 2022/05/04.
//

import Foundation

struct AuthResponse : Codable {
    var user: UserData
    var token: TokenData
    enum CodingKeys: String, CodingKey {
        case token
        case user
    }
}
