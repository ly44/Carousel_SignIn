//
//  welcomeViewController.swift
//  Carousel_SignIn
//
//  Created by Yang, Lin on 11/4/15.
//  Copyright © 2015 Yang, Lin. All rights reserved.
//

import UIKit

class welcomeViewController: UIViewController, UIScrollViewDelegate {

    // defining elements
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var welcomeScrollView: UIScrollView!
    @IBOutlet weak var spinButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeScrollView.contentSize = CGSize(width: 1280, height: 568)
        welcomeScrollView.delegate=self
        
        //hide "Take Carousel for a Spin" button
        spinButton.alpha = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        // When at last page, make page control dots disappear and display the button
        if pageControl.currentPage == 3 {
            pageControl.hidden = true
            spinButton.alpha = 1
        } else {
            pageControl.hidden = false
            spinButton.alpha = 0
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
