//
//  URLSessionWrapperTests.swift
//  URLSessionWrapperTests
//
//  Created by Simon Riis Olesen on 12/05/2018.
//  Copyright © 2018 URLSessionWrapper. All rights reserved.
//

import XCTest
@testable import URLSessionWrapper

class URLSessionWrapperTests: XCTestCase {
    
    var urlSessionHandler:URLSessionHandler?
    var session:MockURLSession?
    
    override func setUp() {
        super.setUp()
        self.session = MockURLSession()
        if let session = session{
            self.urlSessionHandler = URLSessionHandler(session: session)
            
        }
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func test_get_should_return_data() {
        let json:String = "{\"id\": 24, \"name\": \"swift\"}"
        
        self.session?.nextData = json.data(using: .utf8)
        
        var actualData: [String: Any]?
        if let urlSessionHandler = self.urlSessionHandler{
            
            if let url = URL(string: "https://mockurl"){
                
                var request = URLRequest(url: url)
                request.httpMethod = "GET"
                
                urlSessionHandler.call(request: request, result: { (response) in
                    
                    if let response = response{
                        if let data = response["responseData"] as? [String: Any]{
                            actualData = data
                        }
                    }
                    
                })
                
            }
       
        }

        if let data = actualData{
            XCTAssert(data["id"] != nil)
        }
        

    }
    
}
