//
//  dats.swift
//  mcfly
//
//  Created by Mac 02 on 8/07/23.
//

import Foundation


class dats {
    var descrip = ""
    var id = ""
    
    func toDictionary() -> [String: Any] {
        return [
            "descrip": descrip,
            "id": id
        ]
    }
}
