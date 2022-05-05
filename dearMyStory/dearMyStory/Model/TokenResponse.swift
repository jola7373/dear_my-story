//
//  TokenResponse.swift
//  dearMyStory
//
//  Created by Jihye Hong on 2022/05/05.
//

import Foundation
// MARK: - TokenResponse
struct TokenResponse: Codable {
    let message: String
    let token: TokenData
}
