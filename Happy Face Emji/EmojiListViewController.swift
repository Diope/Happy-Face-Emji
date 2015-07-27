//
//  EmojiListViewController.swift
//  Happy Face Emji
//
//  Created by Dion Pettaway on 7/26/15.
//  Copyright (c) 2015 Kalani Pettaway. All rights reserved.
//

import Foundation
import UIKit

class EmojiListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var emojis = ["😅","😱","😿","☕️","🚋"]
    var emojisText = ["Nervous Laugh", "Frightened","Cry Cat","Coffee","Train"]
    var emoji = "💩"
    var emojiText = "teehee"
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.textLabel!.text = self.emojis[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.emoji = self.emojis[indexPath.row]
        self.emojiText = self.emojisText[indexPath.row]
        self.performSegueWithIdentifier("tableViewToEmojiSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detailViewController = segue.destinationViewController as! EmojiDetailViewController
        
        detailViewController.emoji = self.emoji
        detailViewController.emojiDetail = self.emojiText
    }
}