//
//  ViewController.swift
//  mcfly
//
//  Created by Mac01 on 24/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet var segmentlogeo: UISegmentedControl!
    @IBOutlet var sglogear: UIView!
    @IBOutlet var sgregister: UIView!
    
    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            self.view.bringSubviewToFront(sglogear)
        case 1:
            self.view.bringSubviewToFront(sgregister)
        default:
            break
        }
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.bringSubviewToFront(sglogear)
        // Do any additional setup after loading the view.
    }


}

