//
//  TricepViewController.swift
//  mcfly
//
//  Created by macbook on 7/07/23.
//

import UIKit

class TricepViewController: UIViewController {
    
    
    @IBOutlet weak var SegmentOutlet: UISegmentedControl!
    

    @IBOutlet weak var ejercicio1SegmentView: UIView!
    
    
    @IBOutlet weak var ejercicio2SegmentView: UIView!
    
    @IBOutlet weak var ejercicio3SegmentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.bringSubviewToFront(SegmentOutlet)
        
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
