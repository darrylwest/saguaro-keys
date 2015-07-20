//
//  MasterTableViewCntroller.swift
//  SaguaroKeys
//
//  Created by darryl west on 7/19/15.
//  Copyright © 2015 darryl west. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
    private let masterCellIdentifier = "masterListCell"

    // TODO : fetch from database
    private var masterList:[KeyModel] = [KeyModel]()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Key List"

        // TODO : load the data KeyDataService

        // TODO : look these up from MasterTableViewDelegate
        view.backgroundColor = UIColor(red: 220.0/255, green: 220.0/255, blue: 220.0/255, alpha: 1.0)

        let header = UIView(frame: CGRect(x:0, y:0, width: CGRectGetWidth(view.frame), height: CGFloat( 10 )))

        header.backgroundColor = UIColor.grayColor()
        tableView.tableHeaderView = header

        // TODO : set the nav bar style/bg/etc

        // TODO : add any listeners

    }


    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return masterList.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier( masterCellIdentifier )!



        // cell.textLabel?.text = color.displayName

        return cell
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    // shut off the status bar...
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

}
