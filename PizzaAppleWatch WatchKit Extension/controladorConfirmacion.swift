//
//  controladorConfirmacion.swift
//  PizzaAppleWatch
//
//  Created by Roberto Arnez on 10/2/16.
//  Copyright © 2016 Roberto Arnez. All rights reserved.
//

import WatchKit
import Foundation


class controladorConfirmacion: WKInterfaceController {

    @IBOutlet var labelTamanoPizza: WKInterfaceLabel!
    @IBOutlet var labelTipoMasa: WKInterfaceLabel!
    @IBOutlet var labelTipoQueso: WKInterfaceLabel!
    @IBOutlet var labelIngredientes: WKInterfaceLabel!
    
    var datosPedidoFinal = Datos (t: "", m: "", q: "", i: "")
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c=context as! Datos
        datosPedidoFinal.tamanoPizza = c.tamanoPizza
        datosPedidoFinal.tipoMasa = c.tipoMasa
        datosPedidoFinal.tipoQueso = c.tipoQueso
        datosPedidoFinal.ingredientes = c.ingredientes
        
        labelTamanoPizza.setText(datosPedidoFinal.tamanoPizza)
        labelTipoMasa.setText(datosPedidoFinal.tipoMasa)
        labelTipoQueso.setText(datosPedidoFinal.tipoQueso)
        labelIngredientes.setText(datosPedidoFinal.ingredientes)
    
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func confirmacionPedido() {
        pushControllerWithName("controladorEnvioPedido", context: datosPedidoFinal)
    }
}
