//
//  InterfaceController.swift
//  PizzaAppleWatch WatchKit Extension
//
//  Created by Roberto Arnez on 10/2/16.
//  Copyright © 2016 Roberto Arnez. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var tamanoPizza: WKInterfaceLabel!
    var datosPizza = Datos (t:"",m:"",q:"",i:"")
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func sliderTamano(value: Float) {
        switch value {
            case 1:
                datosPizza.tamanoPizza = "chica"
            case 2:
                datosPizza.tamanoPizza = "mediana"
            case 3:
                datosPizza.tamanoPizza = "grande"
            default:
                datosPizza.tamanoPizza = "chica"
        }
        tamanoPizza.setText(datosPizza.tamanoPizza)
    }
    
    @IBAction func sgtePasoMasa() {
        pushControllerWithName("controladorTipoMasa", context: datosPizza)
    }
    
    
}
