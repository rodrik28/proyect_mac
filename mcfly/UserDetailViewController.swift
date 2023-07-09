//
//  UserDetailViewController.swift
//  mcfly
//
//  Created by Mac01 on 30/06/23.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth

class UserDetailViewController: UIViewController {
    var datss: [dats] = []
    
    
    

    
    @IBOutlet var view2: UIView!
    

    
    @IBOutlet var sumadatos: UILabel!
    
    
    
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
        
        
        view2.layer.cornerRadius = 30
        
        guard let currentUserID = Auth.auth().currentUser?.uid else {
                    // Manejar el caso en el que el usuario no ha iniciado sesión
                    return
                }
                
                let databaseRef = Database.database().reference().child("usuarios").child(currentUserID).child("datos")
                
                databaseRef.observe(DataEventType.childAdded) { (snapshot) in
                    if let dataDict = snapshot.value as? [String: Any] {
                        let dato = dats()
                        
                        dato.descrip = dataDict["descrip"] as? String ?? ""
                        dato.id = snapshot.key
                        
                        self.datss.append(dato)
                        self.calculateSumOfDatos()
                    }
                }

        // Do any additional setup after loading the view.
    }
    
    func calculateSumOfDatos() {
            var sum: Int = 0
            
            for dato in datss {
                // Supongamos que la propiedad `descrip` es de tipo Int
                if let datoValue = Int(dato.descrip) {
                    sum += datoValue
                }
            }
            
            sumadatos.text = "\(sum)"
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
