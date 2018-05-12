//
//  URLSession.swift
//  URLSessionWrapper
//
//  Created by Simon Riis Olesen on 12/05/2018.
//  Copyright © 2018 URLSessionWrapper. All rights reserved.
//

import Foundation
extension URLSession: URLSessionProtocol {
    public func dataTask(with request: URLRequest, completionHandler: @escaping DataTaskResult) -> URLSessionDataTaskProtocol {
        return (dataTask(with: request, completionHandler: completionHandler) as URLSessionDataTask) as URLSessionDataTaskProtocol
        
    }
}
