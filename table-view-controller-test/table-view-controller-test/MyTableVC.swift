//
//  MyTableVC.swift
//  table-view-controller-test
//
//  Created by jim Veneskey on 7/1/16.
//  Copyright © 2016 Jim Veneskey. All rights reserved.
//

import UIKit

class MyTableVC: UITableViewController {

    var cars = ["Chevy", "Ford", "Ferarri", "Porsche", "Tesla"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return cars.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("carCell", forIndexPath: indexPath)

        // Configure the cell...
        cell.textLabel?.text = cars[indexPath.row]
        cell.detailTextLabel?.text = "I like my \(cars[indexPath.row])"

        return cell
    }



}
