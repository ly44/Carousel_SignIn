//
//  LoginViewController.swift
//  Carousel_SignIn
//
//  Created by Yang, Lin on 11/2/15.
//  Copyright © 2015 Yang, Lin. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {
    // defining scrollview variables
    @IBOutlet weak var loginScrollView: UIScrollView!
    @IBOutlet weak var buttonParentView: UIView!
   
    // defining back button
    @IBAction func backButton(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
    }
    
    // defining variables for image offset
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!

    // defining form fields
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    // defining sign in button variables
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var signinIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // setting scrollview delegate
        loginScrollView.delegate = self
        loginScrollView.contentSize = loginScrollView.frame.size
        loginScrollView.contentInset.bottom = 100
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -70
        
        // Register keyboard events
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
    }
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // when the keyboard is shown
    func keyboardWillShow(notification: NSNotification) {
        print("keyboardWillShow")
        // Move the button up above keyboard
        buttonParentView.frame.origin.y = buttonInitialY + buttonOffset
        // Scroll the scrollview up
        loginScrollView.contentOffset.y = loginScrollView.contentInset.bottom
    }
    
    // when keyboard is hidden
    func keyboardWillHide(notification: NSNotification!) {
        // Move the button back when keyboard is dismissed
        buttonParentView.frame.origin.y = buttonInitialY
        // Scroll the scrollview back down
        loginScrollView.contentOffset.y = 0
    }


    
    // when user scrolls -> hide keyboard
    func scrollViewDidScroll(scrollView: UIScrollView) {
        if loginScrollView.contentOffset.y <= -10 {
            // Hide the keyboard
            view.endEditing(true)
        }
    }
    
    @IBAction func didTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    // defining login button action
    @IBAction func didLogin(sender: AnyObject) {
        view.userInteractionEnabled = false
        signinIndicator.startAnimating()
        signinButton.enabled = false
        signinButton.selected = true
        
        delay(2) {() -> ()in
            self.validateCredentials()
            self.signinIndicator.stopAnimating()
            self.signinButton.selected = false
            self.signinButton.enabled = true
            self.view.userInteractionEnabled = true
        }
    }
    
    // defining function that validates login credentials
    func validateCredentials() {
        if emailField.text == "lin" && passwordField.text == "pass" {
            performSegueWithIdentifier("loginSegue", sender: nil)
        }
        else if emailField.text == "" || passwordField.text == "" {
            let emptyAlert = UIAlertController(title: "Credentials Required ", message: "Please enter your valid email and password", preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in
                print("User tapped OK")
            })
            
            emptyAlert.addAction(okAction)
            presentViewController(emptyAlert, animated: true, completion: nil)

            }
        else {
            let alert = UIAlertController(title: "Invalid Email or Password", message: "Please enter a valid email and password", preferredStyle: UIAlertControllerStyle.Alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { (UIAlertAction) -> Void in
                print("User tapped OK")
            })
            
            alert.addAction(okAction)
            
            presentViewController(alert, animated: true, completion: nil)
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

}
