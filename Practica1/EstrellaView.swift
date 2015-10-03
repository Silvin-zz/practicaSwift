//
//  EstrellaView.swift
//  Practica1
//
//  Created by silvio bravo cado on 26/09/15.
//  Copyright © 2015 silvio bravo cado. All rights reserved.
//

import Foundation
import UIKit;

class EstrellaView: UIView{
    
    
    var numlines = 100
    var colorEstrella = UIColor.redColor()
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let rojo:CGFloat = CGFloat((arc4random() % 100)) / 100.0
        let verde:CGFloat = CGFloat((arc4random() % 100)) / 100.0
        let azul:CGFloat = CGFloat((arc4random() % 100)) / 100.0
        
        let color:UIColor = UIColor(red: rojo, green: verde, blue: azul, alpha: 1.0)
        colorEstrella = color
        self.setNeedsDisplay()
        
    }
    
    
    
    
    override func drawRect(rect: CGRect) {
        
        //Se obtiene el centro de la vista
        let bounds:CGRect = self.bounds
        var center = CGPoint()
        center.x = bounds.origin.x + bounds.size.width / 2.0
        center.y = bounds.origin.y + bounds.size.height / 2.0
        let radius = (min(bounds.size.width, bounds.size.height) / 2.0)
        //Se crea instancia de BezierPath
        let path:UIBezierPath = UIBezierPath()
        //Se configura la pluma
        //UIColor.redColor().setStroke()
        colorEstrella.setStroke()
        path.lineWidth = 0.1
        //Dibuja eje Y                
        path.moveToPoint(CGPoint(x: center.x, y: 0))
        path.addLineToPoint(CGPoint(x: center.x, y: center.y * 2)) //Dibuja eje X
        path.moveToPoint(CGPoint(x: 0, y: center.y))
        path.addLineToPoint(CGPoint(x: center.x * 2, y: center.y ))
        
        //let numlines            = 100;
        let tamSeg:CGFloat      = CGFloat(radius) / CGFloat(numlines)
        
        
        for  var i = 0, j = numlines ; i <= numlines; i++, j-- {
            
            path.moveToPoint(CGPoint(x: center.x, y: center.y - CGFloat(i) * tamSeg))
            path.addLineToPoint(CGPoint(x: center.x + CGFloat(j), y: center.y ))
            
            
            path.moveToPoint(CGPoint(x: center.x, y: center.y + CGFloat(i) * tamSeg))
            path.addLineToPoint(CGPoint(x: center.x + CGFloat(j), y: center.y ))
            
            
            
            path.moveToPoint(CGPoint(x: center.x, y: center.y - CGFloat(i) * tamSeg))
            path.addLineToPoint(CGPoint(x: center.x - CGFloat(j), y: center.y ))
            
            path.moveToPoint(CGPoint(x: center.x, y: center.y + CGFloat(i) * tamSeg))
            path.addLineToPoint(CGPoint(x: center.x - CGFloat(j), y: center.y ))
            
            
        }
        
        path.stroke()
        path.closePath()
        
        
    }



}
