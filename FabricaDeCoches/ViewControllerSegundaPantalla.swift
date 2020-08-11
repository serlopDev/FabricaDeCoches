//
//  ViewControllerSegundaPantalla.swift
//  FabricaDeCoches
//
//  Created by Sergio López on 07/08/2020.
//  Copyright © 2020 Sergio López. All rights reserved.
//

import UIKit

class ViewControllerSegundaPantalla: UIViewController{
    
    // Elementos Visuales
    
    
    @IBOutlet weak var mostrarInfoBtn: UIButton!
    @IBOutlet weak var imagenCoche: UIImageView!
    @IBOutlet weak var encenderBtn: UIButton!
    @IBOutlet weak var apagarBtn: UIButton!
    @IBOutlet weak var acelerarBtn: UIButton!
    @IBOutlet weak var informacionCoche: UILabel!
    
    // Variables
    
    var tipoDeCoche:Int?
    var estadoDelCoche = false
    var mustang:CocheGasolina?
    var tesla:CocheElectrico?
    var porcentajeActual = 100
    
    // Creamos el tipo de coche según la elección del usuario
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        switch tipoDeCoche! {
            
        case 0:
            mustang = CocheGasolina()
            imagenCoche.image = UIImage(named: "mustang")
            informacionCoche.text = "Has creado un Ford Mustang"
        
        case 1:
            tesla = CocheElectrico()
            imagenCoche.image = UIImage(named: "tesla3")
            informacionCoche.text = "Has creado un Tesla Model 3"
            
        default:
            print("No hay ningún tipo de coche")
        }
    }
    
    // Funciones del coche
    // Función del Botón mostrar información
    
    @IBAction func mostrarInfoAction(_ sender: Any) {
        switch tipoDeCoche! {
        case 0:
            informacionCoche.text =
            """
            Modelo: Ford Mustang
            Aceleración: Alcanza los 100 km/h en \(mustang!.aceleracion) segundos
            Precio: \(mustang!.precio) €
            """
        case 1:
            informacionCoche.text =
            """
            Modelo: Tesla Model 3
            Aceleración: Alcanza los 100 km/h en \(tesla!.aceleracion) segundos
            Batería: Nivel de batería: \(porcentajeActual)%
            Precio: \(tesla!.precio) €
            """
        default:
            print("No hay coches")
        }
    }
    
    // Botón Encender
    
    @IBAction func encenderAction(_ sender: Any) {
        switch tipoDeCoche!{
            
        case 0:
            if(!estadoDelCoche){
                estadoDelCoche = mustang!.encender()
                informacionCoche.text = "Has encendido el Mustang"
            } else {
                informacionCoche.text = "El coche ya está encendido"
            }
            
        case 1:
            if(!estadoDelCoche){
                estadoDelCoche = tesla!.encender()
                informacionCoche.text = "Has encendido el Tesla Model 3"
                tesla!.porcentajeBateria = 100
            } else {
                informacionCoche.text = "El coche ya está encendido"
            }
        
        default:
            print("No hay coches")
        }
    }
    
    // Botón Apagar
    
    @IBAction func apagarAction(_ sender: Any) {
        // Aquí, como es indiferente el tipo de coche, ya que si está encendido será un coche u otro, directamente aplico el bucle if para ambos sin distinguir tipo.
        
        if(estadoDelCoche){
            estadoDelCoche = false
            informacionCoche.text = "Has apagado el coche"
        }
    }
    
    // Botón acelerar
    
    @IBAction func acelerarAction(_ sender: Any) {
        switch tipoDeCoche!{
        
        case 0:
            if(estadoDelCoche){
                informacionCoche.text = "Has acelerado el Mustang"
            } else {
                informacionCoche.text = "El coche está apagado, debes encenderlo"
            }
            
        case 1:
            if(estadoDelCoche){
                if(porcentajeActual <= 100 && porcentajeActual > 0){
                    porcentajeActual = porcentajeActual - 25
                    informacionCoche.text = "Has acelerado el Tesla Model 3 y su porcentaje de batería es: \(porcentajeActual)%"
                } else if (tesla!.porcentajeBateria <= 0){
                    estadoDelCoche = false
                    informacionCoche.text = "Te quedaste sin batería :("
                }
            } else {
                informacionCoche.text = "El coche está apagado, debes encenderlo"
            }

        default:
            print("No hay coches")
        }
    }
    
    
    
}
