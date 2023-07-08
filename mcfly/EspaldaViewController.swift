//
//  EspaldaViewController.swift
//  mcfly
//
//  Created by macbook on 5/07/23.
//

import UIKit

class EspaldaViewController: UIViewController {
    
    
    @IBOutlet weak var ejercicio4SegmentView: UIView!
    @IBOutlet weak var ejercicio3SegmentView: UIView!
    @IBOutlet weak var ejercicio2SegmentView: UIView!
    @IBOutlet weak var ejercicio1SegmentView: UIView!
    @IBOutlet weak var SegmentOutlet: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.bringSubviewToFront(SegmentOutlet)

    }
    

}
