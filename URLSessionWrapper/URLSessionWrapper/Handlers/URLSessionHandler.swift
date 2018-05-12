//
//  URLSessionHandler.swift
//  URLSessionWrapper
//
//  Created by Simon Riis Olesen on 12/05/2018.
//  Copyright © 2018 URLSessionWrapper. All rights reserved.
//

import Foundation
public class URLSessionHandler:Callable{
    
    let session: URLSessionProtocol
    public init(session: URLSessionProtocol) {
        self.session = session
    }
    public func call(request: URLRequest, result: @escaping ([String : Any]?) -> Void) {
        let task = session.dataTask(with: request) { data, response, error in
            
            if let httpResponse = response as? HTTPURLResponse {
                
                let statusCode = httpResponse.statusCode
                var json:[String: Any] = [
                    
                    "statusCode": statusCode
                    
                ]
                if let data = data, let responseJSON = try? JSONSerialization.jsonObject(with: data, options: []){
                    
                    if let response = responseJSON as? [String: Any]{
                        
                        json["responseData"] = response
                        
                    }
                    
                }else{
                    if let error = error{
                        json["error"] = error.localizedDescription
                    }
                }
                result(json)
                
            }else{
                result(nil)
            }
            
            
        }
        
        task.resume()
        
        
    }
}
