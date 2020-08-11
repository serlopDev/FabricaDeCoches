//
//  Automovil.swift
//  FabricaDeCoches
//
//  Created by Sergio López on 07/08/2020.
//  Copyright © 2020 Sergio López. All rights reserved.
//

import Foundation

class Automovil{
    
    var color = "neutro"
    var numeroDeLlantas = 4
    var precio = 0
    var aceleracion = 0
    var motorizacion = ""
    
    func encender()->Bool{
        return true
    }
    
    func apagar()->Bool{
        return true
    }
    
    func acelerar()->String{
        return "El coche ha pasado de 0 a 100 km/h en \(aceleracion), se nota que es un coche \(motorizacion)"
    }
    
}
