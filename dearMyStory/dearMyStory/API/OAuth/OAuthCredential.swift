//
//  OAuthCredential.swift
//  dearMyStory
//
//  Created by Jihye Hong on 2022/05/05.
//

import Foundation
import Alamofire

struct OAuthCredential : AuthenticationCredential {
    
    let accessToken: String
    
    let refreshToken: String
    
    let expiration: Date
    
    var requiresRefresh: Bool { Date(timeIntervalSinceNow: 30) > expiration }
    
}
