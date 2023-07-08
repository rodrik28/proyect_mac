//
//  RegViewController.swift
//  mcfly
//
//  Created by Mac01 on 30/06/23.
//

import UIKit

import FirebaseAuth
import FirebaseCore


import FirebaseDatabase


class RegViewController: UIViewController {
    
    
    
    @IBOutlet var usertext: UITextField!
    
    
    @IBOutlet var passtext: UITextField!
    
    

    
    @IBAction func regi(_ sender: Any) {
        Auth.auth().createUser(withEmail: self.usertext.text!, password: self.passtext.text!){(user,error) in
            print("Intentando Iniciar Sesion")
            if error != nil{
                print("Se presento un error: \(error)")
            }else{
                print("El usuario fue creado exitosamente")
                
                Database.database().reference().child("usuarios").child(user!.user.uid).child("email").setValue(user!.user.email)
                self.dismiss(animated: true, completion: nil)
                
                
                
               
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
