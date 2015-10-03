//
//  CirculoController.swift
//  Practica1
//
//  Created by silvio bravo cado on 26/09/15.
//  Copyright © 2015 silvio bravo cado. All rights reserved.
//

import Foundation

import UIKit

class CirculoController:UIViewController {
    
    @IBOutlet weak var txtCircleNumLines: UITextField!
    
    
    @IBOutlet weak var myCirculoView: CirculoView!
    
    
    
    @IBAction func btnPintarCirculo(sender: UIButton) {
        
        var strNumLineas            = "100"
        strNumLineas                = txtCircleNumLines.text!
        myCirculoView.numlines      = Int(strNumLineas)!
        myCirculoView.setNeedsDisplay()
        txtCircleNumLines.resignFirstResponder()

        
        
    }
    
    
}