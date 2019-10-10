//
//  UIView+GradientLayer.swift
//  MTHelperExtensions
//
//  Created by Meeran Tariq on 08/10/2019.
//

import UIKit

extension UIView {
    // For insert layer in Foreground
    func addGradientLayerInForeground(colors: [UIColor]) {
        
        let gradient = CAGradientLayer()
        
        gradient.frame = self.frame
        gradient.colors = colors.map{$0.cgColor}
        
        self.layer.addSublayer(gradient)
    }
    
    // For insert layer in background
    func addGradientLayerInBackground(colors: [UIColor]) {
        
        let gradient = CAGradientLayer()
        
        gradient.frame = self.frame
        gradient.colors = colors.map{$0.cgColor}
        
        self.layer.insertSublayer(gradient, at: 0)
    }
}
