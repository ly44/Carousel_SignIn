//
//  timelineViewController.swift
//  Carousel_SignIn
//
//  Created by Yang, Lin on 11/4/15.
//  Copyright © 2015 Yang, Lin. All rights reserved.
//

import UIKit

class timelineViewController: UIViewController {
    @IBOutlet weak var timelineScrollView: UIScrollView!
    @IBOutlet weak var feedView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Configure the content size of the scroll view
        timelineScrollView.contentSize = CGSizeMake(320, feedView.image!.size.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
