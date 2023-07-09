//
//  TableeeeViewController.swift
//  mcfly
//
//  Created by Mac 02 on 8/07/23.
//

import UIKit

import FirebaseDatabase
import FirebaseAuth

class TableeeeViewController: UIViewController , UITableViewDelegate,UITableViewDataSource{
    
    
    
    @IBOutlet var tabladedatos: UITableView!
    
    var datss:[dats] = []
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if datss.isEmpty {
                    return 1
                } else {
                    return datss.count
                }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
                if datss.isEmpty {
                    cell.textLabel?.text = "No tienes datos"
                } else {
                    let dato = datss[indexPath.row]
                    cell.textLabel?.text = dato.descrip
                }
                return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabladedatos.delegate = self
        tabladedatos.dataSource = self
        
        
        guard let currentUserID = Auth.auth().currentUser?.uid else {
            // Maneja el caso en el que el usuario no está logeado
            return
        }

        let databaseRef = Database.database().reference().child("usuarios").child(currentUserID).child("datos")
        
        
        

        databaseRef.observe(DataEventType.childAdded) { (snapshot) in
            if let dataDict = snapshot.value as? [String: Any] {
                let dato = dats()
                
                dato.descrip = dataDict["descrip"] as? String ?? ""
                dato.id = snapshot.key
                
                self.datss.append(dato)
                self.tabladedatos.reloadData()
            }
        }

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
