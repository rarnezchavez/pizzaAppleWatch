//
//  Datos.swift
//  PizzaAppleWatch
//
//  Created by Roberto Arnez on 10/2/16.
//  Copyright © 2016 Roberto Arnez. All rights reserved.
//

import WatchKit

class Datos: NSObject {
    var tamanoPizza:String="'"
    var tipoMasa:String=""
    var tipoQueso:String=""
    var ingredientes:String=""
    
    init (t:String,m:String,q:String,i:String)
    {
        tamanoPizza=t
        tipoMasa=m
        tipoQueso=q
        ingredientes=i
    }
}
