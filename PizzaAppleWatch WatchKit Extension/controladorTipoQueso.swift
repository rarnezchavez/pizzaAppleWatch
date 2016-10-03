//
//  controladorTipoQueso.swift
//  PizzaAppleWatch
//
//  Created by Roberto Arnez on 10/2/16.
//  Copyright © 2016 Roberto Arnez. All rights reserved.
//

import WatchKit
import Foundation


class controladorTipoQueso: WKInterfaceController {

    @IBOutlet var labelTipoQueso: WKInterfaceLabel!
    var datosTipoQueso = Datos (t: "", m: "", q: "", i: "")
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c=context as! Datos
        datosTipoQueso.tamanoPizza = c.tamanoPizza
        datosTipoQueso.tipoMasa = c.tipoMasa
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func sliderTipoQueso(value: Float) {
        switch value {
        case 1:
            datosTipoQueso.tipoQueso="mozarela"
        case 2:
            datosTipoQueso.tipoQueso="cheddar"
        case 3:
            datosTipoQueso.tipoQueso="parmesano"
        case 4:
            datosTipoQueso.tipoQueso="sin queso"
        default:
            datosTipoQueso.tipoQueso="mozarela"
        }
        labelTipoQueso.setText(datosTipoQueso.tipoQueso)
    }
    
    
    @IBAction func sgtePasoIngred() {
        pushControllerWithName("controladorIngredientes", context: datosTipoQueso)
    }
}
