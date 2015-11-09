//
//  createAcctViewController.swift
//  Carousel_SignIn
//
//  Created by Yang, Lin on 11/6/15.
//  Copyright © 2015 Yang, Lin. All rights reserved.
//

import UIKit

class createAcctViewController: UIViewController {

    
    @IBOutlet weak var agreeButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        agreeButton.selected = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func didAgree(sender: UIButton) {
            sender.selected = false
        }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
