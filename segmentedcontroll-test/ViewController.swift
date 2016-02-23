//
//  ViewController.swift
//  segmentedcontroll-test
//
//  Created by Mengying Feng on 14/02/2016.
//  Copyright © 2016 Mengying Feng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let x = 3, y = 6
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func segmentSelected(sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            
            UIView.animateWithDuration(0.5, animations: { () -> Void in
                self.view1.alpha = 0
                self.view2.alpha = 1
                
            })

        } else if sender.selectedSegmentIndex == 1 {
            UIView.animateWithDuration(0.5, animations: { () -> Void in
                self.view1.alpha = 1
                self.view2.alpha = 0
            })
        }
        
    }

}

