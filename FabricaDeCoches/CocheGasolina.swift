//
//  CocheGasolina.swift
//  FabricaDeCoches
//
//  Created by Sergio López on 07/08/2020.
//  Copyright © 2020 Sergio López. All rights reserved.
//

import Foundation

class CocheGasolina: Automovil {
    
    var nivelGasolina = 40
    
    func gasolina()->String{
        return "Has acelerado muy fuerte, quedan \(String(describing: nivelGasolina)) litros en el depósito"
    }
}
