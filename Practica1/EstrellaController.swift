//
//  EstrellaController.swift
//  Practica1
//
//  Created by silvio bravo cado on 26/09/15.
//  Copyright © 2015 silvio bravo cado. All rights reserved.
//

import Foundation
import UIKit

class EstrellaController: UIViewController {

    @IBOutlet weak var txtNumLineas: UITextField!
    @IBOutlet weak var myvista: EstrellaView!
    
    @IBAction func btnDibujar(sender: UIButton) {
        
        var strNumLineas    = "100"
        strNumLineas        = txtNumLineas.text!
        myvista.numlines    = Int(strNumLineas)!
        myvista.setNeedsDisplay()
        txtNumLineas.resignFirstResponder()
        
        
    }
    
}
