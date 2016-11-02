//
//  DataStore.swift
//  githubAPI
//
//  Created by Flatiron School on 11/2/16.
//  Copyright © 2016 jennyshalai. All rights reserved.
//

import Foundation


class DataStore {

    static let store = DataStore()
    var users: [UserInfo] = []
    
    
    func getUserInfoWithCompletion(completionHandler: @escaping () -> ()) {
        
        GithugAPI.getRepoInfoWithCompletion(userID: "06d8bf777ea4d48e51e6", secretID: "a823277c74a449233cb1338d0f56b53d6b09e41b", completion: {
            (data) in
            
            for repoDict in data {
                
                if let repo = repoDict as? NSDictionary {
                    
                    let userID = repo["id"] as? Int
                    
                    if let ownerInfo = repo["owner"] as? NSDictionary {
                        let avatarURL = ownerInfo["avatar_url"] as? String
                        let newUserInfo = UserInfo.init(userID: userID!, avatarURL: avatarURL!)
                        self.users.append(newUserInfo)
                    }
                }
            }
            completionHandler()
            
        })
    }

}
