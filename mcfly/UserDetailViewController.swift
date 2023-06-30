//
//  UserDetailViewController.swift
//  mcfly
//
//  Created by Mac01 on 30/06/23.
//

import UIKit


class UserDetailViewController: UIViewController {
    
    
    
    @IBOutlet var view1: UIView!
    
    
    @IBOutlet var view2: UIView!
    
    
    @IBOutlet var view3: UIView!
    

    
    @IBOutlet var view4: UIView!
    
    
    
    @IBOutlet var traint1: UIView!
    @IBOutlet var traint2: UIView!
    
    
    
    @IBAction func segmenttrent(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        
        case 0:
            self.view.bringSubviewToFront(traint1)
        case 1:
            self.view.bringSubviewToFront(traint2)
        default:
            break
        }
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.bringSubviewToFront(traint1)
        
        
        view1.layer.cornerRadius = 30
        view2.layer.cornerRadius = 30
        view3.layer.cornerRadius = 30
        view4.layer.cornerRadius = 30
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
