//
//  controladorTipoMasa.swift
//  PizzaAppleWatch
//
//  Created by Roberto Arnez on 10/2/16.
//  Copyright © 2016 Roberto Arnez. All rights reserved.
//

import WatchKit
import Foundation


class controladorTipoMasa: WKInterfaceController {

    
    @IBOutlet var labelTipoMasa: WKInterfaceLabel!
    var datosTipoMasa = Datos (t: "", m: "", q: "", i: "")
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
      
        let c = context as! Datos
        datosTipoMasa.tamanoPizza = c.tamanoPizza
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func sliderTipoMasa(value: Float) {
        switch value{
        case 1:
            datosTipoMasa.tipoMasa = "delgada"
        case 2:
            datosTipoMasa.tipoMasa = "crujiente"
        case 3:
            datosTipoMasa.tipoMasa = "gruesa"
        default:
            datosTipoMasa.tipoMasa = "delgada"
        }
        labelTipoMasa.setText(datosTipoMasa.tipoMasa)
    }
    
    @IBAction func sgtePasoQueso() {
        pushControllerWithName("controladorTipoQueso", context: datosTipoMasa)
    }
    
}
