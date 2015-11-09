//
//  IntroViewController.swift
//  Carousel_SignIn
//
//  Created by Yang, Lin on 11/2/15.
//  Copyright © 2015 Yang, Lin. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {
    // scrollview outlets
    @IBOutlet weak var IntroScrollView: UIScrollView!
    @IBOutlet weak var IntroImageView: UIImageView!
    
    // tile outlets
    @IBOutlet weak var tile1View: UIImageView!
    @IBOutlet weak var tile2View: UIImageView!
    @IBOutlet weak var tile3View: UIImageView!
    @IBOutlet weak var tile4View: UIImageView!
    @IBOutlet weak var tile5View: UIImageView!
    @IBOutlet weak var tile6View: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // set scroll delegate
        IntroScrollView.delegate = self
        
        // Set scroll size
        IntroScrollView.contentSize=IntroImageView.image!.size
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // when user scrolls, tiles move, scale and rotate into place
    func scrollViewDidScroll(scrollView: UIScrollView!) {
        let offset = CGFloat(IntroScrollView.contentOffset.y)
        ///////////////////////////////////////////////////////////////////////////////////////////////////////
        // tile 1
        // x -30 -> 0
        // y -285 -> 0
        // scale: 1
        // rotation: -10
        
        let t1x = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -30, r2Max: 0)
        let t1y = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -285, r2Max: 0)
        let t1scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1)
        let t1rotate = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        // trigger transforms
        tile1View.transform = CGAffineTransformMakeTranslation(CGFloat(t1x), CGFloat(t1y))
        tile1View.transform = CGAffineTransformScale(tile1View.transform, t1scale, t1scale)
        tile1View.transform = CGAffineTransformRotate(tile1View.transform, CGFloat(Double(t1rotate) * M_PI / 180))
        
        ///////////////////////////////////////////////////////////////////////////////////////////////////////
        // tile 2
        // x 75 -> 0
        // y -240 -> 0
        // scale: 1.65
        // rotation: -10
        
        let t2x = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 75, r2Max: 0)
        let t2y = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -240, r2Max: 0)
        let t2scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        let t2rotate = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        // trigger transforms
        tile2View.transform = CGAffineTransformMakeTranslation(CGFloat(t2x), CGFloat(t2y))
        tile2View.transform = CGAffineTransformScale(tile2View.transform, t2scale, t2scale)
        tile2View.transform = CGAffineTransformRotate(tile2View.transform, CGFloat(Double(t2rotate) * M_PI / 180))
        
        ///////////////////////////////////////////////////////////////////////////////////////////////////////
        // tile 3
        // x -66 -> 0
        // y -415 -> 0
        // scale: 1.7
        // rotation: 10
        
        let t3x = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -66, r2Max: 0)
        let t3y = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -415, r2Max: 0)
        let t3scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.7, r2Max: 1)
        let t3rotate = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        // trigger transforms
        tile3View.transform = CGAffineTransformMakeTranslation(CGFloat(t3x), CGFloat(t3y))
        tile3View.transform = CGAffineTransformScale(tile3View.transform, t3scale, t3scale)
        tile3View.transform = CGAffineTransformRotate(tile3View.transform, CGFloat(Double(t3rotate) * M_PI / 180))
        
        ///////////////////////////////////////////////////////////////////////////////////////////////////////
        // tile 4
        // x 10 -> 0
        // y -408 -> 0
        // scale: 1.6
        // rotation: 10
        
        let t4x = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        let t4y = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -408, r2Max: 0)
        let t4scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.6, r2Max: 1)
        let t4rotate = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        // trigger transforms
        tile4View.transform = CGAffineTransformMakeTranslation(CGFloat(t4x), CGFloat(t4y))
        tile4View.transform = CGAffineTransformScale(tile4View.transform, t4scale, t4scale)
        tile4View.transform = CGAffineTransformRotate(tile4View.transform, CGFloat(Double(t4rotate) * M_PI / 180))
        
        ///////////////////////////////////////////////////////////////////////////////////////////////////////
        // tile 5
        // x -200 -> 0
        // y -480 -> 0
        // scale: 1.65
        // rotation: 10
        
        let t5x = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -200, r2Max: 0)
        let t5y = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -480, r2Max: 0)
        let t5scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        let t5rotate = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 10, r2Max: 0)
        
        // trigger transforms
        tile5View.transform = CGAffineTransformMakeTranslation(CGFloat(t5x), CGFloat(t5y))
        tile5View.transform = CGAffineTransformScale(tile5View.transform, t5scale, t5scale)
        tile5View.transform = CGAffineTransformRotate(tile5View.transform, CGFloat(Double(t5rotate) * M_PI / 180))
        
        ///////////////////////////////////////////////////////////////////////////////////////////////////////
        // tile 6
        // x -15 -> 0
        // y -500 -> 0
        // scale: 1.65
        // rotation: -10
        
        let t6x = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -15, r2Max: 0)
        let t6y = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -500, r2Max: 0)
        let t6scale = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: 1.65, r2Max: 1)
        let t6rotate = convertValue(offset, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        
        // trigger transforms
        tile6View.transform = CGAffineTransformMakeTranslation(CGFloat(t6x), CGFloat(t6y))
        tile6View.transform = CGAffineTransformScale(tile6View.transform, t6scale, t6scale)
        tile6View.transform = CGAffineTransformRotate(tile6View.transform, CGFloat(Double(t6rotate) * M_PI / 180))


        
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
