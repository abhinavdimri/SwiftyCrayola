//
//  ViewController.swift
//  SwitfyCrayola
//
//  Created by Abhinav Dimri on 26/05/16.
//  Copyright © 2016 Abhinav Dimri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorName:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = CrayolaColors.RandomColor()
        self.colorName.text = CrayolaColors.colorName.uppercaseString
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func generateRandomColor(sender: AnyObject) {
        UIView.animateWithDuration(0.2, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIViewAnimationOptions.CurveEaseIn, animations: {
                self.colorName.transform = CGAffineTransformMakeScale(1.2, 1.2)
                self.colorName.alpha = 0.0
            }) { (finished) in
                self.colorName.transform = CGAffineTransformMakeScale(1.0, 1.0)
                self.view.backgroundColor = CrayolaColors.RandomColor()
                 self.colorName.text = CrayolaColors.colorName.uppercaseString
                self.colorName.alpha = 1.0
        }
    }
}

