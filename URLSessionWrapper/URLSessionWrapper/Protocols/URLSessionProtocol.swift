//
//  URLSessionable.swift
//  URLSessionWrapper
//
//  Created by Simon Riis Olesen on 12/05/2018.
//  Copyright © 2018 URLSessionWrapper. All rights reserved.
//

import Foundation
public protocol URLSessionProtocol{
    typealias DataTaskResult = (Data?, URLResponse?, Error?) -> Void
    func dataTask(with request: URLRequest, completionHandler: @escaping DataTaskResult) -> URLSessionDataTaskProtocol
}
