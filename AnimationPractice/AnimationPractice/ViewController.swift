//
//  ViewController.swift
//  AnimationPractice
//
//  Created by Taylor Frost on 7/6/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var swiftOutlet: UIImageView!
    
    var timer : NSTimer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
 self.timer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(moveButterfly), userInfo: nil, repeats: true)
        
        
    }
    
    func moveButterfly() {
        let width = self.view.frame.size.width
        let height = self.view.frame.size.height
        
        UIView.animateWithDuration(2.0) {
            
        }
        
        UIView.animateWithDuration(2.0) {
            self.swiftOutlet.center = CGPoint(x: 0, y: 0)
            
        }
    }


}

