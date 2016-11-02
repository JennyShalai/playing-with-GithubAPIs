//
//  UserInfo.swift
//  githubAPI
//
//  Created by Flatiron School on 11/2/16.
//  Copyright © 2016 jennyshalai. All rights reserved.
//

import Foundation

class UserInfo: CustomStringConvertible {

    var avatarURL: String
    var userID: Int
    var description: String {
        return "UserID \(self.userID), URL: \(self.avatarURL)"
    }
    
    init(userID: Int, avatarURL: String) {
    
        self.userID = userID
        self.avatarURL = avatarURL
    }


}
