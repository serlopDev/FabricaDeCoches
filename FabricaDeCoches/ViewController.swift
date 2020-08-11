//
//  ViewController.swift
//  FabricaDeCoches
//
//  Created by Sergio López on 07/08/2020.
//  Copyright © 2020 Sergio López. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Elementos de pantalla
    
    @IBOutlet weak var labelFabrica: UILabel!
    @IBOutlet weak var cocheGasolina: UIButton!
    @IBOutlet weak var cocheElectrico: UIButton!
    
    // Variables
    
    var tipoDeCoche:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func crearCGAccion(_ sender: Any) {
        
        tipoDeCoche = 0
        performSegue(withIdentifier: "segueSegundaPantalla", sender: self)
    }
    
    @IBAction func crearCEAccion(_ sender: Any) {
        
        tipoDeCoche = 1
        performSegue(withIdentifier: "segueSegundaPantalla", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       // Indicamos que el destino será el objeto ViewControllerSegundaPantalla y que la propiedad de nuestra segunda pantalla tipoDeCoche es igual a la propiedad cocheACrear
        
        if let destino = segue.destination as? ViewControllerSegundaPantalla{
            destino.tipoDeCoche = self.tipoDeCoche
        }
    }
    


}

