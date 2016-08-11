//
//  Third.swift
//  PhoneValidator
//
//  Created by Agam Mahajan on 10/08/16.
//  Copyright © 2016 Agam Mahajan. All rights reserved.
//

import Foundation
import UIKit

class Third : UIViewController {
    
    @IBOutlet var Label: UILabel!
    
    @IBAction func onClick(sender: AnyObject) {
        UIPasteboard.generalPasteboard().string = "https://www.facebook.com/agam.mahajan"
        Label.text = "Link copied to clipboard"
    }
    
    
}
