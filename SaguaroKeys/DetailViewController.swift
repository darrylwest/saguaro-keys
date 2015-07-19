//
//  DetailViewController.swift
//  SaguaroKeys
//
//  Created by darryl west on 7/19/15.
//  Copyright © 2015 darryl west. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 220.0/255, green: 220.0/255, blue: 220.0/255, alpha: 1.0)

        print("detail view controller loaded")
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)


    }

    // shut off the status bar...
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}