//
//  BaseInterceptor.swift
//  dearMyStory
//
//  Created by Jihye Hong on 2022/05/04.
//

import Foundation
import Alamofire

class BaseInterceptor: RequestInterceptor {
    
    
    func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) {
        
        var request = urlRequest
        
        // 헤더 부분 넣어주기
        request.addValue("application/json; charset=UTF-8", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json; charset=UTF-8", forHTTPHeaderField: "Accept")
        
        completion(.success(request))
    }
}
