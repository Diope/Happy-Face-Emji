//
//  EmojiDetailViewController.swift
//  Happy Face Emji
//
//  Created by Dion Pettaway on 7/27/15.
//  Copyright (c) 2015 Kalani Pettaway. All rights reserved.
//

import Foundation
import UIKit

class EmojiDetailViewController : UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDetailLabel: UILabel!

    var emoji = "😣"
    var emojiDetail = "Hello"

    override func viewDidLoad() {
        self.emojiLabel.text = self.emoji
        self.emojiDetailLabel.text = self.emojiDetail
    }
    
}