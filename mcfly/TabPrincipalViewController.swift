//
//  TabPrincipalViewController.swift
//  mcfly
//
//  Created by Mac 02 on 30/06/23.
//

import UIKit
import FirebaseAuth
import FirebaseCore
import FirebaseDatabase


class TabPrincipalViewController: UIViewController {
    
    var databaseRef: DatabaseReference!



    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        
        let darkColor1 = UIColor(red: 0.15, green: 0.15, blue: 0.15, alpha: 1.0).cgColor
        let darkColor2 = UIColor(red: 0.25, green: 0.25, blue: 0.25, alpha: 1.0).cgColor
        let blackColor = UIColor.black.cgColor
        
        gradientLayer.colors = [darkColor1, darkColor2, blackColor] // Colores oscuros del degradado
        
        // Puedes ajustar la dirección del degradado modificando startPoint y endPoint
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        // Aplica una difuminación al gradiente
        gradientLayer.locations = [0.0, 0.5, 1.0]
        
        // Agrega el gradiente al fondo de la vista
        view.layer.insertSublayer(gradientLayer, at: 0)
        // Do any additional setup after loading the view.
        
        databaseRef = Database.database().reference()
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
        let nuevoDato = ["descrip": "primera decir", "id": newIDRef.key ?? ""]

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
