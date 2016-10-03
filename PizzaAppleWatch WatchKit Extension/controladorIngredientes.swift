//
//  controladorIngredientes.swift
//  PizzaAppleWatch
//
//  Created by Roberto Arnez on 10/2/16.
//  Copyright © 2016 Roberto Arnez. All rights reserved.
//

import WatchKit
import Foundation


class controladorIngredientes: WKInterfaceController {

    
    @IBOutlet var labelIngredientes: WKInterfaceLabel!
    var datosIngredientes = Datos (t: "", m: "", q: "", i: "")
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c=context as! Datos
        datosIngredientes.tamanoPizza = c.tamanoPizza
        datosIngredientes.tipoMasa = c.tipoMasa
        datosIngredientes.tipoQueso = c.tipoQueso
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func sliderIngredientes(value: Float) {
        switch value {
        case 1:
            datosIngredientes.ingredientes = "jamon"
        case 2:
            datosIngredientes.ingredientes = "pepperoni"
        case 3:
            datosIngredientes.ingredientes = "pavo"
        case 4:
            datosIngredientes.ingredientes = "salchicha"
        case 5:
            datosIngredientes.ingredientes = "aceituna"
        case 6:
            datosIngredientes.ingredientes = "cebolla"
        case 7:
            datosIngredientes.ingredientes = "pimiento"
        case 8:
            datosIngredientes.ingredientes = "pina"
        case 9:
            datosIngredientes.ingredientes = "anchoa"
        default:
            datosIngredientes.ingredientes = "jamon"
            
        }
        labelIngredientes.setText(datosIngredientes.ingredientes)
    }
    

    @IBAction func sgtePasoConfirmacion() {
        pushControllerWithName("controladorConfirmacion", context:datosIngredientes)
    }
}
