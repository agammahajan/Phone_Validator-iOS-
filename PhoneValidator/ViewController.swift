//
//  ViewController.swift
//  PhoneValidator
//
//  Created by Agam Mahajan on 10/08/16.
//  Copyright © 2016 Agam Mahajan. All rights reserved.
//

import UIKit
import PhoneNumberKit


class ViewController: UIViewController {

    @IBOutlet var button1: UIButton!
    @IBOutlet var Phone_No: UITextField!
    
    @IBOutlet var Output: UILabel!
    
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        
        
    }
    
    func showNotifications(){
      
    }
    
    private func callNumber(phoneNumber:String) {
        
        let url:NSURL = NSURL(string : "tel://\(phoneNumber)")!;
        UIApplication.sharedApplication().openURL(url);
        
        
        
        // create a corresponding local notification
        let notification = UILocalNotification()
        
        notification.alertTitle = "Validator Notification"
        notification.alertBody = "Msg"
        notification.alertAction = "Anschauen"
        notification.fireDate = NSDate.init()
        notification.soundName = UILocalNotificationDefaultSoundName
        notification.hasAction = true
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
        
     
        
    }

    @IBAction func OnClick(sender: AnyObject) {
            let temp = Phone_No.text
        do {
            
            _ = try PhoneNumber(rawNumber : temp!)
            
            callNumber(temp!)
            
            Output.text = ""
            
            print("Valid")
            
        }
        catch {
            print("Generic parser error")
            Output.text = "Wrong Phone Number....Try Again"
            let alert = UIAlertController(title: "Alert", message: "Wrong Phone Number", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Try Again", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

