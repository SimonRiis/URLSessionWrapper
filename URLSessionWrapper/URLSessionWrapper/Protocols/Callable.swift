//
//  Callable.swift
//  URLSessionWrapper
//
//  Created by Simon Riis Olesen on 10/02/2018.
//  Copyright © 2018 URLSessionWrapper. All rights reserved.
//

import Foundation
public protocol Callable{
    
    func call(request:URLRequest, result: @escaping (_ responseData: [String: Any]?) -> Void)
    
}
