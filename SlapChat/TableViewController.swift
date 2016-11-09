//
//  TableViewController.swift
//  SlapChat
//
//  Created by Ian Rahman on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UITableViewController {
    var store = DataStore.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        store.fetchData()
        print(store.messageArray)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        print("stop")
    }
    
    //  let friendlyMessage = NSEntityDescription.insertNewObject(forEntityName: "friendly", into: NSManagedObjectContext) as! Message
    // let unfriendlyMessage = NSEntityDescription.insertNewObject(forEntityName: "unfriendly", into: NSManagedObjectContext) as! Message
    //   var dateFormatter = DateFormatter()
    //dateFormatter.dateStyle = .short
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.messageArray.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "messageCell", for: indexPath)
        let text = store.messageArray[indexPath.row]
        cell.detailTextLabel?.text = store.messageArray[indexPath.row].content
        cell.textLabel?.text = String(describing: store.messageArray[indexPath.row].createdAt)
        return cell
    }
}
