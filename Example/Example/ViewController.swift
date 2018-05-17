//
//  ViewController.swift
//  Example
//
//  Created by Simon Riis Olesen on 12/05/2018.
//  Copyright © 2018 URLSessionWrapper. All rights reserved.
//

import UIKit
import URLSessionWrapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = URL(string: "https://api.themoviedb.org/3/search/movie?api_key=4cb1eeab94f45affe2536f2c684a5c9e&query=flash&page=1"){
            
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
       
            let handler = URLSessionHandler(session: URLSession.shared)
            
            handler.call(request: request, result: { (response) in
                
                if let response = response{
                    if let data = response["responseData"] as? [String: Any]{
                        print(data["results"] as? [[String:Any]])
              
                      
                    }
                }
                
            })
            
            
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

