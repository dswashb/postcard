//
//  ViewController.swift
//  Postcard
//
//  Created by Doug Washburn on 9/9/14.
//  Copyright (c) 2014 Doug Washburn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblDisplaySentMessage: UILabel!
    
    @IBOutlet weak var txtEnterName: UITextField!
    
    @IBOutlet weak var txtEnterMessage: UITextField!
    
    @IBOutlet weak var btnSendMail: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSendMailPressed(sender: UIButton) {
        // Code will evaluate when the button is pressed.
        
        // Unhide the label
        lblDisplaySentMessage.hidden = false
        
        // set the label text to the text entered for the message
        lblDisplaySentMessage.text = txtEnterMessage.text
        
        // Blank out the message field
        txtEnterMessage.text = ""
        
        // Get rid of the keyboard
        txtEnterMessage.resignFirstResponder()
        
        // Change label color
        lblDisplaySentMessage.textColor=UIColor.redColor()
        
        // Change button text
        btnSendMail.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        //New comment
        
        
    }

}

