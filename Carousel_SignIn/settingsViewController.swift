//
//  settingsViewController.swift
//  Carousel_SignIn
//
//  Created by Yang, Lin on 11/4/15.
//  Copyright © 2015 Yang, Lin. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {

    @IBOutlet weak var settingsScrollView: UIScrollView!
    @IBOutlet weak var settingsView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Setting scrollview
        settingsScrollView.contentSize = CGSizeMake(320, settingsView.image!.size.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // clicking x button on top returns to feedview
    @IBAction func xButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    // clicking Sign Out brings up alert
    
    @IBAction func signoutButton(sender: AnyObject) {
        let alert = UIAlertController(title: "Are you sure you want to Sign Out?", message: "message", preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        let logoutAction = UIAlertAction(title: "Sign Out", style: .Destructive) { (UIAlertAction) -> Void in
            self.performSegueWithIdentifier("signoutSegue", sender: nil)
        }
        
        alert.addAction(logoutAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (UIAlertAction) -> Void in
            self.popoverPresentationController?.dismissalTransitionDidEnd(true)        }
        
        alert.addAction(cancelAction)
        
        presentViewController(alert, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
