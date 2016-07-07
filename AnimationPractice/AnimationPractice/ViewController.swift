//
//  ViewController.swift
//  AnimationPractice
//
//  Created by Taylor Frost on 7/6/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var redView = UIView()
    
    var label = UILabel()
    
    var string = "You have changed the color"
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func buttonTapped(sender: UIButton) {
        
        print("the button is working")
        
        let redViewFrame = CGRect(x: 0, y: 0, width: 1000, height: 500)
        
        self.redView = UIView(frame: redViewFrame)
        
        self.redView.backgroundColor = UIColor.redColor()
        
        self.view.addSubview(self.redView)
        
        
        UIView.animateWithDuration(5.0) {
            self.redView.alpha = 0.0
            
            UIView.animateWithDuration(2.0, animations: {
                self.redView.alpha = 1.0

                
        let label = UILabel(frame: CGRectMake(0, 0, 300, 21))
                
                
            label.center = CGPointMake(185, 300)
                
                
            label.textAlignment = NSTextAlignment.Center
                
                
            label.text = "You have changed the color!"
            
                self.view.addSubview(label)

            })
        
        }
        
        
    }


}

