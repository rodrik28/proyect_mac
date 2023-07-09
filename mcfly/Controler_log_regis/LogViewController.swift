//  LogViewController.swift
//  mcfly
//
//  Created by Mac01 on 30/06/23.
//

import UIKit
import FirebaseAuth
import FirebaseCore
import FirebaseDatabase


class LogViewController: UIViewController {
    
    
    
    @IBOutlet var usertext: UITextField!
    
    
    @IBOutlet var passtext: UITextField!
    
    
    
    
    
    @IBAction func loginbuton(_ sender: Any) {
        Auth.auth().signIn(withEmail: usertext.text!, password:passtext.text!) {(user,error) in
            print("intentado iniciar sesion")
            if error != nil {
                print("Se presento el siguiente error al crear el usuario: \(error)")
                let alertController = UIAlertController(title: "Error", message: "El usuario no existe. Create uno nuevo mi gym bro!!!!", preferredStyle: .alert)
                            
                            
                            
                            let cancelarAction = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
                            
                            alertController.addAction(cancelarAction)
                            
                            self.present(alertController, animated: true, completion: nil)
                
            }else {
                print("inicio de sesion exitosa")
                
                
            }
        }
        
        
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
