//
//  Antebrazo3View.swift
//  mcfly
//
//  Created by macbook on 10/07/23.
//

import UIKit
import FirebaseAuth
import FirebaseCore
import FirebaseDatabase

class Antebrazo3View: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dato(_ sender: Any) {
        // Genera un ID aleatorio utilizando childByAutoId()
        guard let currentUserID = Auth.auth().currentUser?.uid else {
            print("Usuario no válido")
            return
        }

        let databaseRef = Database.database().reference().child("usuarios").child(currentUserID).child("datos")

        // Generar un ID aleatorio utilizando childByAutoId()
        let newIDRef = databaseRef.childByAutoId()

        // Crear un nuevo objeto dats
        let nuevoDato = ["descrip": "Antebrazo 3", "id": newIDRef.key ?? ""]

        // Guardar el nuevo dato en la base de datos
        newIDRef.setValue(nuevoDato) { (error, _) in
            if let error = error {
                print("Error al agregar el nuevo dato: \(error)")
            } else {
                print("Nuevo dato agregado exitosamente")
            }
        }
        
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
