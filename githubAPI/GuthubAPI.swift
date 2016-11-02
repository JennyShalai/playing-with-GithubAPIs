//
//  GuthubAPI.swift
//  githubAPI
//
//  Created by Flatiron School on 11/2/16.
//  Copyright © 2016 jennyshalai. All rights reserved.
//

import Foundation

class GithugAPI {

    class func getRepoInfoWithCompletion(userID: String, secretID: String, completion: @escaping (NSArray) -> ()) {
    
        let url = URL(string: "https://api.github.com/repositories?client_id=\(userID)&client_secret=\(secretID)")
        
        let session = URLSession(configuration: URLSessionConfiguration.default)
        
        let task = session.dataTask(with: url!) {
            data, response, error in
            
            if let data = data {
            
                do {
                    let responseData = try JSONSerialization.jsonObject(with: data, options: []) as! NSArray
                    completion(responseData)
                } catch {
                    print("ERROR: \(error)")
                }
            }
        }
        
        task.resume()
    }


}
