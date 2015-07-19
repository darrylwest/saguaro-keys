//
//  MainSplitViewController.swift
//  SaguaroKeys
//
//  Created by darryl west on 7/19/15.
//  Copyright © 2015 darryl west. All rights reserved.
//

import UIKit

class MainSplitViewController: UISplitViewController {
    // hide the status bar for the entire main storyboard
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}