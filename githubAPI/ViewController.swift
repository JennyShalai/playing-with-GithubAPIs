//
//  ViewController.swift
//  githubAPI
//
//  Created by Flatiron School on 11/2/16.
//  Copyright © 2016 jennyshalai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        GithugAPI.getRepoInfoWithCompletion {
            (data) in
            
            print(data)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

