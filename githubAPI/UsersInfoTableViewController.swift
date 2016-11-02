//
//  UsersInfoTableViewController.swift
//  githubAPI
//
//  Created by Flatiron School on 11/2/16.
//  Copyright © 2016 jennyshalai. All rights reserved.
//

import UIKit

class UsersInfoTableViewController: UITableViewController {

    let dataStore = DataStore.store
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataStore.getUserInfoWithCompletion(completionHandler: {
             self.tableView.reloadData()
            
        })
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataStore.users.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell

        if let url = URL(string: self.dataStore.users[indexPath.row].avatarURL) {
                
            do {
                let imageURL = try Data(contentsOf: url)
                cell?.avatarImage.image = UIImage(data: imageURL)
                cell?.idLabel.text = String(self.dataStore.users[indexPath.row].userID)
                    
            } catch {
                print("There was an issue unwrapping the image url")
            }
        }

        return cell!
    }

}
