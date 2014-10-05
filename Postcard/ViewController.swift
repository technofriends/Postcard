//
//  ViewController.swift
//  Postcard
//
//  Created by Vaibhav's Devbox on 16/09/14.
//  Copyright (c) 2014 VP App Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLable: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        // code will evaluate when we press the button.
        messageLable.hidden = false;
        messageLable.text = enterAMessageTextField.text;
        messageLable.textColor = UIColor.redColor();
        
        
        enterAMessageTextField.text = " ";
        enterAMessageTextField.resignFirstResponder();
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal);
        
        // unhide the name label. (challenge 1)
        nameLabel.hidden = false ;
        nameLabel.text = enterNameTextField.text ;
        nameLabel.textColor = UIColor.blueColor() ;
        enterNameTextField.text = " ";
        enterNameTextField.resignFirstResponder();
        
        

        
        
        
    }
}

