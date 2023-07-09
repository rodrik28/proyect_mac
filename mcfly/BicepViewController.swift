//
//  BicepViewController.swift
//  mcfly
//
//  Created by macbook on 5/07/23.
//

import UIKit

class BicepViewController: UIViewController {
    
    @IBOutlet weak var SegmentOutlet: UISegmentedControl!
    
    @IBOutlet weak var ejercicio1SegmentView: UIView!
    
    @IBOutlet weak var ejercicio2SegmentView: UIView!
    
    @IBOutlet weak var ejercicio3SegmentView: UIView!
    
    
    @IBAction func segmen(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            self.view.bringSubviewToFront(ejercicio1SegmentView)
        case 1:
            self.view.bringSubviewToFront(ejercicio3SegmentView)
        case 3:
            self.view.bringSubviewToFront(ejercicio2SegmentView)
        default:
            break
        }
    }

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
