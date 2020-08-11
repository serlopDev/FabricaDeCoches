//
//  CocheElectrico.swift
//  FabricaDeCoches
//
//  Created by Sergio López on 07/08/2020.
//  Copyright © 2020 Sergio López. All rights reserved.
//

import Foundation

class CocheElectrico: Automovil {
    
    var porcentajeBateria = 100
    
    func cargaDeBateria()->String{
        return "Actualmente queda un \(String(describing: porcentajeBateria))% de batería"
    }
}
